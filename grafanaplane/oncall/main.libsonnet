local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  '#': d.package.newSub('oncall', ''),
  escalationChain: import './escalationchain.libsonnet',
  integration: {
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
  },
  route: {
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
  },
}
