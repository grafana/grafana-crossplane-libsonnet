local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local schedule = raw.oncall.v1alpha1.schedule;
local forProvider = schedule.spec.parameters.forProvider;

{
  local base = self,

  '#new':: d.func.new(
    '`new` creates a Schedule. The `name` is a display-friendly string.',
    [d.argument.new('name', d.T.string)]
  ),
  new(name)::
    schedule.new(xtd.ascii.stringToRFC1123(name))
    + schedule.spec.parameters.forProvider.withName(name),

  '#withId':: d.func.new(
    '`withId` sets the resource name for a Schedule',
    [d.argument.new('id', d.T.string)]
  ),
  withId(id):: schedule.metadata.withName(id),

  '#withShifts':: d.func.new(
    |||
      `withShifts` sets a Schedule to type `calendar` and configures shifts.
      Shifts are only applicable to `calendar` type Schedules. `shifts` is an
      array of Shift resource names.
    |||,
    [
      d.argument.new('shifts', d.T.array),
    ]
  ),
  withShifts(shifts)::
    forProvider.withType('calendar')
    + forProvider.withShiftsRef([
      forProvider.shiftsRef.withName(shift)
      for shift in shifts
    ]),
}
