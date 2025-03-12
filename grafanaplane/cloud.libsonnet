local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local global = import './global.libsonnet';
local raw = import './zz/main.libsonnet';

{
  '#': d.package.newSub('cloud', ''),

  local root = self,
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
    '#new': d.func.new(
      '`new` creates a new Grafana Cloud Stack.',
      [
        d.argument.new('name', d.T.string),
        d.argument.new('namespace', d.T.string),
        d.argument.new('cloudProviderConfigName', d.T.string),
        d.argument.new('secretName', d.T.string, default='<name>-providerconfig-token'),
      ]
    ),
    new(name, namespace, cloudProviderConfigName, secretName=name + '-providerconfig-token'): {
      stack:
        assert validStackSlug(name) :
               'The slug/name needs to be a valid subdomain. One word. Only lowercase letters and numbers allowed. Must start with a letter. No dots, dashes, underscores, or spaces.';
        raw.cloud.v1alpha1.stack.new(name)
        + raw.cloud.v1alpha1.stack.spec.parameters.providerConfigRef.withName(cloudProviderConfigName)
        + raw.cloud.v1alpha1.stack.spec.parameters.withExternalName(name)
        + raw.cloud.v1alpha1.stack.spec.parameters.forProvider.withName(name)
        + raw.cloud.v1alpha1.stack.spec.parameters.forProvider.withSlug(name),

      serviceAccount: root.stackServiceAccount.fromStackResource(self.stack, namespace),
      token: root.stackServiceAccountToken.fromStackServiceAccountResource(self.serviceAccount, namespace, secretName),
      grafanaProviderConfig: global.providerConfig.new(name + '-grafana', secretName, namespace, 'instanceCredentials'),
    },
  },

  stackServiceAccount: {
    '#fromStackResource': d.func.new(
      '`fromStackResource` creates a new service account from a Stack resource.',
      [
        d.argument.new('stackResource', d.T.object),
        d.argument.new('namespace', d.T.string),
      ]
    ),
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
    '#fromStackServiceAccountResource': d.func.new(
      '`fromStackServiceAccountResource` creates a new service account token from a service account resource. The token will be written to `secretName`.',
      [
        d.argument.new('stackServiceAccountResource', d.T.object),
        d.argument.new('namespace', d.T.string),
        d.argument.new('secretName', d.T.string),
      ]
    ),
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

  accessPolicy: {
    local forProvider = raw.cloud.v1alpha1.accessPolicy.spec.parameters.forProvider,

    '#new': d.func.new(
      |||
        `new` creates a new Access Policy.

        For `scopes`, see https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/#scopes for possible values.

        A valid Access Policy also needs a `realm`, use one of the following functions:
        - `withStack`: reference a stack by its identifier (id).
        - `forStackResource`: reference a stack by a Crossplane resource.
        - `forOrg`: set realm to org level
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('namespace', d.T.string),
        d.argument.new('scopes', d.T.array),
      ]
    ),
    new(name, namespace, scopes): {
      accessPolicy:
        raw.cloud.v1alpha1.accessPolicy.new(name)
        + raw.cloud.v1alpha1.accessPolicy.metadata.withNamespace(namespace)
        + forProvider.withName(name)
        + forProvider.withScopes(scopes),
    },

    '#withStack': d.func.new(
      '`withStack` configures the `realm` to a stack `id`.',
      [
        d.argument.new('id', d.T.string),
        d.argument.new('region', d.T.string),
      ]
    ),
    withStack(id, region): {
      accessPolicy+:
        forProvider.withRealm(
          forProvider.realm.withType('stack')
          + forProvider.realm.withIdentifier(id)
        )
        + forProvider.withRegion(region),
    },

    '#forStackResource': d.func.new(
      |||
        `forStackResource` configures the `realm` for a `stackResource`.

         The `stackResource` is in the `stack` key returned by `cloud.stack.new()`.
      |||,
      [
        d.argument.new('stackResource', d.T.string),
        d.argument.new('namespace', d.T.string),
      ]
    ),
    forStackResource(stackResource, namespace=stackResource.metadata.namespace): {
      accessPolicy+:
        forProvider.withRealm(
          forProvider.realm.withType('stack')
          + forProvider.realm.stackSelector.withMatchLabels({
            'crossplane.io/claim-name': stackResource.metadata.name,
            'crossplane.io/claim-namespace': namespace,
          })
        )
        // region is a required attribute,
        // this'll require that `stackResource` has regionSlug configured
        + forProvider.withRegion(stackResource.spec.parameters.forProvider.regionSlug),
    },

    '#forOrg': d.func.new(
      |||
        `forOrg` configures the `realm` to an org `slug`.
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('namespace', d.T.string),
        d.argument.new('scopes', d.T.array),
      ]
    ),
    forOrg(slug, region='prod-us-east-0'): {
      accessPolicy+:
        forProvider.withRealm(
          forProvider.realm.withType('org')
          + forProvider.realm.withIdentifier(slug)
        )
        // region is a required attribute,
        // it is a bit unclear what this needs to be for an 'org' policy
        + forProvider.withRegion(region),
    },

    '#addToken': d.func.new(
      |||
        `addToken` creates a new Access Policy Token under this Access Policy, the token will be available in the provider secret.
      |||,
      [
        d.argument.new('secretName', d.T.string),
        d.argument.new('secretNamespace', d.T.string),
      ]
    ),
    addToken(secretName, secretNamespace): {
      local this = self,
      tokens+: {
        [secretName]:
          root.accessPolicyToken.new(secretName, secretNamespace)
          + root.accessPolicyToken.forAccessPolicyResource(this.accessPolicy),
      },
    },
  },

  accessPolicyToken: {
    local parameters = raw.cloud.v1alpha1.accessPolicyToken.spec.parameters,

    '#new': d.func.new(
      |||
        `new` creates a new Access Policy Token.

        Tip: use `accessPolicy.addToken()` to automatically link the token to the right Access Policy.

        A valid Access Policy Token also needs an Access Policy, use one of the following functions:
        - `withAccessPolicyId`: reference a policy by its identifier (id)
        - `forAccessPolicyResource`: reference a policy by a Crossplane resource.
      |||,
      [
        d.argument.new('secretName', d.T.string),
        d.argument.new('secretNamespace', d.T.string),
      ]
    ),
    new(secretName, secretNamespace):
      raw.cloud.v1alpha1.accessPolicyToken.new(secretName)
      + parameters.forProvider.withName(secretName)
      + parameters.writeConnectionSecretToRef.withName(secretName)
      + parameters.writeConnectionSecretToRef.withNamespace(secretNamespace),

    '#withAccessPolicyId': d.func.new(
      '`withAccessPolicyId` configures the Access Policy to a policy `id`.',
      [d.argument.new('id', d.T.string)]
    ),
    withAccessPolicyId(id):
      parameters.forProvider.withAccessPolicyId(id),

    '#forAccessPolicyResource': d.func.new(
      |||
        `forAccessPolicyResource` configures the Access Policy` for a `accessPolicyResource`.

         The `accessPolicyResource` is in the `accessPolicy` key returned by `cloud.accessPolicy.new()`.
      |||,
      [d.argument.new('accessPolicyResource', d.T.object)]
    ),
    forAccessPolicyResource(accessPolicyResource):
      parameters.forProvider.withRegion(accessPolicyResource.spec.parameters.forProvider.region)
      + parameters.forProvider.accessPolicySelector.withMatchLabels({
        'crossplane.io/claim-name': accessPolicyResource.metadata.name,
        'crossplane.io/claim-namespace': accessPolicyResource.metadata.namespace,
      }),
  },
}
