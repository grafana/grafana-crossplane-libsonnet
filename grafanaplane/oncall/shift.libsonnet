local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local shift = raw.oncall.v1alpha1.onCallShift;
local forProvider = shift.spec.parameters.forProvider;

{
  '#new':: d.func.new(
    |||
      `new` creates an OnCallShift, which can be used in Schedules of type
      `calendar`. `name` is a display-friendly string. `start` is a datetime as
      `yyyy-MM-dd'T'HH:mm:ss`, such as `“2020-09-05T08:00:00”`. `duration` is
      the length of the shift in seconds.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('start', d.T.string),
      d.argument.new('duration', d.T.number),
    ]
  ),
  new(name, start, duration)::
    shift.new(xtd.ascii.stringToRFC1123(name))
    + forProvider.withName(name)
    + forProvider.withStart(start)
    + forProvider.withDuration(duration)
    + forProvider.withInterval(1)  // default value upstream, still required by crossplane
    + forProvider.withWeekStart('SU')  // default value upstream, still required by crossplane
  ,

  '#withId':: d.func.new(
    '`withId` sets the resource name for a Shift',
    [d.argument.new('id', d.T.string)]
  ),
  withId(id):: shift.metadata.withName(id),

  '#withRollingUsers':: d.func.new(
    |||
      `withRollingUsers` sets an OnCallShift to type `rolling_users` and
      configures required fields. `frequency` is required for this shift type.

      `users` are given as a list of lists of strings. The inner lists are
      groups of users, represented by email address, who will be on a shift
      together.

      For example, if

      ```jsonnet
      frequency: 'daily',
      users: [['alex@example.com', 'bob@example.com'], ['alice@example.com']]
      ```

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
  '#withInterval':: forProvider['#withInterval'],
  withInterval:: forProvider.withInterval,
  '#withStartRotationFromUserIndex':: forProvider['#withStartRotationFromUserIndex'],
  withStartRotationFromUserIndex:: forProvider.withStartRotationFromUserIndex,
  '#withByDay':: forProvider['#withByDay'],
  withByDay:: forProvider.withByDay,
  '#withFrequency':: forProvider['#withFrequency'],
  withFrequency:: forProvider.withFrequency,
  '#withWeekStart':: forProvider['#withWeekStart'],
  withWeekStart:: forProvider.withWeekStart,
}
