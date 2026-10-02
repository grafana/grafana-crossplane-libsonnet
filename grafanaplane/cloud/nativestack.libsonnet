local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local namespaced = import 'github.com/jsonnet-libs/crossplane-provider-grafana-libsonnet/crossplane-provider-grafana/namespaced/main.libsonnet',
      stack = namespaced.cloud.v1alpha1.stack;

{
  '#': d.package.newSub(
    'cloud.nativeStack',
    |||
      Native Crossplane v2 namespaced Stack (cloud.grafana.m.crossplane.io),
      as opposed to `cloud.stack`'s Claim-backed cloud.grafana.net.namespaced.
      That Claim always spawns a cluster-scoped XStack composite alongside
      it; this wraps the raw namespaced managed resource directly instead,
      so no cluster-scoped resource is created at all.
    |||
  ),

  '#new': d.func.new(
    '`new` creates a new native namespaced Stack.',
    [
      d.argument.new('name', d.T.string),
      d.argument.new('providerConfigName', d.T.string),
      d.argument.new('providerConfigKind', d.T.string, default='ClusterProviderConfig'),
    ]
  ),
  new(name, providerConfigName, providerConfigKind='ClusterProviderConfig'): {
    stack:
      stack.new(name)
      + stack.metadata.withAnnotationsMixin({
        'crossplane.io/external-name': name,
      })
      + stack.spec.forProvider.withName(name)
      + stack.spec.forProvider.withSlug(name)
      + stack.spec.providerConfigRef.withName(providerConfigName)
      + stack.spec.providerConfigRef.withKind(providerConfigKind),
  },
}
