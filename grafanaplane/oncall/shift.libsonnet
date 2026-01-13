local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';
local shift = raw.oncall.v1alpha1.onCallShift;
local forProvider = shift.spec.parameters.forProvider;

{
  '#': d.package.newSub('oncall.schedule.calendar.shift', ''),

  '#new':: d.func.new(
    |||
      `new` creates an OnCallShift, which can be used in Schedules of type
      `calendar`.
      Parameters:
        - `name` is a display-friendly string.
        - `start` is a datetime as `yyyy-MM-dd'T'HH:mm:ss`, such as `“2020-09-05T08:00:00”`.
        - `duration` is the length of the shift in seconds (defaults to 12h).
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('start', d.T.string),
      d.argument.new('duration', d.T.number, default=(60 * 60 * 12)),
    ]
  ),
  new(name, start, duration=(60 * 60 * 12))::
    shift.new(xtd.ascii.stringToRFC1123(name))
    + forProvider.withName(name)
    + forProvider.withStart(start)
    + forProvider.withDuration(duration)
    // default values from upstream, required by crossplane
    + forProvider.withInterval(1)
    + forProvider.withWeekStart('SU')
  ,

  '#withClaimName':: d.func.new(
    '`withClaimName` sets the resource name for a Shift',
    [d.argument.new('claimName', d.T.string)]
  ),
  withClaimName(claimName):: shift.metadata.withName(claimName),

  '#withRollingUsers':: d.func.new(
    |||
      `withRollingUsers` sets an OnCallShift to type `rolling_users` and
      configures required fields. `frequency` is required for this shift type.

      `users` are given as a array of arrays with strings. The inner arrays are
      groups of users, represented by oncall user ids, who will be on a shift
      together.

      For example, if

      ```jsonnet
      {
        frequency: 'daily',
        users: [
          ['UR44M981D6HJ', 'R44M981GD6HD'],  // Alex & Bob
          ['RM98144GD6HD'],  // Alice
        ],
      }
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
    assert std.isArray(users)
           : 'Users is not an array!\n' + self['#withRollingUsers']['function'].help;
    assert std.all([std.isArray(item) for item in users])
           : 'Users is not an array of arrays!\n' + self['#withRollingUsers']['function'].help;
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
  '#withUntil':: forProvider['#withUntil'],
  withUntil:: forProvider.withUntil,
}
