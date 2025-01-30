local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local schedule = raw.oncall.v1alpha1.schedule;
local forProvider = schedule.spec.parameters.forProvider;

{
  calendar: {
    '#new':: d.func.new(
      |||
        `new` creates a Schedule with type `calendar`. It automatically
        includes references to Shift objects which are members of its `shifts`
        field. `shifts` is an object representing zero or more shifts.

        Shifts are unordered, and so are supplied as an object to allow for
        reuse. For example, a Primary/Secondary pair of Schedules could be
        declared like:

        ```jsonnet
        local calendar = grafanaplane.oncall.schedule.calendar,
        local onCallUsers = [['bob@example.com'], ['alice@example.com']],
        primary: calendar.new('Primary', 'my-namespace', [
          // 24 hour daily shift
          calendar.shift.new('Weekday', '2025-01-01T12:00:00', 24 * 60 * 60)
          + calendar.shift.withByDay(['MO', 'TU', 'WE', 'TH', 'FR'])
          + calendar.shift.withRollingUsers('daily', onCallUsers),
          // 72 hour weekend shift
          calendar.shift.new('Weekend', '2025-01-01T12:00:00', 72 * 60 * 60)
          + calendar.shift.withByDay(['FR', 'SA', 'SU', 'MO'])
          + calendar.shift.withRollingUsers('weekly', onCallUsers),
        ]),

        // same as the primary shift, but shifted one person
        secondary: calendar.new('Secondary', 'my-namespace', [
          shift
          // replace the resource ID
          + calendar.shift.withId('secondary-' + shift.metadata.name)
          // start rotating from the second person
          + calendar.shift.withStartRotationFromUserIndex(1)
          for shift in self.primary.shifts
        ]),
        ```
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('namespace', d.T.string),
        d.argument.new('shifts', d.T.object),
      ]
    ),
    new(name, namespace, shifts): {
      local this = self,
      scheduleName:: xtd.ascii.stringToRFC1123(name),
      scheduleNamespace:: namespace,
      scheduleShiftLabels:: {
        // Shifts need to be looked up using a selector because the Schedule
        // refers not to the claims, but to realized compositions with
        // generated names. The Schedule cannot use a list of selectors,
        // though, only one, so we inject this set of labels to the given
        // shifts, and select with these.
        'oncall.grafana.crossplane.io/schedule-claim-name': this.scheduleName,
        'oncall.grafana.crossplane.io/schedule-claim-namespace': this.scheduleNamespace,
      },
      schedule:
        schedule.new(self.scheduleName)
        + forProvider.withName(name)
        + forProvider.withType('calendar')
        + forProvider.shiftsSelector.withMatchLabels(this.scheduleShiftLabels),
      shifts: [
        // Inject matching labels to identify Shifts as belonging to this Schedule.
        raw.oncall.v1alpha1.onCallShift.metadata.withLabels(this.scheduleShiftLabels)
        + shift
        for shift in shifts
      ],
    },

    '#withId':: d.func.new(
      '`withId` sets the resource name for a Schedule',
      [d.argument.new('id', d.T.string)]
    ),
    withId(id):: {
      scheduleName:: id,
      schedule+: schedule.metadata.withName(id),
    },

    '#withShifts':: d.func.new(
      |||
        `withShifts` sets an array of Shifts on a calendar-type Schedule.
      |||,
      [d.argument.new('shifts', d.T.array)]
    ),
    withShifts(shifts):: {
      shifts: shifts,
    },

    shift: import './shift.libsonnet',
  },
}
