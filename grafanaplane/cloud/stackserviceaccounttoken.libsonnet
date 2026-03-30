local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      stackServiceAccountToken = raw.cloud.v1alpha1.stackServiceAccountToken,
      parameters = stackServiceAccountToken.spec.parameters,
      forProvider = parameters.forProvider;

{
  '#': d.package.newSub('cloud.stackServiceAccountToken', ''),

  '#fromStackServiceAccountResource': d.func.new(
    '`fromStackServiceAccountResource` creates a new service account token from a service account resource. The token will be written to `secretName`.',
    [
      d.argument.new('stackServiceAccountResource', d.T.object),
      d.argument.new('namespace', d.T.string),
      d.argument.new('secretName', d.T.string),
    ]
  ),
  fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName):
    stackServiceAccountToken.new(stackServiceAccountResource.metadata.name)
    + forProvider.withName('crossplaneManagementToken')
    + parameters.writeConnectionSecretToRef.withName(secretName)
    + parameters.writeConnectionSecretToRef.withNamespace(namespace)
    + forProvider.serviceAccountSelector.withMatchLabels({
      'crossplane.io/claim-name': stackServiceAccountResource.metadata.name,
      'crossplane.io/claim-namespace': namespace,
    })
    + forProvider.withCloudStackSelector(
      stackServiceAccountResource.spec.parameters.forProvider.cloudStackSelector
    )
    + parameters.withProviderConfigRef(
      stackServiceAccountResource.spec.parameters.providerConfigRef
    ),
}
