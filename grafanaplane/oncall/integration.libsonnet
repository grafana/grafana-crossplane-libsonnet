local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local integration = raw.oncall.v1alpha1.integration;
local route = raw.oncall.v1alpha1.route;
local forProvider = integration.spec.parameters.forProvider;

{
  '#new':: d.func.new(
    |||
      `new` creates an Integration. The `name` is a display-friendly string,
      and `id` defaults to a slug-ified version of it. `type` is the type of
      Integration.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string),
      d.argument.new('id', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, type, id=xtd.ascii.stringToRFC1123(name)):: {
    integrationName:: id,
    integration:
      integration.new(id)
      + integration.spec.parameters.forProvider.withName(name)
      + integration.spec.parameters.forProvider.withType(type),
  },

  '#withDefaultChain':: d.func.new(
    |||
      `withDefaulChain` configures the default route of an Integration to use
      an Escalation Chain. `escalationChain` is the resource name of the
      desired Escalation Chain.
    |||,
    [
      d.argument.new('escalationChainName', d.T.string),
    ]
  ),
  withDefaultChain(escalationChainName):: {
    integration+:
      forProvider.withDefaultRoute(
        forProvider.defaultRoute.escalationChainRef.withName(escalationChainName)
      ),
  },

  '#withRoutes':: d.func.new(
    |||
      `withRoute` configures Route resources connecting this Integration with
      Escalation Chains.
    |||,
    [d.argument.new('routes', d.T.object)]
  ),
  withRoutes(routes):: {
    local integrationName = self.integrationName,
    routes: {
      [item.key]:
        local id = '%s-%s' % [integrationName, item.key];
        route.new(id)
        + route.spec.parameters.forProvider.integrationRef.withName(integrationName)
        + item.value
      for item in std.objectKeysValues(routes)
    },
  },

  route: {
    local forProvider = route.spec.parameters.forProvider,
    '#new':: d.func.new(
      |||
        `new` configures a Route with a given `routingRegex`.
      |||,
      [d.argument.new('routingRegex', d.T.string)]
    ),
    new(routingRegex)::
      forProvider.withRoutingRegex(routingRegex),

    '#withEscalationChain':: d.func.new(
      |||
        `withEscalationChain` configures a Route with a destination Escalation
        Chain. `escalationChainName` is the resource name of the chain.
      |||,
      [d.argument.new('escalationChainName', d.T.string)]
    ),
    withEscalationChain(escalationChainName)::
      forProvider.escalationChainRef.withName(escalationChainName),
  },
}
