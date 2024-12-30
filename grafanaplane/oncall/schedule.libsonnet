local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  local this = self,
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
    local id = if resourceId != null then resourceId else xtd.ascii.stringToRFC1123(name);
    schedule.new(id)
    + schedule.spec.parameters.providerConfigRef.withName(providerName)
    + schedule.spec.parameters.forProvider.withName(name)
    + schedule.spec.parameters.forProvider.withType(type),

  '#newCalendar': d.func.new(
    |||
      `newCalendar` creates a Schedule with type `calendar`. The `name` is a
      display-friendly string, and `resourceId` defaults to a slug-ified
      version of it. `providerName` is the resource name
      (`myprovider.metadata.name`) of the Provider. If supplied, `shiftNames`
      are supplied to `withShiftsRef` to associate an array of shifts by
      resource name.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new('shiftNames', d.T.array, default='[]'),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  newCalendar(name, providerName, shiftNames=[], resourceId=null)::
    this.new(name, 'calendar', providerName, resourceId)
    + this.withShiftsRef(shiftNames),

  '#withShifts': d.func.new(|||
    `withShifts` sets an array of `shiftsRef` objects on a Schedule. `names` is
    an array of OnCallShift resource names.
  |||),
  withShiftsRef(names)::
    schedule.spec.parameters.forProvider.withShiftsRef([
      schedule.spec.parameters.forProvider.shiftsRef.withName(name)
      for name in names
    ]),
}
