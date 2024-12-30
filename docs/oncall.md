# oncall



## Index

* [`obj escalation`](#obj-escalation)
  * [`fn new(escalationChainName, position, type, providerName, resourceId="<escalationChainName>-<position>")`](#fn-escalationnew)
  * [`fn newNotifyOnCallFromSchedule(escalationChainName, position, scheduleName, providerName, resourceId="<escalationChainName>-<position>")`](#fn-escalationnewnotifyoncallfromschedule)
  * [`fn newNotifyPersons(escalationChainName, position, persons, providerName, resourceId="<escalationChainName>-<position>")`](#fn-escalationnewnotifypersons)
  * [`fn newWait(escalationChainName, position, duration, providerName, resourceId="<escalationChainName>-<position>")`](#fn-escalationnewwait)
* [`obj escalationChain`](#obj-escalationchain)
  * [`fn new(name, providerName, resourceId="rfc1123(name)")`](#fn-escalationchainnew)
* [`obj integration`](#obj-integration)
  * [`fn new(name, type, providerName, resourceId="rfc1123(name)")`](#fn-integrationnew)
  * [`fn withDefaultRoute(name)`](#fn-integrationwithdefaultroute)
* [`obj route`](#obj-route)
  * [`fn new(id, integrationName, escalationChainName, providerName, routingRegex="null")`](#fn-routenew)
* [`obj schedule`](#obj-schedule)
  * [`fn new(name, type, providerName, resourceId="rfc1123(name)")`](#fn-schedulenew)
  * [`fn newCalendar(name, providerName, shiftNames="[]", resourceId="rfc1123(name)")`](#fn-schedulenewcalendar)
* [`obj shift`](#obj-shift)
  * [`fn new(name, type, start, providerName, resourceId="rfc1123(name)")`](#fn-shiftnew)
  * [`fn newRollingUsers(name, rollingUsers, start, duration, interval, providerName, byDay="null", byMonth="null", byMonthDay="null", resourceId="rfc1123(name)")`](#fn-shiftnewrollingusers)
  * [`fn withByDay(value)`](#fn-shiftwithbyday)
  * [`fn withByDayMixin(value)`](#fn-shiftwithbydaymixin)
  * [`fn withByMonth(value)`](#fn-shiftwithbymonth)
  * [`fn withByMonthMixin(value)`](#fn-shiftwithbymonthmixin)
  * [`fn withByMonthday(value)`](#fn-shiftwithbymonthday)
  * [`fn withByMonthdayMixin(value)`](#fn-shiftwithbymonthdaymixin)
  * [`fn withDuration(value)`](#fn-shiftwithduration)
  * [`fn withFrequency(value)`](#fn-shiftwithfrequency)
  * [`fn withInterval(value)`](#fn-shiftwithinterval)
  * [`fn withLevel(value)`](#fn-shiftwithlevel)
  * [`fn withName(value)`](#fn-shiftwithname)
  * [`fn withRollingUsers(value)`](#fn-shiftwithrollingusers)
  * [`fn withRollingUsersMixin(value)`](#fn-shiftwithrollingusersmixin)
  * [`fn withStart(value)`](#fn-shiftwithstart)
  * [`fn withStartRotationFromUserIndex(value)`](#fn-shiftwithstartrotationfromuserindex)
  * [`fn withTeamId(value)`](#fn-shiftwithteamid)
  * [`fn withTimeZone(value)`](#fn-shiftwithtimezone)
  * [`fn withType(value)`](#fn-shiftwithtype)
  * [`fn withUntil(value)`](#fn-shiftwithuntil)
  * [`fn withUsers(value)`](#fn-shiftwithusers)
  * [`fn withUsersMixin(value)`](#fn-shiftwithusersmixin)
  * [`fn withWeekStart(value)`](#fn-shiftwithweekstart)

## Fields

### obj escalation


#### fn escalation.new

```jsonnet
escalation.new(escalationChainName, position, type, providerName, resourceId="<escalationChainName>-<position>")
```

PARAMETERS:

* **escalationChainName** (`string`)
* **position** (`number`)
* **type** (`string`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"<escalationChainName>-<position>"`

`new` creates an Escalation. `escalationChainName` is the resource name
(`myescalationchain.metadata.name`) of the parent Escalation Chain.
`position` is the position of the Escalation in the chain. `type` is the
Escalation type. `providerName` is the resource name
(`myprovider.metadata.name`) of the Provider. `resourceId` defaults to
`<escalationChainName>-<position>`.

#### fn escalation.newNotifyOnCallFromSchedule

```jsonnet
escalation.newNotifyOnCallFromSchedule(escalationChainName, position, scheduleName, providerName, resourceId="<escalationChainName>-<position>")
```

PARAMETERS:

* **escalationChainName** (`string`)
* **position** (`number`)
* **scheduleName** (`string`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"<escalationChainName>-<position>"`

`newNotifyOnCallFromSchedule` creates an Escalation of type
`noitfy_on_call_from_schedule`. `escalationChainName` is the resource
name (`myescalationchain.metadata.name`) of the parent Escalation Chain.
`position` is the position of the Escalation in the chain. `scheduleName`
is the resource name of the Schedule to reference. `providerName` is the
resource name (`myprovider.metadata.name`) of the Provider. `resourceId`
defaults to `<escalationChainName>-<position>`.

#### fn escalation.newNotifyPersons

```jsonnet
escalation.newNotifyPersons(escalationChainName, position, persons, providerName, resourceId="<escalationChainName>-<position>")
```

PARAMETERS:

* **escalationChainName** (`string`)
* **position** (`number`)
* **persons** (`array`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"<escalationChainName>-<position>"`

`newNotifyPersons` creates an Escalation of type `noitfy_persons`.
`escalationChainName` is the resource name
(`myescalationchain.metadata.name`) of the parent Escalation Chain.
`position` is the position of the Escalation in the chain. `persons` is
the array of persons (by email address) to notify. `providerName` is the
resource name (`myprovider.metadata.name`) of the Provider. `resourceId`
defaults to `<escalationChainName>-<position>`.

#### fn escalation.newWait

```jsonnet
escalation.newWait(escalationChainName, position, duration, providerName, resourceId="<escalationChainName>-<position>")
```

PARAMETERS:

* **escalationChainName** (`string`)
* **position** (`number`)
* **duration** (`number`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"<escalationChainName>-<position>"`

`newWait` creates an Escalation of type `wait`. `escalationChainName` is
the resource name (`myescalationchain.metadata.name`) of the parent
Escalation Chain. `position` is the position of the Escalation in the
chain. `duration` is the duration in seconds to wait. `providerName` is
the resource name (`myprovider.metadata.name`) of the Provider.
`resourceId` defaults to `<escalationChainName>-<position>`.

### obj escalationChain


#### fn escalationChain.new

```jsonnet
escalationChain.new(name, providerName, resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates an Escalation Chain. The `name` is a display-friendly
string, and `resourceId` defaults to a slug-ified version of it.
`providerName` is the resource name (`myprovider.metadata.name`) of
the Provider.

### obj integration


#### fn integration.new

```jsonnet
integration.new(name, type, providerName, resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates an Integration. The `name` is a display-friendly
string, and `resourceId` defaults to a slug-ified version of it.
`type` is the type of Integration. `providerName` is the resource
name (`myprovider.metadata.name`) of the Provider.

#### fn integration.withDefaultRoute

```jsonnet
integration.withDefaultRoute(name)
```

PARAMETERS:

* **name** (`string`)

`withDefaultRoute` configures the default route using an Escalation
Chain object's name.

### obj route


#### fn route.new

```jsonnet
route.new(id, integrationName, escalationChainName, providerName, routingRegex="null")
```

PARAMETERS:

* **id** (`string`)
* **integrationName** (`string`)
* **escalationChainName** (`string`)
* **providerName** (`string`)
* **routingRegex** (`string`)
   - default value: `"null"`

`new` creates a Route. `id` is the resource name. `integrationName`
is the resource name of the Integration to reference.
`escalationChainName` is the resource name of the Escalation Chain to
reference. `routingRegex` is configured as a routing regex, if
supplied. `providerName` is the resource name
(`myprovider.metadata.name`) of the Provider.

### obj schedule


#### fn schedule.new

```jsonnet
schedule.new(name, type, providerName, resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)
   - valid values: `"ical"`, `"calendar"`
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates a Schedule. The `name` is a display-friendly
string, and `resourceId` defaults to a slug-ified version of it.
`type` is the type of Schedule. `providerName` is the resource
name (`myprovider.metadata.name`) of the Provider.

#### fn schedule.newCalendar

```jsonnet
schedule.newCalendar(name, providerName, shiftNames="[]", resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **providerName** (`string`)
* **shiftNames** (`array`)
   - default value: `"[]"`
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`newCalendar` creates a Schedule with type `calendar`. The `name` is a
display-friendly string, and `resourceId` defaults to a slug-ified
version of it. `providerName` is the resource name
(`myprovider.metadata.name`) of the Provider. If supplied, `shiftNames`
are supplied to `withShiftsRef` to associate an array of shifts by
resource name.

### obj shift


#### fn shift.new

```jsonnet
shift.new(name, type, start, providerName, resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)
* **start** (`string`)
* **providerName** (`string`)
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates an OnCallShift. The `name` is a display-friendly string,
and `resourceId` defaults to a slug-ified version of it. `type` is the
type of Shift. `start` is the start time of the shift in
`yyyy-MM-dd'T'HH:mm:ss` format. `providerName` is the resource name
(`myprovider.metadata.name`) of the Provider.

#### fn shift.newRollingUsers

```jsonnet
shift.newRollingUsers(name, rollingUsers, start, duration, interval, providerName, byDay="null", byMonth="null", byMonthDay="null", resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **rollingUsers** (`array`)
* **start** (`string`)
* **duration** (`number`)
* **interval** (`number`)
* **providerName** (`string`)
* **byDay** (`array`)
   - default value: `"null"`
* **byMonth** (`array`)
   - default value: `"null"`
* **byMonthDay** (`array`)
   - default value: `"null"`
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`newRollingUsers` creates an OnCallShift of `rolling_users` type. The
`name` is a display-friendly string, and `resourceId` defaults to a
slug-ified version of it. `rollingUsers` is the list of users as an array
of strings. `start` is the start time of the shift in
`yyyy-MM-dd'T'HH:mm:ss` format. `duration` is the length of each shift in
seconds. `interval` is the interval at which the recurrence rule repeats.
`providerName` is the resource name (`myprovider.metadata.name`) of the
Provider. `byDay` is a list of days in iCal format on which the shift
takes place. `byMonth` is a list of months in which the shift takes
place. `byMonthDay` is a list of month days on which the shift takes
place. If any of `byDay`, `byMonth`, or `byMonthDay` is `null` (default),
it is omitted.

#### fn shift.withByDay

```jsonnet
shift.withByDay(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
#### fn shift.withByDayMixin

```jsonnet
shift.withByDayMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
This parameter takes a list of days in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
#### fn shift.withByMonth

```jsonnet
shift.withByMonth(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) This parameter takes a list of months. Valid values are 1 to 12
This parameter takes a list of months. Valid values are 1 to 12
#### fn shift.withByMonthMixin

```jsonnet
shift.withByMonthMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) This parameter takes a list of months. Valid values are 1 to 12
This parameter takes a list of months. Valid values are 1 to 12
#### fn shift.withByMonthday

```jsonnet
shift.withByMonthday(value)
```

PARAMETERS:

* **value** (`array`)

31 to -1
This parameter takes a list of days of the month.  Valid values are 1 to 31 or -31 to -1
#### fn shift.withByMonthdayMixin

```jsonnet
shift.withByMonthdayMixin(value)
```

PARAMETERS:

* **value** (`array`)

31 to -1
This parameter takes a list of days of the month.  Valid values are 1 to 31 or -31 to -1
#### fn shift.withDuration

```jsonnet
shift.withDuration(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The duration of the event.
The duration of the event.
#### fn shift.withFrequency

```jsonnet
shift.withFrequency(value)
```

PARAMETERS:

* **value** (`string`)

(String) The frequency of the event. Can be hourly, daily, weekly, monthly
The frequency of the event. Can be hourly, daily, weekly, monthly
#### fn shift.withInterval

```jsonnet
shift.withInterval(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The positive integer representing at which intervals the recurrence rule repeats.
The positive integer representing at which intervals the recurrence rule repeats.
#### fn shift.withLevel

```jsonnet
shift.withLevel(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The priority level. The higher the value, the higher the priority.
The priority level. The higher the value, the higher the priority.
#### fn shift.withName

```jsonnet
shift.withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The shift's name.
The shift's name.
#### fn shift.withRollingUsers

```jsonnet
shift.withRollingUsers(value)
```

PARAMETERS:

* **value** (`array`)

call users (for rolling_users event type)
The list of lists with on-call users (for rolling_users event type)
#### fn shift.withRollingUsersMixin

```jsonnet
shift.withRollingUsersMixin(value)
```

PARAMETERS:

* **value** (`array`)

call users (for rolling_users event type)
The list of lists with on-call users (for rolling_users event type)
#### fn shift.withStart

```jsonnet
shift.withStart(value)
```

PARAMETERS:

* **value** (`string`)

call shift. This parameter takes a date format as yyyy-MM-dd'T'HH:mm:ss (for example "2020-09-05T08:00:00")
The start time of the on-call shift. This parameter takes a date format as yyyy-MM-dd'T'HH:mm:ss (for example "2020-09-05T08:00:00")
#### fn shift.withStartRotationFromUserIndex

```jsonnet
shift.withStartRotationFromUserIndex(value)
```

PARAMETERS:

* **value** (`number`)

call rotation starts.
The index of the list of users in rolling_users, from which on-call rotation starts.
#### fn shift.withTeamId

```jsonnet
shift.withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the grafana_oncall_team datasource.
The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the `grafana_oncall_team` datasource.
#### fn shift.withTimeZone

```jsonnet
shift.withTimeZone(value)
```

PARAMETERS:

* **value** (`string`)

(String) The shift's timezone.  Overrides schedule's timezone.
The shift's timezone.  Overrides schedule's timezone.
#### fn shift.withType

```jsonnet
shift.withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The shift's type. Can be rolling_users, recurrent_event, single_event
The shift's type. Can be rolling_users, recurrent_event, single_event
#### fn shift.withUntil

```jsonnet
shift.withUntil(value)
```

PARAMETERS:

* **value** (`string`)

call shifts (endless if null). This parameter takes a date format as yyyy-MM-dd'T'HH:mm:ss (for example "2020-09-05T08:00:00")
The end time of recurrent on-call shifts (endless if null). This parameter takes a date format as yyyy-MM-dd'T'HH:mm:ss (for example "2020-09-05T08:00:00")
#### fn shift.withUsers

```jsonnet
shift.withUsers(value)
```

PARAMETERS:

* **value** (`array`)

call users (for single_event and recurrent_event event type).
The list of on-call users (for single_event and recurrent_event event type).
#### fn shift.withUsersMixin

```jsonnet
shift.withUsersMixin(value)
```

PARAMETERS:

* **value** (`array`)

call users (for single_event and recurrent_event event type).
The list of on-call users (for single_event and recurrent_event event type).
#### fn shift.withWeekStart

```jsonnet
shift.withWeekStart(value)
```

PARAMETERS:

* **value** (`string`)

(String) Start day of the week in iCal format. Can be MO, TU, WE, TH, FR, SA, SU
Start day of the week in iCal format. Can be MO, TU, WE, TH, FR, SA, SU