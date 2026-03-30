local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('global', 'Generic functions to configure the provider.'),
  providerConfig: import './providerconfig.libsonnet',
  namespacedProviderConfig: import './namespacedproviderconfig.libsonnet',
  clusterProviderConfig: import './clusterproviderconfig.libsonnet',
}
