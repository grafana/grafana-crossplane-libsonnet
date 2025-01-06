# oncall



## Index

* [`obj escalationChain`](#obj-escalationchain)
  * [`fn new(name)`](#fn-escalationchainnew)
  * [`fn withId(id)`](#fn-escalationchainwithid)
  * [`fn withSteps(steps)`](#fn-escalationchainwithsteps)
  * [`fn withTeamId(teamId)`](#fn-escalationchainwithteamid)
  * [`obj step`](#obj-escalationchainstep)
    * [`fn notifyOnCallFromSchedule(schedule)`](#fn-escalationchainstepnotifyoncallfromschedule)
    * [`fn notifyPersons(persons)`](#fn-escalationchainstepnotifypersons)
    * [`fn wait(seconds)`](#fn-escalationchainstepwait)
* [`obj integration`](#obj-integration)
  * [`fn new(name, type, defaultChainName)`](#fn-integrationnew)
  * [`fn withId(id)`](#fn-integrationwithid)
  * [`fn withRoutes(routes)`](#fn-integrationwithroutes)
  * [`obj route`](#obj-integrationroute)
    * [`fn new(routingRegex)`](#fn-integrationroutenew)
    * [`fn withEscalationChain(escalationChainName)`](#fn-integrationroutewithescalationchain)
* [`obj schedule`](#obj-schedule)
  * [`obj calendar`](#obj-schedulecalendar)
    * [`fn new(name, shifts="{}")`](#fn-schedulecalendarnew)
    * [`fn withId(id)`](#fn-schedulecalendarwithid)
    * [`fn withShifts(shifts)`](#fn-schedulecalendarwithshifts)
    * [`obj shift`](#obj-schedulecalendarshift)
      * [`fn new(name, start, duration)`](#fn-schedulecalendarshiftnew)
      * [`fn withByDay(value)`](#fn-schedulecalendarshiftwithbyday)
      * [`fn withId(id)`](#fn-schedulecalendarshiftwithid)
      * [`fn withRollingUsers(frequency, users)`](#fn-schedulecalendarshiftwithrollingusers)
      * [`fn withStartRotationFromUserIndex(value)`](#fn-schedulecalendarshiftwithstartrotationfromuserindex)

## Fields

### obj escalationChain


#### fn escalationChain.new

```jsonnet
escalationChain.new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates an Escalation Chain. The `name` is a display-friendly string.
#### fn escalationChain.withId

```jsonnet
escalationChain.withId(id)
```

PARAMETERS:

* **id** (`string`)

`withId` sets the resource name for an Escalation Chain
#### fn escalationChain.withSteps

```jsonnet
escalationChain.withSteps(steps)
```

PARAMETERS:

* **steps** (`array`)

`withSteps` configures one or more Escalation resources as steps within
the calling Escalation Chain.

#### fn escalationChain.withTeamId

```jsonnet
escalationChain.withTeamId(teamId)
```

PARAMETERS:

* **teamId** (`string`)

`withTeamId` configures the Team ID on the Escalation Chain. `teamId`
should be the ID of the team as a string.

#### obj escalationChain.step


##### fn escalationChain.step.notifyOnCallFromSchedule

```jsonnet
escalationChain.step.notifyOnCallFromSchedule(schedule)
```

PARAMETERS:

* **schedule** (`string`)

`notifyOnCallFromSchedule` configures an Escalation step to notify
on-call persons from the given Schedule. `scheduleName` must be the
Schedule resource name.

##### fn escalationChain.step.notifyPersons

```jsonnet
escalationChain.step.notifyPersons(persons)
```

PARAMETERS:

* **persons** (`array`)

`notifyPersons` configures an Escalation step to notify a list of
persons.

##### fn escalationChain.step.wait

```jsonnet
escalationChain.step.wait(seconds)
```

PARAMETERS:

* **seconds** (`number`)

`wait` configures an Escalation step to wait for acknowledgement for
the given number of seconds before proceeding.

### obj integration


#### fn integration.new

```jsonnet
integration.new(name, type, defaultChainName)
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)
* **defaultChainName** (`string`)

`new` creates an Integration. The `name` is a display-friendly string.
`type` is the type of Integration. `defaultChainName` is the resource
name of the default Escalation Chain.

#### fn integration.withId

```jsonnet
integration.withId(id)
```

PARAMETERS:

* **id** (`string`)

`withId` sets the resource name for an Integration
#### fn integration.withRoutes

```jsonnet
integration.withRoutes(routes)
```

PARAMETERS:

* **routes** (`array`)

`withRoute` configures Route resources connecting this Integration with
Escalation Chains. `routes` is an array of Routes to be evaluated in
order. If they do not specify an Escalation Chain to route to, the
default chain for this Integration will be used.

#### obj integration.route


##### fn integration.route.new

```jsonnet
integration.route.new(routingRegex)
```

PARAMETERS:

* **routingRegex** (`string`)

`new` configures a Route with a given `routingRegex`.

##### fn integration.route.withEscalationChain

```jsonnet
integration.route.withEscalationChain(escalationChainName)
```

PARAMETERS:

* **escalationChainName** (`string`)

`withEscalationChain` configures a Route with a destination Escalation
Chain. `escalationChainName` is the resource name of the chain.

### obj schedule


#### obj schedule.calendar


##### fn schedule.calendar.new

```jsonnet
schedule.calendar.new(name, shifts="{}")
```

PARAMETERS:

* **name** (`string`)
* **shifts** (`object`)
   - default value: `"{}"`

`new` creates a Schedule with type `calendar`. It automatically
includes references to Shift objects which are members of its `shifts`
field. `shifts` is an object representing zero or more shifts.

Shifts are unordered, and so are supplied as an object to allow for
reuse. For example, a Primary/Secondary pair of Schedules could be
declared like:

    local calendar = grafanaplane.oncall.schedule.calendar,
    local onCallUsers = [['bob@example.com'], ['alice@example.com']],
    primary: calendar.new('Primary', [
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
    secondary: calendar.new('Secondary', [
      shift
      // replace the resource ID
      + calendar.shift.withId('secondary-' + shift.metadata.name)
      // start rotating from the second person
      + calendar.shift.withStartRotationFromUserIndex(1)
      for shift in std.objectKeysValues(self.primary.shifts)
    ]),

##### fn schedule.calendar.withId

```jsonnet
schedule.calendar.withId(id)
```

PARAMETERS:

* **id** (`string`)

`withId` sets the resource name for a Schedule
##### fn schedule.calendar.withShifts

```jsonnet
schedule.calendar.withShifts(shifts)
```

PARAMETERS:

* **shifts** (`array`)

`withShifts` sets an array of Shifts on a calendar-type Schedule.

##### obj schedule.calendar.shift


###### fn schedule.calendar.shift.new

```jsonnet
schedule.calendar.shift.new(name, start, duration)
```

PARAMETERS:

* **name** (`string`)
* **start** (`string`)
* **duration** (`number`)

`new` creates an OnCallShift, which can be used in Schedules of type
`calendar`. `name` is a display-friendly string. `start` is a datetime as
`yyyy-MM-dd'T'HH:mm:ss`, such as `“2020-09-05T08:00:00”`. `duration` is
the length of the shift in seconds.

###### fn schedule.calendar.shift.withByDay

```jsonnet
schedule.calendar.shift.withByDay(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
###### fn schedule.calendar.shift.withId

```jsonnet
schedule.calendar.shift.withId(id)
```

PARAMETERS:

* **id** (`string`)

`withId` sets the resource name for a Shift
###### fn schedule.calendar.shift.withRollingUsers

```jsonnet
schedule.calendar.shift.withRollingUsers(frequency, users)
```

PARAMETERS:

* **frequency** (`string`)
   - valid values: `"hourly"`, `"daily"`, `"weekly"`, `"monthly"`
* **users** (`array`)

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

###### fn schedule.calendar.shift.withStartRotationFromUserIndex

```jsonnet
schedule.calendar.shift.withStartRotationFromUserIndex(value)
```

PARAMETERS:

* **value** (`number`)

call rotation starts.
The index of the list of users in rolling_users, from which on-call rotation starts.