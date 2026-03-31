local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local grafana = import 'github.com/jsonnet-libs/crossplane-provider-grafana-libsonnet/crossplane-provider-grafana/namespaced/main.libsonnet';

{
  '#': d.package.newSub('global.clusterProviderConfig', ''),

  '#new': d.func.new(
    '`new` creates a ClusterProviderConfig.',
    [
      d.argument.new('name', d.T.string),
      d.argument.new('secretName', d.T.string),
      d.argument.new('secretNamespace', d.T.string),
      d.argument.new('secretKey', d.T.string),
    ]
  ),
  new(name, secretName, secretNamespace, secretKey):
    grafana.grafana.v1beta1.clusterProviderConfig.new(name)
    + grafana.grafana.v1beta1.clusterProviderConfig.spec.credentials.withSource('Secret')
    + grafana.grafana.v1beta1.clusterProviderConfig.spec.credentials.secretRef.withNamespace(secretNamespace)
    + grafana.grafana.v1beta1.clusterProviderConfig.spec.credentials.secretRef.withName(secretName)
    + grafana.grafana.v1beta1.clusterProviderConfig.spec.credentials.secretRef.withKey(secretKey),
}
