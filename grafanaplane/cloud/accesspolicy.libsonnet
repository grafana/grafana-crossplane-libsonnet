local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local main = import './main.libsonnet';
local raw = import '../zz/main.libsonnet',
      accessPolicy = raw.cloud.v1alpha1.accessPolicy,
      forProvider = accessPolicy.spec.parameters.forProvider;

{
  '#': d.package.newSub('cloud.accessPolicy', ''),

  '#new': d.func.new(
    |||
      `new` creates a new Access Policy.

      For `scopes`, see https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/#scopes for possible values.

      A valid Access Policy also needs a `realm`, use one of the following functions:
      - `withStack`: reference a stack by its identifier (id).
      - `forStackResource`: reference a stack by a Crossplane resource.
      - `forOrg`: set realm to org level
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
      d.argument.new('scopes', d.T.array),
    ]
  ),
  new(name, namespace, scopes): {
    accessPolicy:
      accessPolicy.new(name)
      + accessPolicy.metadata.withNamespace(namespace)
      + forProvider.withName(name)
      + forProvider.withScopes(scopes),
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
      forProvider.withRealm(
        forProvider.realm.withType('stack')
        + forProvider.realm.withIdentifier(id)
      )
      + forProvider.withRegion(region),
  },

  '#forStackResource': d.func.new(
    |||
      `forStackResource` configures the `realm` for a `stackResource`.

       The `stackResource` is in the `stack` key returned by `cloud.stack.new()`.
    |||,
    [
      d.argument.new('stackResource', d.T.string),
      d.argument.new('namespace', d.T.string),
    ]
  ),
  forStackResource(stackResource, namespace=stackResource.metadata.namespace): {
    accessPolicy+:
      forProvider.withRealm(
        forProvider.realm.withType('stack')
        + forProvider.realm.stackSelector.withMatchLabels({
          'crossplane.io/claim-name': stackResource.metadata.name,
          'crossplane.io/claim-namespace': namespace,
        })
      )
      // region is a required attribute,
      // this'll require that `stackResource` has regionSlug configured
      + forProvider.withRegion(stackResource.spec.parameters.forProvider.regionSlug),
  },

  '#forOrg': d.func.new(
    |||
      `forOrg` configures the `realm` to an org `slug`.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
      d.argument.new('scopes', d.T.array),
    ]
  ),
  forOrg(slug, region='prod-us-east-0'): {
    accessPolicy+:
      forProvider.withRealm(
        forProvider.realm.withType('org')
        + forProvider.realm.withIdentifier(slug)
      )
      // region is a required attribute,
      // it is a bit unclear what this needs to be for an 'org' policy
      + forProvider.withRegion(region),
  },

  '#addToken': d.func.new(
    |||
      `addToken` creates a new Access Policy Token under this Access Policy, the token will be available in the provider secret.
    |||,
    [
      d.argument.new('secretName', d.T.string),
      d.argument.new('secretNamespace', d.T.string),
    ]
  ),
  addToken(secretName, secretNamespace): {
    local this = self,
    tokens+: {
      [secretName]:
        main.accessPolicyToken.new(secretName, secretNamespace)
        + main.accessPolicyToken.forAccessPolicyResource(this.accessPolicy),
    },
  },
}
