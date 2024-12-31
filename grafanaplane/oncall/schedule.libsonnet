local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local schedule = raw.oncall.v1alpha1.schedule;
local forProvider = schedule.spec.parameters.forProvider;

forProvider  // raise forProvider functions to here
{
  local base = self,

  '#new': d.func.new(
    |||
      `new` creates a Schedule. The `name` is a display-friendly
      string, and `id` defaults to a slug-ified version of it.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string, enums=['ical', 'calendar']),
      d.argument.new('providerName', d.T.string),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, id=xtd.ascii.stringToRFC1123(name))::
    schedule.new(id)
    + schedule.spec.parameters.forProvider.withName(name),

  '#withShifts': d.func.new(
    |||
      `withShifts` sets a Schedule to type `calendar` and configures shifts.
      Shifts are only applicable to `calendar` type Schedules. `shifts` is an
      array of Shift resource names or entire Shift manifests.
    |||,
    [
      d.argument.new('shifts', d.T.array, default='null'),
    ]
  ),
  withShifts(shifts=null)::
    super.withType('calendar')
    + super.withShiftsRef([
      if std.isString(shift)
      then base.shiftsRef.fromName(shift)
      else base.shiftsRef.fromManifest(shift)
      for shift in shifts
    ]),

  shiftsRef+: {
    '#fromName':: d.func.new(
      |||
        Construct a `shiftsRef` from a Shift's resource `name`.
      |||,
      [d.argument.new('name', d.T.string)]
    ),
    fromName(name)::
      forProvider.shiftsRef.withName(name),

    '#fromManifest':: d.func.new(
      |||
        Construct a `shiftsRef` from a Shift manifest.
      |||,
      [d.argument.new('manifest', d.T.object)]
    ),
    fromManifest(manifest)::
      forProvider.shiftsRef.withName(manifest.metadata.name),
  },
}
