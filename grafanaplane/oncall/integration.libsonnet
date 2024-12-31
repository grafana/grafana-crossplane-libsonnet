local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local util = import '../util.libsonnet';
local raw = import '../zz/main.libsonnet';
local integration = raw.oncall.v1alpha1.integration;
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
  new(name, type, id=xtd.ascii.stringToRFC1123(name))::
    integration.new(id)
    + integration.spec.parameters.forProvider.withName(name)
    + integration.spec.parameters.forProvider.withType(type),

  '#withDefaultChain': d.func.new(
    |||
      `withDefaulChain` configures the default route of an Integration to use
      an Escalation Chain. `escalationChain` is the resource name or manifest
      of the desired Escalation Chain.
    |||,
    [
      d.argument.new('escalationChain', d.T.string),
    ]
  ),
  withDefaultChain(escalationChain)::
    super.withDefaultRoute(
      super.defaultRoute.escalationChainRef.withName(util.getName(escalationChain))
    ),
}
