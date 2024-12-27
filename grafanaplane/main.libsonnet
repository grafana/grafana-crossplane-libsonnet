local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local configurations = import './zz/configurations.libsonnet';
local raw = import './zz/main.libsonnet';

{
  local root = self,

  '#':
    d.package.new(
      'grafanaplane',
      'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane',
      |||
        This repository provides a set of Crossplane Configurations packages and and accompanying Jsonnet library.

        The Configuration packages provide a set of (namespaced) composition/XRD pairs that map directly to their non-namespaced Managed resources equivalents.

        The library consists of two parts, the manually written functions to get started quicly and the full library in `zz/`. They can be used in combination with each other.

        Most of this library is generated: the Compositions/XRDs packages, Configurations and the library in `zz/`.
      |||,
      'main.libsonnet',
      import 'zz/version.libsonnet',
    )
    + d.package.withUsageTemplate(
      @"local %(name)s = import '%(import)s';"
    ),

  raw:
    raw
    + { '#': d.package.newSub('raw', "Generated libraries for all the compositions in case the manually curated functions aren't sufficient.") },

  configurations:
    configurations
    + {
      '#':
        d.package.newSub(
          'configurations',
          |||
            This package contains Configurations for the generated Compositions and CompositeResourceDefinitions (XRD). A single configuration imports compositions for a resource group. For more granular selection of XRDs, consider using the manifests in 'packages/' on the root of this repository.

            The Configurations can be imported like this:

            ```jsonnet
            local grafanaplane = import 'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
            local configurations = grafanaplane.configurations;

            [
            %s
            ]
            ```
          |||
          % std.join(
            ',\n',
            std.map(
              function(item) '  configuration.' + item,
              std.objectFields(configurations)
            )
          )
        ),
    },

  global: {
    providerConfig: {
      new(name, secretName, secretNamespace, secretKey):
        raw.nogroup.v1beta1.providerConfig.new(name)
        + raw.nogroup.v1beta1.providerConfig.metadata.withAnnotations({
          'tanka.dev/namespaced': 'false',
        })
        + raw.nogroup.v1beta1.providerConfig.spec.credentials.withSource('Secret')
        + raw.nogroup.v1beta1.providerConfig.spec.credentials.secretRef.withNamespace(secretNamespace)
        + raw.nogroup.v1beta1.providerConfig.spec.credentials.secretRef.withName(secretName)
        + raw.nogroup.v1beta1.providerConfig.spec.credentials.secretRef.withKey(secretKey),
    },
  },

  cloud: {
    local this = self,
    local validStackSlug(slug) =
      xtd.ascii.isLower(slug[0])
      && std.all(
        std.map(
          function(c)
            xtd.ascii.isNumber(c)
            || xtd.ascii.isLower(c),
          std.stringChars(slug)
        )
      ),

    stack: {
      new(name, namespace, cloudProviderConfigName, secretName=name + '-providerConfigToken'): {
        stack:
          assert validStackSlug(name) :
                 'The slug/name needs to be a valid subdomain. One word. Only lowercase letters and numbers allowed. Must start with a letter. No dots, dashes, underscores, or spaces.';
          raw.cloud.v1alpha1.stack.new(name)
          + raw.cloud.v1alpha1.stack.spec.parameters.providerConfigRef.withName(cloudProviderConfigName)
          + raw.cloud.v1alpha1.stack.spec.parameters.withExternalName(name)
          + raw.cloud.v1alpha1.stack.spec.parameters.forProvider.withName(name)
          + raw.cloud.v1alpha1.stack.spec.parameters.forProvider.withSlug(name),

        serviceAccount: this.stackServiceAccount.fromStackResource(self.stack, namespace),
        token: this.stackServiceAccountToken.fromStackServiceAccountResource(self.serviceAccount, namespace, secretName),
        grafanaProviderConfig: root.global.providerConfig.new(name + '-grafana', namespace, secretName, 'instanceCredentials'),
      },
    },
    stackServiceAccount: {
      fromStackResource(stackResource, namespace):
        raw.cloud.v1alpha1.stackServiceAccount.new(stackResource.metadata.name + '-admin')
        + raw.cloud.v1alpha1.stackServiceAccount.spec.parameters.forProvider.withName('crossplaneManagementKey')
        + raw.cloud.v1alpha1.stackServiceAccount.spec.parameters.forProvider.withRole('Admin')
        + raw.cloud.v1alpha1.stackServiceAccount.spec.parameters.forProvider.cloudStackSelector.withMatchLabels({
          'crossplane.io/claim-name': stackResource.metadata.name,
          'crossplane.io/claim-namespace': namespace,
        })
        + raw.cloud.v1alpha1.stackServiceAccount.spec.parameters.withProviderConfigRef(
          stackResource.spec.parameters.providerConfigRef
        ),
    },
    stackServiceAccountToken: {
      fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName):
        raw.cloud.v1alpha1.stackServiceAccountToken.new(stackServiceAccountResource.metadata.name)
        + raw.cloud.v1alpha1.stackServiceAccountToken.spec.parameters.forProvider.withName('crossplaneManagementToken')
        + raw.cloud.v1alpha1.stackServiceAccountToken.spec.parameters.writeConnectionSecretToRef.withName(secretName)
        + raw.cloud.v1alpha1.stackServiceAccountToken.spec.parameters.writeConnectionSecretToRef.withNamespace(namespace)
        + raw.cloud.v1alpha1.stackServiceAccountToken.spec.parameters.forProvider.serviceAccountSelector.withMatchLabels({
          'crossplane.io/claim-name': stackServiceAccountResource.metadata.name,
          'crossplane.io/claim-namespace': namespace,
        })
        + raw.cloud.v1alpha1.stackServiceAccountToken.spec.parameters.forProvider.withCloudStackSelector(
          stackServiceAccountResource.spec.parameters.forProvider.cloudStackSelector
        )
        + raw.cloud.v1alpha1.stackServiceAccountToken.spec.parameters.withProviderConfigRef(
          stackServiceAccountResource.spec.parameters.providerConfigRef
        ),
    },
  },

  oss: {
    '#': d.package.newSub('oss', ''),

    team: {
      '#new': d.func.new(
        '`new` creates a team.',
        [d.argument.new('name', d.T.string)]
      ),
      new(name):
        raw.oss.v1alpha1.team.new(name)
        + raw.oss.v1alpha1.team.spec.parameters.withExternalName(name)
        + raw.oss.v1alpha1.team.spec.parameters.forProvider.withName(name),

      '#withExternalName': d.func.new(
        '`withExternalName` can be used to import an existing team.',
        [d.argument.new('externalName', d.T.string)]
      ),
      withExternalName(externalName):
        raw.oss.v1alpha1.team.spec.parameters.withExternalName(externalName),

      '#withMembers':
        d.func.new(
          |||
            `withMembers` configures the team members, it expects a set of email addresses corresponding to users who should be given membership to the team.

            Note: users specified here must already exist in Grafana.
          |||,
          [d.argument.fromSchema('members', { type: 'array', items: { type: 'string' } })]
        ),
      withMembers(members):
        raw.oss.v1alpha1.team.spec.parameters.forProvider.withMembers(members),
    },

    folder: {
      local forProvider = raw.oss.v1alpha1.folder.spec.parameters.forProvider,

      '#new': d.func.new(
        |||
          `new` creates a folder.
        |||,
        [
          d.argument.new('title', d.T.string),
        ]
      ),
      new(title):
        local uid = xtd.ascii.stringToRFC1123(title);
        raw.oss.v1alpha1.folder.new(uid)
        + forProvider.withPreventDestroyIfNotEmpty()
        + forProvider.withTitle(title)
        + forProvider.withUid(uid)
        + raw.oss.v1alpha1.folder.spec.parameters.withExternalName(uid),

      '#withParentFolder': d.func.new(
        '`withParentFolder` sets the parent folder. `folderResource` can be created by `folder.new()`',
        [d.argument.new('folderResource', d.T.object)]
      ),
      withParentFolder(folderResource):
        forProvider.withParentFolderUid(folderResource.spec.parameters.forProvider.uid),

      '#withDestroyIfNotEmpty': d.func.new(
        '`withDestroyIfNotEmpty` will turn off the protection that prevents a folder from being deleted when it still has dashboards in it. Turning it off will remove the folder regardless if it still contains dashboards.',
        [d.argument.new('value', d.T.bool, default=true)]
      ),
      withDestroyIfNotEmpty(value=true):
        forProvider.withPreventDestroyIfNotEmpty(!value),

      '#withTitle': d.func.new(
        '`withTitle` sets the human readable title in the UI',
        [d.argument.new('title', d.T.string)]
      ),
      withTitle(title):
        forProvider.withTitle(title),

      '#withName': d.func.new(
        '`withName` sets Kubernetes object name',
        [d.argument.new('name', d.T.string)]
      ),
      withName(name):
        raw.oss.v1alpha1.folder.metadata.withName(name),

      '#withUid': d.func.new(
        '`withUid` sets the identifier visible in the URL',
        [d.argument.new('uid', d.T.string)]
      ),
      withUid(uid):
        forProvider.withUid(uid),

      '#withExternalName': d.func.new(
        '`withExternalName` can be used to import an existing folder, it can be either a UID or a numeric ID.',
        [d.argument.new('externalName', d.T.string)]
      ),
      withExternalName(externalName):
        raw.oss.v1alpha1.folder.spec.parameters.withExternalName(externalName),
    },

    folderPermission: {
      local forProvider = raw.oss.v1alpha1.folderPermission.spec.parameters.forProvider,

      '#forFolder': d.func.new(
        '`forFolder` configures the permission for a folder. `folderResource` can be created by `folder.new()`.',
        [d.argument.new('folderResource', d.T.object)]
      ),
      forFolder(folderResource):
        raw.oss.v1alpha1.folderPermission.new(folderResource.metadata.name)
        + forProvider.withFolderUid(folderResource.spec.parameters.forProvider.uid),

      permissions: forProvider.permissions,

      '#withPermissions': d.func.new(
        |||
          `withPermissions` sets the permission items to add/update. Items that are omitted from the list will be removed.
        |||,
        [d.argument.new('permissions', d.T.array)]
      ),
      withPermissions(permissions):
        forProvider.withPermissions(permissions),

      '#withPermissionsMixin': d.func.new(
        |||
          `withPermissionsMixin` adds permission items to add/update. Items that are omitted from the list will be removed.
        |||,
        [d.argument.new('permissions', d.T.array)]
      ),
      withPermissionsMixin(permissions):
        forProvider.withPermissionsMixin(permissions),

      '#withTeamPermission': d.func.new(
        |||
          `withTeamPermission` adds the permission for a team resource to a folder. `teamResource` can be created by `team.new()`
        |||,
        [d.argument.new('permissions', d.T.array)]
      ),
      withTeamPermission(teamResource, permission='Admin'):
        self.withPermissionsMixin([
          self.permissions.teamRef.withName(teamResource.spec.parameters.forProvider.name)
          + self.permissions.withPermission(permission),
        ]),
    },

    dashboard: {
      local forProvider = raw.oss.v1alpha1.dashboard.spec.parameters.forProvider,

      '#new': d.func.new(
        |||
          `new` creates a dashboard.

          - `name` is the Kubernetes object name
          - `dashboardObject` is the actual JSON object of the dashboard
          - `folderResource` can be created by `folder.new()`
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('dashboardObject', d.T.object),
          d.argument.new('folderResource', d.T.object),
        ]
      ),
      new(name, dashboardObject, folderResource):
        local slug = xtd.ascii.stringToRFC1123(name);
        raw.oss.v1alpha1.dashboard.new(slug)
        + forProvider.withConfigJson(std.manifestJson(dashboardObject))
        + forProvider.withFolder(folderResource.spec.parameters.forProvider.uid)
        + forProvider.withOverwrite(),
    },

    datasource: {
      local forProvider = raw.oss.v1alpha1.dataSource.spec.parameters.forProvider,

      '#new': d.func.new(
        |||
          `new` configures a datasource.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('type', d.T.string),
        ]
      ),
      new(name, type):
        local uid = xtd.ascii.stringToRFC1123(name);
        raw.oss.v1alpha1.dataSource.new(uid)
        + forProvider.withName(name)
        + forProvider.withType(type)
        + forProvider.withUid(uid)
        + raw.oss.v1alpha1.dataSource.spec.parameters.withExternalName(uid),

      '#withExternalName': d.func.new(
        '`withExternalName` can be used to import an existing datasource.',
        [d.argument.new('externalName', d.T.string)]
      ),
      withExternalName(externalName):
        raw.oss.v1alpha1.dataSource.spec.parameters.withExternalName(externalName),

      '#withJsonData': d.func.new(
        |||
          `withJsonData` configures options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
        |||,
        [d.argument.new('configObject', d.T.object)],
      ),
      withJsonData(configObject):
        forProvider.withJsonDataEncoded(std.manifestJson(configObject)),

      '#withSecureJsonDataSecretRef': d.func.new(
        |||
          `withSecureJsonDataSecretRef` references a secret that configures sensitive options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('namespace', d.T.string),
          d.argument.new('key', d.T.string),
        ],
      ),
      withSecureJsonDataSecretRef(name, namespace, key):
        forProvider.secureJsonDataEncodedSecretRef.withName(key)
        + forProvider.secureJsonDataEncodedSecretRef.withNamespace(namespace)
        + forProvider.secureJsonDataEncodedSecretRef.withKey(key),

      '#withBasicAuth': d.func.new(
        |||
          `withBasicAuth` enables basic authentication for the data source, not that this'll likely expect secret referenced with `withSecureJsonDataSecretRef()` that has a key `basicAuthPassword`.
        |||,
        [d.argument.new('username', d.T.string)]
      ),
      withBasicAuth(username):
        forProvider.withBasicAuthEnabled()
        + forProvider.withBasicAuthUsername(username),
    },

  },

  oncall: {
    '#': d.package.newSub('oncall', ''),
    escalationChain: {
      local escalationChain = raw.oncall.v1alpha1.escalationChain,
      '#new': d.func.new(
        |||
          `new` creates an Escalation Chain. The `name` is a display-friendly
          string, and `resourceId` defaults to a slug-ified version of it.
          `providerName` is the resource name (`myprovider.metadata.name`) of
          the Provider.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('providerName', d.T.string),
          d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
        ]
      ),
      new(name, providerName, resourceId=null)::
        local id = if resourceId != null then resourceId else xtd.ascii.stringToRFC1123(name);
        escalationChain.new(id)
        + escalationChain.spec.parameters.providerConfigRef.withName(providerName)
        + escalationChain.spec.parameters.forProvider.withName(name),
    },
    integration: {
      local integration = raw.oncall.v1alpha1.integration,
      '#new': d.func.new(
        |||
          `new` creates an Integration. The `name` is a display-friendly
          string, and `resourceId` defaults to a slug-ified version of it.
          `type` is the type of Integration. `providerName` is the resource
          name (`myprovider.metadata.name`) of the Provider.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('type', d.T.string),
          d.argument.new('providerName', d.T.string),
          d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
        ]
      ),
      new(name, type, providerName, resourceId=null)::
        local id = if resourceId != null then resourceId else xtd.ascii.stringToRFC1123(name);
        integration.new(id)
        + integration.spec.parameters.providerConfigRef.withName(providerName)
        + integration.spec.parameters.forProvider.withName(name)
        + integration.spec.parameters.forProvider.withType(type),

      '#withDefaultRoute': d.func.new(
        |||
          `withDefaultRoute` configures the default route using an Escalation
          Chain object's name.
        |||,
        [
          d.argument.new('name', d.T.string)
        ]
      ),
      withDefaultRoute(name)::
        integration.spec.parameters.forProvider.withDefaultRoute(
          integration.spec.parameters.forProvider.defaultRoute.escalationChainRef.withName(name)
        ),
    },
    route: {
      local route = raw.oncall.v1alpha1.route,
      '#new': d.func.new(
        |||
          `new` creates a Route. `id` is the resource name. `integrationName`
          is the resource name of the Integration to reference.
          `escalationChainName` is the resource name of the Escalation Chain to
          reference. `routingRegex` is configured as a routing regex, if
          supplied. `providerName` is the resource name
          (`myprovider.metadata.name`) of the Provider.
        |||,
        [
          d.argument.new('id', d.T.string),
          d.argument.new('integrationName', d.T.string),
          d.argument.new('escalationChainName', d.T.string),
          d.argument.new('providerName', d.T.string),
          d.argument.new('routingRegex', d.T.string, default='null'),
        ]
      ),
      new(id, integrationName, escalationChainName, providerName, routingRegex=null)::
        route.new(id)
        + route.spec.parameters.providerConfigRef.withName(providerName)
        + route.spec.parameters.forProvider.integrationRef.withName(integrationName)
        + route.spec.parameters.forProvider.escalationChainRef.withName(escalationChainName)
        + if routingRegex != null then route.spec.parameters.forProvider.withRoutingRegex(routingRegex) else {},
    },
  },

  sm: {
    '#': d.package.newSub('sm', ''),

    check: {
      local forProvider = raw.sm.v1alpha1.check.spec.parameters.forProvider,

      // TODO: Probe IDs hardcoded for now, look into ways to get them from API in Crossplane. Observe-only resource for the probes datasource?
      local fullProbeList = [1, 7, 8, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 756, 757, 853, 854, 855, 856, 867],
      local shortProbeList = [7, 856, 867],  // Paris, North Virginia, Seoul (all AWS)


      '#new': d.func.new(
        |||
          `new` configures a synthetic monitoring check.

          Note: The probe list will match a short list of just three nodes across the globe.
        |||,
        [
          d.argument.new('name', d.T.string),
          d.argument.new('type', d.T.string),
        ]
      ),
      new(name, job, url):
        local slug = xtd.ascii.stringToRFC1123(name);
        raw.sm.v1alpha1.check.new(slug)
        + forProvider.withJob(job)
        + forProvider.withTarget(url)
        + forProvider.withProbes(shortProbeList)
        + forProvider.withEnabled(true)
        + forProvider.withAlertSensitivity('high')
        + forProvider.withBasicMetricsOnly(true)
        + forProvider.withFrequency(60000)  // ms
        + forProvider.withTimeout(10000),  // ms

      '#withProbes': d.func.new(
        |||
          `withProbes` takes a list of probe location IDs where the target will be checked from.
        |||,
        [d.argument.new('probes', d.T.array)],
      ),
      withProbes(probes):
        forProvider.withProbes(probes),

      '#withFullProbeList': d.func.new(
        |||
          `withFullProbeList` sets the `probes` array to match the fulll list of probes.

          Note: Probe IDs hardcoded for now.
        |||,
        [d.argument.new('probes', d.T.array, fullProbeList)],
      ),
      withFullProbeList(probes=fullProbeList):
        self.withProbes(probes),

      '#withLabels': d.func.new(
        |||
          `withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.
        |||,
        [d.argument.new('labels', d.T.object)]
      ),
      withLabels(labels):
        forProvider.withLabels(labels),

      '#withHttpSettings': d.func.new(
        |||
          `withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

          The `http` object can be created with `check.settings.http.new()`.
        |||,
        [d.argument.new('http', d.T.object)]
      ),
      withHttpSettings(http):
        forProvider.withSettings(
          forProvider.settings.withHttp(http)
        ),

      '#withHttpStatusCheck': d.func.new(
        |||
          `withHttpStatusCheck` configures a simple HTTP status check for the target URL.
        |||,
        [d.argument.new('validStatusCodes', d.T.array, default=[200])]
      ),
      withHttpStatusCheck(validStatusCodes=[200]):
        self.withHttpSettings(self.settings.http.new(validStatusCodes)),

      settings: {
        http:
          forProvider.settings.http
          + {
            '#new': d.func.new(
              |||
                `new` provides the settings for a HTTP check.
              |||,
              [d.argument.new('validStatusCodes', d.T.array, default=[200])]
            ),
            new(validStatusCodes=[200]):
              self.withValidStatusCodes(validStatusCodes)
              + self.withFailIfSsl(false)
              + self.withFailIfNotSsl(true)
              + self.withNoFollowRedirects(true)
              + self.withMethod('GET'),
          },
      },
    },
  },
}
