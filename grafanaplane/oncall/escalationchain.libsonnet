local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  local escalationChain = raw.oncall.v1alpha1.escalationChain,
  '#new': d.func.new(
    |||
      `new` creates an Escalation Chain. The `name` is a display-friendly
      string, and `resourceId` defaults to a slug-ified version of it.
      `providerName` is the resource name (`myprovider.metadata.name`) of
      the Provider.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, providerName, resourceId=null)::
    local id = if resourceId != null then resourceId else xtd.ascii.stringToRFC1123(name);
    escalationChain.new(id)
    + escalationChain.spec.parameters.providerConfigRef.withName(providerName)
    + escalationChain.spec.parameters.forProvider.withName(name),
}
