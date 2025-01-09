local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local integration = raw.oncall.v1alpha1.integration;
local route = raw.oncall.v1alpha1.route;
local forProvider = integration.spec.parameters.forProvider;

{
  '#new':: d.func.new(
    |||
      `new` creates an Integration. The `name` is a display-friendly string.
      `type` is the type of Integration. `defaultChainName` is the resource
      name of the default Escalation Chain.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string),
      d.argument.new('defaultChainName', d.T.string),
    ]
  ),
  new(name, type, defaultChainName):: {
    integrationName:: xtd.ascii.stringToRFC1123(name),
    defaultChainName:: defaultChainName,
    integration:
      integration.new(self.integrationName)
      + forProvider.withName(name)
      + forProvider.withType(type)
      + forProvider.withDefaultRoute(
        forProvider.defaultRoute.escalationChainRef.withName(defaultChainName)
      ),
  },

  '#withId':: d.func.new(
    '`withId` sets the resource name for an Integration',
    [d.argument.new('id', d.T.string)]
  ),
  withId(id):: {
    integrationName:: id,
    integration+: integration.metadata.withName(id),
  },

  '#withRoutes':: d.func.new(
    |||
      `withRoute` configures Route resources connecting this Integration with
      Escalation Chains. `routes` is an array of Routes to be evaluated in
      order. If they do not specify an Escalation Chain to route to, the
      default chain for this Integration will be used.
    |||,
    [d.argument.new('routes', d.T.array)]
  ),
  withRoutes(routes):: {
    local forProvider = route.spec.parameters.forProvider,
    routes:
      std.mapWithIndex(
        function(position, item)
          route.new('%s-%d' % [self.integrationName, position])
          + forProvider.integrationRef.withName(self.integrationName)
          // use the default chain if not specified
          + forProvider.escalationChainRef.withName(self.defaultChainName)
          + forProvider.withPosition(position)
          + item,
        routes
      ),
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
