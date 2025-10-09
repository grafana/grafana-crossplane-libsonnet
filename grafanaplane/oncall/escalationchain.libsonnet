local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local escalationChain = raw.oncall.v1alpha1.escalationChain;
local escalation = raw.oncall.v1alpha1.escalation;

{
  '#': d.package.newSub('oncall.escalationChain', ''),

  '#new':: d.func.new(
    |||
      `new` creates an Escalation Chain.

      Parameters:
        - `name` is a display-friendly string.
        - `namespace` is the namespace in which chain will be created.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
    ]
  ),
  new(name, namespace):: {
    claimName:: xtd.ascii.stringToRFC1123(name),
    claimNamespace:: namespace,
    chain:
      escalationChain.new(self.claimName)
      + escalationChain.spec.parameters.forProvider.withName(name),
  },

  '#withClaimName':: d.func.new(
    '`withClaimName` sets the resource name for an Escalation Chain',
    [d.argument.new('claimName', d.T.string)]
  ),
  withClaimName(claimName):: {
    claimName:: claimName,
  },

  '#withSteps':: d.func.new(
    |||
      `withSteps` configures one or more Escalation steps within the calling Escalation Chain.
    |||,
    [
      d.argument.new('steps', d.T.array),
    ]
  ),
  withSteps(steps):: {
    local this = self,
    steps:
      std.mapWithIndex(
        function(position, step)
          local id = '%s-%d' % [self.claimName, position];
          escalation.new(id)
          + step
          + escalation.spec.parameters.forProvider.escalationChainSelector.withMatchLabels({
            'crossplane.io/claim-name': this.claimName,
            'crossplane.io/claim-namespace': this.claimNamespace,
          })
          + escalation.spec.parameters.forProvider.withPosition(position)
        ,
        steps
      ),
  },

  '#withTeamId':: d.func.new(
    |||
      `withTeamId` configures the Team ID on the Escalation Chain.

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
    chain+: escalationChain.spec.parameters.forProvider.withTeamId(teamId),
  },

  step: {
    local forProvider = escalation.spec.parameters.forProvider,

    '#notifyOnCallFromSchedule':: d.func.new(
      |||
        `notifyOnCallFromSchedule` configures an Escalation step to notify on-call persons from the given Schedule.

        Parameters:
          - `scheduleName` must be the Schedule resource name
          - `scheduleNamespace` must be its namespace.
      |||,
      [
        d.argument.new('scheduleName', 'string'),
        d.argument.new('scheduleNamespace', 'string'),
      ]
    ),
    notifyOnCallFromSchedule(scheduleName, scheduleNamespace)::
      forProvider.withType('notify_on_call_from_schedule')
      + forProvider.notifyOnCallFromScheduleSelector.withMatchLabels({
        'crossplane.io/claim-name': scheduleName,
        'crossplane.io/claim-namespace': scheduleNamespace,
      }),

    '#notifyPersons':: d.func.new(
      |||
        `notifyPersons` configures an Escalation step to notify a list of person IDs.
      |||,
      [d.argument.new('persons', d.T.array)]
    ),
    notifyPersons(persons)::
      forProvider.withType('notify_persons')
      + forProvider.withPersonsToNotify(persons),

    '#wait':: d.func.new(
      |||
        `wait` configures an Escalation step to wait for acknowledgement for the given number of seconds before proceeding.
      |||,
      [d.argument.new('seconds', d.T.number)]
    ),
    wait(seconds)::
      forProvider.withType('wait')
      + forProvider.withDuration(seconds),
  },
}
