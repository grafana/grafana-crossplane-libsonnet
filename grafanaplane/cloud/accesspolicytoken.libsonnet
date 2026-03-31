local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      accessPolicyToken = raw.cloud.v1alpha1.accessPolicyToken,
      parameters = accessPolicyToken.spec.parameters,
      forProvider = parameters.forProvider;

{
  '#': d.package.newSub('cloud.accessPolicyToken', ''),

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
    accessPolicyToken.new(secretName)
    + forProvider.withName(secretName)
    + parameters.writeConnectionSecretToRef.withName(secretName)
    + parameters.writeConnectionSecretToRef.withNamespace(secretNamespace),

  '#withAccessPolicyId': d.func.new(
    '`withAccessPolicyId` configures the Access Policy to a policy `id`.',
    [d.argument.new('id', d.T.string)]
  ),
  withAccessPolicyId(id):
    forProvider.withAccessPolicyId(id),

  '#forAccessPolicyResource': d.func.new(
    |||
      `forAccessPolicyResource` configures the Access Policy` for a `accessPolicyResource`.

       The `accessPolicyResource` is in the `accessPolicy` key returned by `cloud.accessPolicy.new()`.
    |||,
    [d.argument.new('accessPolicyResource', d.T.object)]
  ),
  forAccessPolicyResource(accessPolicyResource):
    forProvider.withRegion(accessPolicyResource.spec.parameters.forProvider.region)
    + forProvider.accessPolicySelector.withMatchLabels({
      'crossplane.io/claim-name': accessPolicyResource.metadata.name,
      'crossplane.io/claim-namespace': accessPolicyResource.metadata.namespace,
    }),
}
