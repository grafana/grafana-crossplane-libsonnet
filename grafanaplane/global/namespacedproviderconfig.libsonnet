local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local grafana = import 'github.com/jsonnet-libs/crossplane-provider-grafana-libsonnet/crossplane-provider-grafana/namespaced/main.libsonnet';

{
  '#': d.package.newSub('global.namespacedProviderConfig', ''),

  '#new': d.func.new(
    '`new` creates a namespaced ProviderConfig.',
    [
      d.argument.new('name', d.T.string),
      d.argument.new('secretName', d.T.string),
      d.argument.new('secretNamespace', d.T.string),
      d.argument.new('secretKey', d.T.string),
    ]
  ),
  new(name, secretName, secretNamespace, secretKey):
    grafana.grafana.v1beta1.providerConfig.new(name)
    + grafana.grafana.v1beta1.providerConfig.spec.credentials.withSource('Secret')
    + grafana.grafana.v1beta1.providerConfig.spec.credentials.secretRef.withNamespace(secretNamespace)
    + grafana.grafana.v1beta1.providerConfig.spec.credentials.secretRef.withName(secretName)
    + grafana.grafana.v1beta1.providerConfig.spec.credentials.secretRef.withKey(secretKey),
}
