local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local escalationChain = raw.oncall.v1alpha1.escalationChain;
local escalation = raw.oncall.v1alpha1.escalation;

{
  '#new':: d.func.new(
    |||
      `new` creates an Escalation Chain. `name` is a display-friendly string.\n    `namespace` is the Kubernetes namespace in which the resource will be\n    created; this is used in generated selectors.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
    ]
  ),
  new(name, namespace):: {
    chainName:: xtd.ascii.stringToRFC1123(name),
    chainNamespace:: namespace,
    chain:
      escalationChain.new(self.chainName)
      + escalationChain.spec.parameters.forProvider.withName(name),
  },

  '#withId':: d.func.new(
    '`withId` sets the resource name for an Escalation Chain',
    [d.argument.new('id', d.T.string)]
  ),
  withId(id):: {
    chainName:: id,
    chain+: escalationChain.metadata.withName(id),
  },

  '#withSteps':: d.func.new(
    |||
      `withSteps` configures one or more Escalation resources as steps within
      the calling Escalation Chain.
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
          local id = '%s-%d' % [self.chainName, position];
          escalation.new(id)
          + escalation.spec.parameters.forProvider.escalationChainSelector.withMatchLabels({
            'crossplane.io/claim-name': this.chainName,
            'crossplane.io/claim-namespace': this.chainNamespace,
          })
          + escalation.spec.parameters.forProvider.withPosition(position)
          + step
        ,
        steps
      ),
  },

  '#withTeamId':: d.func.new(
    |||
      `withTeamId` configures the Team ID on the Escalation Chain. `teamId`
      should be the ID of the team as a string.
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
        `notifyOnCallFromSchedule` configures an Escalation step to notify
        on-call persons from the given Schedule. `scheduleName` must be the
        Schedule resource name.
      |||,
      [d.argument.new('schedule', 'string')]
    ),
    notifyOnCallFromSchedule(scheduleName)::
      forProvider.withType('notify_on_call_from_schedule')
      + forProvider.notifyOnCallFromScheduleRef.withName(scheduleName),

    '#notifyPersons':: d.func.new(
      |||
        `notifyPersons` configures an Escalation step to notify a list of
        persons.
      |||,
      [d.argument.new('persons', d.T.array)]
    ),
    notifyPersons(persons)::
      forProvider.withType('notify_persons')
      + forProvider.withPersonsToNotify(persons),

    '#wait':: d.func.new(
      |||
        `wait` configures an Escalation step to wait for acknowledgement for
        the given number of seconds before proceeding.
      |||,
      [d.argument.new('seconds', d.T.number)]
    ),
    wait(seconds)::
      forProvider.withType('wait')
      + forProvider.withDuration(seconds),
  },
}
