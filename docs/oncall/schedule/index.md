# oncall.schedule



## Subpackages

* [calendar.shift](calendar/shift.md)

## Index

* [`obj calendar`](#obj-calendar)
  * [`fn new(name, namespace)`](#fn-calendarnew)
  * [`fn withClaimName(claimName)`](#fn-calendarwithclaimname)
  * [`fn withOverridesCalendar(value)`](#fn-calendarwithoverridescalendar)
  * [`fn withShifts(shifts)`](#fn-calendarwithshifts)
  * [`fn withSlackChannelId(value)`](#fn-calendarwithslackchannelid)
  * [`fn withSlackUserGroup(value)`](#fn-calendarwithslackusergroup)
  * [`fn withTeamId(teamId)`](#fn-calendarwithteamid)
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
#### fn calendar.withOverridesCalendar

```jsonnet
calendar.withOverridesCalendar(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of external iCal calendar which override primary events.
The URL of external iCal calendar which override primary events.
#### fn calendar.withShifts

```jsonnet
calendar.withShifts(shifts)
```

PARAMETERS:

* **shifts** (`array`)

`withShifts` sets an array of Shifts on a calendar-type Schedule.

#### fn calendar.withSlackChannelId

```jsonnet
calendar.withSlackChannelId(value)
```

PARAMETERS:

* **value** (`string`)

(String) Slack channel id. Reminder about schedule shifts will be directed to this channel in Slack.
Slack channel id. Reminder about schedule shifts will be directed to this channel in Slack.
#### fn calendar.withSlackUserGroup

```jsonnet
calendar.withSlackUserGroup(value)
```

PARAMETERS:

* **value** (`string`)

call users change.
Slack user group id. Members of user group will be updated when on-call users change.
#### fn calendar.withTeamId

```jsonnet
calendar.withTeamId(teamId)
```

PARAMETERS:

* **teamId** (`string`)

`withTeamId` configures the Team ID on the schedule and shifts.

Parameters:
  - `teamId` should be the ID of the team as a string.

#### fn calendar.withTimeZone

```jsonnet
calendar.withTimeZone(value)
```

PARAMETERS:

* **value** (`string`)

(String) The schedule's time zone.
The schedule's time zone.