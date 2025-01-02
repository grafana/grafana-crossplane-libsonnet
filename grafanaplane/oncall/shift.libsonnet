local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local shift = raw.oncall.v1alpha1.onCallShift;
local forProvider = shift.spec.parameters.forProvider;

{
  '#new':: d.func.new(
    |||
      `new` creates an OnCallShift. The `name` is a display-friendly string,
      and `id` defaults to a slug-ified version of it.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('resourceId', d.T.string, default='rfc1123(name)'),
    ]
  ),
  new(name, id=xtd.ascii.stringToRFC1123(name))::
    shift.new(id)
    + forProvider.withName(name),

  '#withRollingUsers':: d.func.new(
    |||
      `withRollingUsers` sets an OnCallShift to type `rolling_users` and
      configures required fields. `users` must be an array *of arrays*
      of strings referring to users by email address. `frequency` is required
      for this shift type.
    |||,
    [
      d.argument.new('frequency', d.T.string, enums=['hourly', 'daily', 'weekly', 'monthly']),
      d.argument.new('users', d.T.array),
    ]
  ),
  withRollingUsers(frequency, users)::
    forProvider.withType('rolling_users')
    + forProvider.withRollingUsers(users)
    + forProvider.withFrequency(frequency),

  // Expose some generated functions here.
  '#withStart':: forProvider['#withStart'],
  withStart:: forProvider.withStart,
  '#withStartRotationFromUserIndex':: forProvider['#withStartRotationFromUserIndex'],
  withStartRotationFromUserIndex:: forProvider.withStartRotationFromUserIndex,
  '#withByDay':: forProvider['#withByDay'],
  withByDay:: forProvider.withByDay,
}
