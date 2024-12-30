local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  local this = self,
  local escalation = raw.oncall.v1alpha1.escalation,

  '#new': d.func.new(
    |||
      `new` creates an Escalation. `escalationChainName` is the resource name
      (`myescalationchain.metadata.name`) of the parent Escalation Chain.
      `position` is the position of the Escalation in the chain. `type` is the
      Escalation type. `providerName` is the resource name
      (`myprovider.metadata.name`) of the Provider. `resourceId` defaults to
      `<escalationChainName>-<position>`.
    |||,
    [
      d.argument.new('escalationChainName', d.T.string),
      d.argument.new('position', d.T.number),
      d.argument.new('type', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new(
        'resourceId',
        d.T.string,
        default='<escalationChainName>-<position>'
      ),
    ]
  ),
  new(
    escalationChainName,
    position,
    type,
    providerName,
    resourceId='%s-%d' % [escalationChainName, position]
  )::
    escalation.new(resourceId)
    + escalation.spec.parameters.providerConfigRef.withName(providerName)
    + escalation.spec.parameters.forProvider.escalationChainRef.withName(escalationChainName)
    + escalation.spec.parameters.forProvider.withPosition(position)
    + escalation.spec.parameters.forProvider.withType(type),

  '#newNotifyOnCallFromSchedule': d.func.new(
    |||
      `newNotifyOnCallFromSchedule` creates an Escalation of type
      `noitfy_on_call_from_schedule`. `escalationChainName` is the resource
      name (`myescalationchain.metadata.name`) of the parent Escalation Chain.
      `position` is the position of the Escalation in the chain. `scheduleName`
      is the resource name of the Schedule to reference. `providerName` is the
      resource name (`myprovider.metadata.name`) of the Provider. `resourceId`
      defaults to `<escalationChainName>-<position>`.
    |||,
    [
      d.argument.new('escalationChainName', d.T.string),
      d.argument.new('position', d.T.number),
      d.argument.new('scheduleName', d.T.string),
      d.argument.new('providerName', d.T.string),
      d.argument.new(
        'resourceId',
        d.T.string,
        default='<escalationChainName>-<position>'
      ),
    ]
  ),
  newNotifyOnCallFromSchedule(
    escalationChainName,
    position,
    scheduleName,
    providerName,
    resourceId='%s-%d' % [escalationChainName, position]
  )::
    this.new(escalationChainName, position, 'notify_on_call_from_schedule', providerName, resourceId)
    + escalation.spec.parameters.forProvider.withNotifyOnCallFromScheduleRef(
      escalation.spec.parameters.forProvider.notifyOnCallFromScheduleRef.withName(scheduleName)
    ),

  '#newNotifyPersons': d.func.new(
    |||
      `newNotifyPersons` creates an Escalation of type `noitfy_persons`.
      `escalationChainName` is the resource name
      (`myescalationchain.metadata.name`) of the parent Escalation Chain.
      `position` is the position of the Escalation in the chain. `persons` is
      the array of persons (by email address) to notify. `providerName` is the
      resource name (`myprovider.metadata.name`) of the Provider. `resourceId`
      defaults to `<escalationChainName>-<position>`.
    |||,
    [
      d.argument.new('escalationChainName', d.T.string),
      d.argument.new('position', d.T.number),
      d.argument.new('persons', d.T.array),
      d.argument.new('providerName', d.T.string),
      d.argument.new(
        'resourceId',
        d.T.string,
        default='<escalationChainName>-<position>'
      ),
    ]
  ),
  newNotifyPersons(
    escalationChainName,
    position,
    persons,
    providerName,
    resourceId='%s-%d' % [escalationChainName, position]
  )::
    this.new(escalationChainName, position, 'notify_persons', providerName, resourceId)
    + escalation.spec.parameters.forProvider.withPersonsToNotify(persons),

  '#newWait': d.func.new(
    |||
      `newWait` creates an Escalation of type `wait`. `escalationChainName` is
      the resource name (`myescalationchain.metadata.name`) of the parent
      Escalation Chain. `position` is the position of the Escalation in the
      chain. `duration` is the duration in seconds to wait. `providerName` is
      the resource name (`myprovider.metadata.name`) of the Provider.
      `resourceId` defaults to `<escalationChainName>-<position>`.
    |||,
    [
      d.argument.new('escalationChainName', d.T.string),
      d.argument.new('position', d.T.number),
      d.argument.new('duration', d.T.number),
      d.argument.new('providerName', d.T.string),
      d.argument.new(
        'resourceId',
        d.T.string,
        default='<escalationChainName>-<position>'
      ),
    ]
  ),
  newWait(
    escalationChainName,
    position,
    duration,
    providerName,
    resourceId='%s-%d' % [escalationChainName, position]
  )::
    this.new(escalationChainName, position, 'wait', providerName, resourceId)
    + escalation.spec.parameters.forProvider.withDuration(duration),
}
