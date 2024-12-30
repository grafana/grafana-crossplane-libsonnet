local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  local schedule = raw.oncall.v1alpha1.schedule,
  '#new': d.func.new(
    |||
      `new` creates a Schedule. The `name` is a display-friendly
      string, and `resourceId` defaults to a slug-ified version of it.
      `type` is the type of Schedule. `providerName` is the resource
      name (`myprovider.metadata.name`) of the Provider.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string, enums=['ical', 'calendar']),
      d.argument.new('providerName', d.T.string),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, type, providerName, resourceId=null)::
    schedule.new(resourceId)
    + schedule.spec.parameters.providerConfigRef.withName(providerName)
    + schedule.spec.parameters.forProvider.withName(name)
    + schedule.spec.parameters.forProvider.withType(type),
}
