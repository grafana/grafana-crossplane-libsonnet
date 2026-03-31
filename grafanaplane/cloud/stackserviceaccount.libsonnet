local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      stackServiceAccount = raw.cloud.v1alpha1.stackServiceAccount,
      forProvider = stackServiceAccount.spec.parameters.forProvider;

{
  '#': d.package.newSub('cloud.stackServiceAccount', ''),

  '#fromStackResource': d.func.new(
    '`fromStackResource` creates a new service account from a Stack resource.',
    [
      d.argument.new('stackResource', d.T.object),
      d.argument.new('namespace', d.T.string),
    ]
  ),
  fromStackResource(stackResource, namespace):
    stackServiceAccount.new(stackResource.metadata.name + '-admin')
    + forProvider.withName('crossplaneManagementKey')
    + forProvider.withRole('Admin')
    + forProvider.cloudStackSelector.withMatchLabels({
      'crossplane.io/claim-name': stackResource.metadata.name,
      'crossplane.io/claim-namespace': namespace,
    })
    + stackServiceAccount.spec.parameters.withProviderConfigRef(
      stackResource.spec.parameters.providerConfigRef
    ),
}
