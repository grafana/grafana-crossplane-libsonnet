local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local shift = raw.oncall.v1alpha1.onCallShift;

{
  local base = self,

  '#new': d.func.new(
    |||
      `new` creates an OnCallShift. The `name` is a display-friendly string,
      and `resourceId` defaults to a slug-ified version of it. `type` is the
      type of Shift. `start` is the start time of the shift in
      `yyyy-MM-dd'T'HH:mm:ss` format. `providerName` is the resource name
      (`myprovider.metadata.name`) of the Provider.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string),
      d.argument.new('start', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, type, start, providerName, resourceId=null)::
    local id = if resourceId != null then resourceId else xtd.ascii.stringToRFC1123(name);
    shift.new(id)
    + shift.spec.parameters.providerConfigRef.withName(providerName)
    + shift.spec.parameters.forProvider.withName(name)
    + shift.spec.parameters.forProvider.withType(type)
    + shift.spec.parameters.forProvider.withStart(start),

  '#newRollingUsers': d.func.new(
    |||
      `newRollingUsers` creates an OnCallShift of `rolling_users` type. The
      `name` is a display-friendly string, and `resourceId` defaults to a
      slug-ified version of it. `rollingUsers` is the list of users as an array
      of strings. `start` is the start time of the shift in
      `yyyy-MM-dd'T'HH:mm:ss` format. `duration` is the length of each shift in
      seconds. `interval` is the interval at which the recurrence rule repeats.
      `providerName` is the resource name (`myprovider.metadata.name`) of the
      Provider. `byDay` is a list of days in iCal format on which the shift
      takes place. `byMonth` is a list of months in which the shift takes
      place. `byMonthDay` is a list of month days on which the shift takes
      place. If any of `byDay`, `byMonth`, or `byMonthDay` is `null` (default),
      it is omitted.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('rollingUsers', d.T.array),
      d.argument.new('start', d.T.string),
      d.argument.new('duration', d.T.number),
      d.argument.new('interval', d.T.number),
      d.argument.new('providerName', d.T.string),
      d.argument.new('byDay', d.T.array, default='null'),
      d.argument.new('byMonth', d.T.array, default='null'),
      d.argument.new('byMonthDay', d.T.array, default='null'),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  newRollingUsers(
    name,
    start,
    duration,
    interval,
    rollingUsers,
    providerName,
    byDay=null,
    byMonth=null,
    byMonthDay=null,
    resourceId=null,
  )::
    base.new(name, 'rolling_users', start, providerName, resourceId)
    + shift.spec.parameters.forProvider.withRollingUsers(rollingUsers)
    + shift.spec.parameters.forProvider.withDuration(duration)
    + shift.spec.parameters.forProvider.withInterval(interval)
    + (
      if byDay != null
      then shift.spec.parameters.forProvider.withByDay(byDay)
      else {}
    )
    + (
      if byMonth != null
      then shift.spec.parameters.forProvider.withByMonth(byMonth)
      else {}
    )
    + (
      if byMonthDay != null
      then shift.spec.parameters.forProvider.withByMonthDay(byMonthDay)
      else {}
    ),
}
// Add the forProvider functions here for convenience.
+ shift.spec.parameters.forProvider
