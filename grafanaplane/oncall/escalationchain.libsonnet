local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local util = import '../util.libsonnet';
local raw = import '../zz/main.libsonnet';
local escalationChain = raw.oncall.v1alpha1.escalationChain;
local escalation = raw.oncall.v1alpha1.escalation;

{
  '#new':: d.func.new(
    |||
      `new` creates an Escalation Chain. The `name` is a display-friendly
      string, and `id` defaults to a slug-ified version of it.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('id', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, id=xtd.ascii.stringToRFC1123(name)):: {
    chainName:: id,
    chain:
      escalationChain.new(id)
      + escalationChain.spec.parameters.forProvider.withName(name),
  },

  '#withSteps':: d.func.new(
    |||
      `withSteps` configures one or more Escalation resources as steps within
      the calling Escalation Chain.
    |||,
    [
    ]
  ),
  withSteps(steps):: {
    steps:
      std.mapWithIndex(
        function(position, step)
          local id = '%s-%d' % [self.chainName, position];
          escalation.new(id)
          + escalation.spec.parameters.forProvider.escalationChainRef.withName(self.chainName)
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
        on-call persons from the given Schedule. `schedule` may be either a
        Schedule resource name or a manifest.
      |||,
      [d.argument.new('schedule', 'string|object')]
    ),
    notifyOnCallFromSchedule(schedule)::
      forProvider.withType('notify_on_call_from_schedule')
      + forProvider.withNotifyOnCallFromScheduleRef(
        forProvider.notifyOnCallFromScheduleRef.withName(util.getName(schedule))
      ),

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
