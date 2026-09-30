local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local namespaced = import 'github.com/jsonnet-libs/crossplane-provider-grafana-libsonnet/crossplane-provider-grafana/namespaced/main.libsonnet',
      accessPolicy = namespaced.cloud.v1alpha1.accessPolicy;

{
  '#': d.package.newSub(
    'cloud.nativeAccessPolicy',
    |||
      Native Crossplane v2 namespaced AccessPolicy (cloud.grafana.m.crossplane.io),
      as opposed to `cloud.accessPolicy`'s Claim-backed cloud.grafana.net.namespaced.
    |||
  ),

  '#new': d.func.new(
    '`new` creates a new native namespaced AccessPolicy.',
    [
      d.argument.new('name', d.T.string),
      d.argument.new('scopes', d.T.array),
      d.argument.new('providerConfigName', d.T.string),
      d.argument.new('providerConfigKind', d.T.string, default='ClusterProviderConfig'),
    ]
  ),
  new(name, scopes, providerConfigName, providerConfigKind='ClusterProviderConfig'): {
    accessPolicy:
      accessPolicy.new(name)
      + accessPolicy.spec.forProvider.withName(name)
      + accessPolicy.spec.forProvider.withScopes(scopes)
      + accessPolicy.spec.providerConfigRef.withName(providerConfigName)
      + accessPolicy.spec.providerConfigRef.withKind(providerConfigKind),
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
      accessPolicy.spec.forProvider.withRealm(
        accessPolicy.spec.forProvider.realm.withType('stack')
        + accessPolicy.spec.forProvider.realm.withIdentifier(id)
      )
      + accessPolicy.spec.forProvider.withRegion(region),
  },

  '#forStackResource': d.func.new(
    |||
      `forStackResource` configures the `realm` for a native Stack resource
      (name+namespace), not the old claim-name/claim-namespace labels --
      those don't exist without a Claim.
    |||,
    [
      d.argument.new('stackResource', d.T.object),
      d.argument.new('namespace', d.T.string),
    ]
  ),
  forStackResource(stackResource, namespace=stackResource.metadata.namespace): {
    accessPolicy+:
      accessPolicy.spec.forProvider.withRealm(
        accessPolicy.spec.forProvider.realm.withType('stack')
        + accessPolicy.spec.forProvider.realm.stackRef.withName(stackResource.metadata.name)
        + accessPolicy.spec.forProvider.realm.stackRef.withNamespace(namespace)
      )
      + accessPolicy.spec.forProvider.withRegion(stackResource.spec.forProvider.regionSlug),
  },

  '#forOrg': d.func.new(
    '`forOrg` configures the `realm` to an org `slug`.',
    [
      d.argument.new('slug', d.T.string),
      d.argument.new('region', d.T.string, default='prod-us-east-0'),
    ]
  ),
  forOrg(slug, region='prod-us-east-0'): {
    accessPolicy+:
      accessPolicy.spec.forProvider.withRealm(
        accessPolicy.spec.forProvider.realm.withType('org')
        + accessPolicy.spec.forProvider.realm.withIdentifier(slug)
      )
      + accessPolicy.spec.forProvider.withRegion(region),
  },
}
