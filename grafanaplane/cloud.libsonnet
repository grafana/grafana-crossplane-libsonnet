local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local global = import './global.libsonnet';
local raw = import './zz/main.libsonnet';

{
  '#': d.package.newSub('cloud', ''),

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

      serviceAccount: this.stackServiceAccount.fromStackResource(self.stack, namespace),
      token: this.stackServiceAccountToken.fromStackServiceAccountResource(self.serviceAccount, namespace, secretName),
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
}
