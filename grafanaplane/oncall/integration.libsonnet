local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      integration = raw.oncall.v1alpha1.integration,
      route = raw.oncall.v1alpha1.route,
      forProvider = integration.spec.parameters.forProvider;

{
  '#': d.package.newSub('oncall.integration', ''),

  '#new':: d.func.new(
    |||
      `new` creates an Integration.

      Parameters:
        - `name` is a display-friendly string.
        - `namespace` is the namespace for the Integration.
        - `type` is the type of Integration.
        - `defaultChain` is the default EscalationChain claim.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
      d.argument.new('type', d.T.string),
      d.argument.new('defaultChain', d.T.object),
    ]
  ),
  new(name, namespace, type, defaultChain):: {
    local this = self,
    claimName:: xtd.ascii.stringToRFC1123(name),
    claimNamespace:: namespace,
    defaultChain:: defaultChain,
    integration:
      //
      integration.new(self.claimName)
      + forProvider.withName(name)
      + forProvider.withType(type)
      + forProvider.withDefaultRoute(
        //  Crossplane looks up the Escalation Chain using the cluster-scoped `EscalationChain.oncall.grafana.crossplane.io` kind, rather than the namespaced `EscalationChain.oncall.grafana.net.namespaced` claim kind.
        // This `escalationChainSelector` uses the `crossplane.io/claim-name` and `crossplane.io/claim-namespace` labels to select the correct cluster-scoped resource based on the claim name.
        forProvider.defaultRoute.escalationChainSelector.withMatchLabels({
          'crossplane.io/claim-name': this.defaultChain.claimName,
          'crossplane.io/claim-namespace': this.defaultChain.claimNamespace,
        })
      ),
  },

  '#withClaimName':: d.func.new(
    '`withClaimName` sets the resource name for an Integration',
    [d.argument.new('claimName', d.T.string)]
  ),
  withClaimName(claimName):: {
    claimName:: claimName,
  },

  '#withRoutes':: d.func.new(
    |||
      `withRoute` configures Route resources connecting this Integration with Escalation Chains.

      Parameters:
        - `routes` is an array of Routes to be evaluated in order.

      If routes do not specify an Escalation Chain to route to, the default chain for this Integration will be used.
    |||,
    [d.argument.new('routes', d.T.array)]
  ),
  withRoutes(routes):: {
    local forProvider = route.spec.parameters.forProvider,
    local this = self,
    routes:
      std.mapWithIndex(
        function(position, routeItem)
          route.new('%s-%d' % [self.claimName, position])
          // use the default chain if not specified; see `new()`
          + forProvider.escalationChainSelector.withMatchLabels({
            'crossplane.io/claim-name': this.defaultChain.claimName,
            'crossplane.io/claim-namespace': this.defaultChain.claimNamespace,
          })
          + routeItem
          + forProvider.integrationSelector.withMatchLabels({
            'crossplane.io/claim-name': this.claimName,
            'crossplane.io/claim-namespace': this.claimNamespace,
          })
          + forProvider.withPosition(position),
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
        `withEscalationChain` configures a Route with a destination Escalation Chain.
        Parameters:
          - `name` is the name of the escalation chain claim.
          - `namespace` is the namespace of the escalation chain claim.
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('namespace', d.T.string),
      ]
    ),
    withEscalationChain(name, namespace)::
      forProvider.escalationChainSelector.withMatchLabels({
        'crossplane.io/claim-name': name,
        'crossplane.io/claim-namespace': namespace,
      }),
  },
}
