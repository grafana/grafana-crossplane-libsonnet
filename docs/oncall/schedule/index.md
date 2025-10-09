# oncall.schedule



## Subpackages

* [calendar.shift](calendar/shift.md)

## Index

* [`obj calendar`](#obj-calendar)
  * [`fn new(name, namespace)`](#fn-calendarnew)
  * [`fn withClaimName(claimName)`](#fn-calendarwithclaimname)
  * [`fn withShifts(shifts)`](#fn-calendarwithshifts)
  * [`fn withTimeZone(value)`](#fn-calendarwithtimezone)

## Fields

### obj calendar


#### fn calendar.new

```jsonnet
calendar.new(name, namespace)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)

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

#### fn calendar.withClaimName

```jsonnet
calendar.withClaimName(claimName)
```

PARAMETERS:

* **claimName** (`string`)

`withClaimName` sets the resource name for a Schedule
#### fn calendar.withShifts

```jsonnet
calendar.withShifts(shifts)
```

PARAMETERS:

* **shifts** (`array`)

`withShifts` sets an array of Shifts on a calendar-type Schedule.

#### fn calendar.withTimeZone

```jsonnet
calendar.withTimeZone(value)
```

PARAMETERS:

* **value** (`string`)

(String) The schedule's time zone.
The schedule's time zone.