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
      configures required fields. `frequency` is required for this shift type.

      `users` are given as a list of lists of strings. The inner lists are
      groups of users, represented by email address, who will be on a shift
      together.

      For example, if

          frequency: 'daily',
          users: [['alex@example.com', 'bob@example.com'], ['alice@example.com']]

      then on the first day, Alex and Bob would both be notified. On the next
      day, only Alice would be. After that, Alex and Bob again, then Alice, and
      so on. *Reproduced from the [HTTP API docs][].*

      A common pitfall is to inadvertently supply only a list of strings. This
      function will raise an error in that case.

      [HTTP API docs]: https://grafana.com/docs/oncall/latest/oncall-api-reference/on_call_shifts/
    |||,
    [
      d.argument.new('frequency', d.T.string, enums=['hourly', 'daily', 'weekly', 'monthly']),
      d.argument.new('users', d.T.array),
    ]
  ),
  withRollingUsers(frequency, users)::
    assert std.isArray(users) : 'Users is not an array!';
    assert std.all([std.isArray(item) for item in users])
           : 'Users is not an array of arrays!';
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
