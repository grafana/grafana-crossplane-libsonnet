local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  local route = raw.oncall.v1alpha1.route,
  '#new': d.func.new(
    |||
      `new` creates a Route. `id` is the resource name. `integrationName`
      is the resource name of the Integration to reference.
      `escalationChainName` is the resource name of the Escalation Chain to
      reference. `routingRegex` is configured as a routing regex, if
      supplied. `providerName` is the resource name
      (`myprovider.metadata.name`) of the Provider.
    |||,
    [
      d.argument.new('id', d.T.string),
      d.argument.new('integrationName', d.T.string),
      d.argument.new('escalationChainName', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new('routingRegex', d.T.string, default='null'),
    ]
  ),
  new(id, integrationName, escalationChainName, providerName, routingRegex=null)::
    route.new(id)
    + route.spec.parameters.providerConfigRef.withName(providerName)
    + route.spec.parameters.forProvider.integrationRef.withName(integrationName)
    + route.spec.parameters.forProvider.escalationChainRef.withName(escalationChainName)
    + if routingRegex != null then route.spec.parameters.forProvider.withRoutingRegex(routingRegex) else {},
}
