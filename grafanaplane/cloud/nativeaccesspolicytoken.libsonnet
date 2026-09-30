local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local namespaced = import 'github.com/jsonnet-libs/crossplane-provider-grafana-libsonnet/crossplane-provider-grafana/namespaced/main.libsonnet',
      accessPolicyToken = namespaced.cloud.v1alpha1.accessPolicyToken;

{
  '#': d.package.newSub(
    'cloud.nativeAccessPolicyToken',
    |||
      Native Crossplane v2 namespaced AccessPolicyToken (cloud.grafana.m.crossplane.io),
      as opposed to `cloud.accessPolicyToken`'s Claim-backed cloud.grafana.net.namespaced.
    |||
  ),

  '#new': d.func.new(
    '`new` creates a new native namespaced AccessPolicyToken.',
    [
      d.argument.new('secretName', d.T.string),
      d.argument.new('providerConfigName', d.T.string),
      d.argument.new('providerConfigKind', d.T.string, default='ClusterProviderConfig'),
    ]
  ),
  new(secretName, providerConfigName, providerConfigKind='ClusterProviderConfig'): {
    accessPolicyToken:
      accessPolicyToken.new(secretName)
      + accessPolicyToken.spec.forProvider.withName(secretName)
      + accessPolicyToken.spec.writeConnectionSecretToRef.withName(secretName)
      + accessPolicyToken.spec.providerConfigRef.withName(providerConfigName)
      + accessPolicyToken.spec.providerConfigRef.withKind(providerConfigKind),
  },

  '#forAccessPolicyResource': d.func.new(
    |||
      `forAccessPolicyResource` references the AccessPolicy by its own
      resource name+namespace, same reasoning as forStackResource.
    |||,
    [
      d.argument.new('accessPolicyResource', d.T.object),
      d.argument.new('namespace', d.T.string),
    ]
  ),
  forAccessPolicyResource(accessPolicyResource, namespace=accessPolicyResource.metadata.namespace): {
    accessPolicyToken+:
      accessPolicyToken.spec.forProvider.accessPolicyRef.withName(accessPolicyResource.metadata.name)
      + accessPolicyToken.spec.forProvider.accessPolicyRef.withNamespace(namespace)
      + accessPolicyToken.spec.forProvider.withRegion(accessPolicyResource.spec.forProvider.region),
  },
}
