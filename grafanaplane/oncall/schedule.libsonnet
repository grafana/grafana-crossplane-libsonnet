local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local schedule = raw.oncall.v1alpha1.schedule;
local forProvider = schedule.spec.parameters.forProvider;

{
  '#': d.package.newSub('oncall.schedule', ''),

  calendar: {
    '#new':: d.func.new(
      |||
        `new` creates a Schedule with type `calendar`. It automatically
        includes references to Shift objects which are members of its shifts
        field.

        Shifts are unordered, so they can be reused. For example,
        a Primary/Secondary pair of Schedules could be declared like:

        ```jsonnet
        {
          local calendar = grafanaplane.oncall.schedule.calendar,
          local onCallUsers = [['<OncallUserId1>'], ['<OncallUserId2>']],

          primary:
            calendar.new('Primary', 'my-namespace')
            + calendar.withShifts([
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
          secondary:
            calendar.new('Secondary', 'my-namespace')
            + calendar.withShifts([
              shift
              // replace the resource ID
              + calendar.shift.withClaimName('secondary-' + shift.metadata.name)
              // start rotating from the second person
              + calendar.shift.withStartRotationFromUserIndex(1)
              for shift in self.primary.shifts
            ]),
        }
        ```
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('namespace', d.T.string),
      ]
    ),
    new(name, namespace): {
      local this = self,
      claimName:: xtd.ascii.stringToRFC1123(name),

      schedule:
        schedule.new(self.claimName)
        + forProvider.withName(name)
        + forProvider.withType('calendar')
        + forProvider.withTimeZone('UTC')
        + (
          // Only add shiftsSelector if shifts are defined
          if std.length(self.shifts) > 0
          then
            forProvider.shiftsSelector.withMatchLabels({
              selector: 'schedule-%s' % this.claimName,
              'crossplane.io/claim-namespace': namespace,
            })
            + forProvider.shiftsSelector.policy.withResolve('Always')
          else {}
        ),

      shifts:: [],
      shiftResources: [
        shift
        // Inject matching labels to identify Shifts as belonging to this Schedule.
        + raw.oncall.v1alpha1.onCallShift.spec.parameters.withSelectorLabel('schedule-%s' % self.claimName)
        + (if std.objectHas(self.schedule.spec.parameters.forProvider, 'teamId')
           then raw.oncall.v1alpha1.onCallShift.spec.parameters.forProvider.withTeamId(self.schedule.spec.parameters.forProvider.teamId)
           else {})
        for shift in self.shifts
      ],
    },

    '#withClaimName':: d.func.new(
      '`withClaimName` sets the resource name for a Schedule',
      [d.argument.new('claimName', d.T.string)]
    ),
    withClaimName(claimName):: {
      claimName:: claimName,
    },

    '#withTeamId':: d.func.new(
      |||
        `withTeamId` configures the Team ID on the schedule and shifts.

        Parameters:
          - `teamId` should be the ID of the team as a string.
      |||,
      [
        d.argument.new('teamId', d.T.string),
      ]
    ),
    withTeamId(teamId):: {
      // Constructor nests the resource beneath the `chain` key, so we wrap the
      // raw function to do the same.
      schedule+: forProvider.withTeamId(teamId),
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

    '#withTimeZone':: forProvider['#withTimeZone'],
    withTimeZone(tz): { schedule+: forProvider.withTimeZone(tz) },

    shift: import './shift.libsonnet',

    '#withSlackUserGroup': forProvider.slack['#withUserGroupId'],
    withSlackUserGroup(id): {
      schedule+:
        forProvider.withSlackMixin(
          forProvider.slack.withUserGroupId(id)
        ),
    },

    '#withSlackChannelId': forProvider.slack['#withChannelId'],
    withSlackChannelId(id): {
      schedule+:
        forProvider.withSlackMixin(
          forProvider.slack.withChannelId(id)
        ),
    },

    '#withOverridesCalendar': forProvider['#withIcalUrlOverrides'],
    withOverridesCalendar(url): {
      schedule+:
        forProvider.withIcalUrlOverrides(url),
    },
  },
}
