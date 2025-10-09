# oncall.schedule.calendar.shift



## Index

* [`fn new(name, start, duration=43200)`](#fn-new)
* [`fn withByDay(value)`](#fn-withbyday)
* [`fn withClaimName(claimName)`](#fn-withclaimname)
* [`fn withFrequency(value)`](#fn-withfrequency)
* [`fn withInterval(value)`](#fn-withinterval)
* [`fn withRollingUsers(frequency, users)`](#fn-withrollingusers)
* [`fn withStartRotationFromUserIndex(value)`](#fn-withstartrotationfromuserindex)
* [`fn withWeekStart(value)`](#fn-withweekstart)

## Fields

### fn new

```jsonnet
new(name, start, duration=43200)
```

PARAMETERS:

* **name** (`string`)
* **start** (`string`)
* **duration** (`number`)
   - default value: `43200`

`new` creates an OnCallShift, which can be used in Schedules of type
`calendar`.
Parameters:
  - `name` is a display-friendly string.
  - `start` is a datetime as `yyyy-MM-dd'T'HH:mm:ss`, such as `“2020-09-05T08:00:00”`.
  - `duration` is the length of the shift in seconds (defaults to 12h).

### fn withByDay

```jsonnet
withByDay(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
### fn withClaimName

```jsonnet
withClaimName(claimName)
```

PARAMETERS:

* **claimName** (`string`)

`withClaimName` sets the resource name for a Shift
### fn withFrequency

```jsonnet
withFrequency(value)
```

PARAMETERS:

* **value** (`string`)

(String) The frequency of the event. Can be hourly, daily, weekly, monthly
The frequency of the event. Can be hourly, daily, weekly, monthly
### fn withInterval

```jsonnet
withInterval(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The positive integer representing at which intervals the recurrence rule repeats.
The positive integer representing at which intervals the recurrence rule repeats.
### fn withRollingUsers

```jsonnet
withRollingUsers(frequency, users)
```

PARAMETERS:

* **frequency** (`string`)
   - valid values: `"hourly"`, `"daily"`, `"weekly"`, `"monthly"`
* **users** (`array`)

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

### fn withStartRotationFromUserIndex

```jsonnet
withStartRotationFromUserIndex(value)
```

PARAMETERS:

* **value** (`number`)

call rotation starts.
The index of the list of users in rolling_users, from which on-call rotation starts.
### fn withWeekStart

```jsonnet
withWeekStart(value)
```

PARAMETERS:

* **value** (`string`)

(String) Start day of the week in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
Start day of the week in iCal format. Can be MO, TU, WE, TH, FR, SA, SU