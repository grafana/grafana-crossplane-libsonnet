local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  local integration = raw.oncall.v1alpha1.integration,
  '#new': d.func.new(
    |||
      `new` creates an Integration. The `name` is a display-friendly
      string, and `resourceId` defaults to a slug-ified version of it.
      `type` is the type of Integration. `providerName` is the resource
      name (`myprovider.metadata.name`) of the Provider.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, type, providerName, resourceId=null)::
    local id = if resourceId != null then resourceId else xtd.ascii.stringToRFC1123(name);
    integration.new(id)
    + integration.spec.parameters.providerConfigRef.withName(providerName)
    + integration.spec.parameters.forProvider.withName(name)
    + integration.spec.parameters.forProvider.withType(type),

  '#withDefaultRoute': d.func.new(
    |||
      `withDefaultRoute` configures the default route using an Escalation
      Chain object's name.
    |||,
    [
      d.argument.new('name', d.T.string),
    ]
  ),
  withDefaultRoute(name)::
    integration.spec.parameters.forProvider.withDefaultRoute(
      integration.spec.parameters.forProvider.defaultRoute.escalationChainRef.withName(name)
    ),
}
