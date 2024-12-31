local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local util = import '../util.libsonnet';
local raw = import '../zz/main.libsonnet';
local integration = raw.oncall.v1alpha1.integration;
local route = raw.oncall.v1alpha1.route;
local forProvider = integration.spec.parameters.forProvider;

forProvider
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
      an Escalation Chain. `escalationChain` is the resource name or manifest
      of the desired Escalation Chain.
    |||,
    [
      d.argument.new('escalationChain', d.T.string),
    ]
  ),
  withDefaultChain(escalationChain):: {
    integration+:
      forProvider.withDefaultRoute(
        forProvider.defaultRoute.escalationChainRef.withName(util.getName(escalationChain))
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
    '#chain':: d.func.new(
      |||
        `chain` configures a Route to reference an Escalation Chain.
      |||,
      [d.argument.new('name', d.T.string)]
    ),
    chain(name)::
      forProvider.escalationChainRef.withName(name),


    '#withRoutingRegex':: d.func.new(
      |||
        `withRoutingRegex` configures a Route to have routing type `regex` and
        use the supplied regex.
      |||,
      [d.argument.new('regex', d.T.string)]
    ),
    withRoutingRegex(regex)::
      forProvider.withRoutingType('regex')
      + forProvider.withRoutingRegex(regex),
  },
}
