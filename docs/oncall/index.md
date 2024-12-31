# oncall



## Subpackages

* [integration.defaultRoute](integration/defaultRoute/index.md)
* [integration.templates](integration/templates/index.md)
* [schedule.shiftsRef](schedule/shiftsRef.md)
* [schedule.slack](schedule/slack.md)

## Index

* [`obj escalationChain`](#obj-escalationchain)
  * [`fn new(name, id="rfc1123(name)")`](#fn-escalationchainnew)
  * [`fn withName(value)`](#fn-escalationchainwithname)
  * [`fn withSteps()`](#fn-escalationchainwithsteps)
  * [`fn withTeamId(value)`](#fn-escalationchainwithteamid)
  * [`obj step`](#obj-escalationchainstep)
    * [`fn notifyOnCallFromSchedule(schedule)`](#fn-escalationchainstepnotifyoncallfromschedule)
    * [`fn notifyPersons(persons)`](#fn-escalationchainstepnotifypersons)
    * [`fn wait(seconds)`](#fn-escalationchainstepwait)
* [`obj integration`](#obj-integration)
  * [`fn new(name, type, id="rfc1123(name)")`](#fn-integrationnew)
  * [`fn withDefaultChain(escalationChain)`](#fn-integrationwithdefaultchain)
  * [`fn withDefaultRoute(value)`](#fn-integrationwithdefaultroute)
  * [`fn withDefaultRouteMixin(value)`](#fn-integrationwithdefaultroutemixin)
  * [`fn withName(value)`](#fn-integrationwithname)
  * [`fn withRoutes(routes)`](#fn-integrationwithroutes)
  * [`fn withTeamId(value)`](#fn-integrationwithteamid)
  * [`fn withTemplates(value)`](#fn-integrationwithtemplates)
  * [`fn withTemplatesMixin(value)`](#fn-integrationwithtemplatesmixin)
  * [`fn withType(value)`](#fn-integrationwithtype)
  * [`obj route`](#obj-integrationroute)
    * [`fn chain(name)`](#fn-integrationroutechain)
    * [`fn withRoutingRegex(regex)`](#fn-integrationroutewithroutingregex)
* [`obj schedule`](#obj-schedule)
  * [`fn new(name, type, providerName, resourceId="rfc1123(name)")`](#fn-schedulenew)
  * [`fn withEnableWebOverrides(value=true)`](#fn-schedulewithenableweboverrides)
  * [`fn withIcalUrlOverrides(value)`](#fn-schedulewithicalurloverrides)
  * [`fn withIcalUrlPrimary(value)`](#fn-schedulewithicalurlprimary)
  * [`fn withName(value)`](#fn-schedulewithname)
  * [`fn withShifts(shifts="null")`](#fn-schedulewithshifts)
  * [`fn withShiftsMixin(value)`](#fn-schedulewithshiftsmixin)
  * [`fn withShiftsRef(value)`](#fn-schedulewithshiftsref)
  * [`fn withShiftsRefMixin(value)`](#fn-schedulewithshiftsrefmixin)
  * [`fn withShiftsSelector(value)`](#fn-schedulewithshiftsselector)
  * [`fn withShiftsSelectorMixin(value)`](#fn-schedulewithshiftsselectormixin)
  * [`fn withSlack(value)`](#fn-schedulewithslack)
  * [`fn withSlackMixin(value)`](#fn-schedulewithslackmixin)
  * [`fn withTeamId(value)`](#fn-schedulewithteamid)
  * [`fn withTimeZone(value)`](#fn-schedulewithtimezone)
  * [`fn withType(value)`](#fn-schedulewithtype)
  * [`obj shiftsSelector`](#obj-scheduleshiftsselector)
    * [`fn withMatchControllerRef(value=true)`](#fn-scheduleshiftsselectorwithmatchcontrollerref)
    * [`fn withMatchLabels(value)`](#fn-scheduleshiftsselectorwithmatchlabels)
    * [`fn withMatchLabelsMixin(value)`](#fn-scheduleshiftsselectorwithmatchlabelsmixin)
    * [`fn withPolicy(value)`](#fn-scheduleshiftsselectorwithpolicy)
    * [`fn withPolicyMixin(value)`](#fn-scheduleshiftsselectorwithpolicymixin)
    * [`obj policy`](#obj-scheduleshiftsselectorpolicy)
      * [`fn withResolution(value="Required")`](#fn-scheduleshiftsselectorpolicywithresolution)
      * [`fn withResolve(value)`](#fn-scheduleshiftsselectorpolicywithresolve)
* [`obj shift`](#obj-shift)
  * [`fn new(name, resourceId="rfc1123(name)")`](#fn-shiftnew)
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
  * [`fn withRollingUsers(frequency, users)`](#fn-shiftwithrollingusers)
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

### obj escalationChain


#### fn escalationChain.new

```jsonnet
escalationChain.new(name, id="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **id** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates an Escalation Chain. The `name` is a display-friendly
string, and `id` defaults to a slug-ified version of it.

#### fn escalationChain.withName

```jsonnet
escalationChain.withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the escalation chain.
The name of the escalation chain.
#### fn escalationChain.withSteps

```jsonnet
escalationChain.withSteps()
```


`withSteps` configures one or more Escalation resources as steps within
the calling Escalation Chain.

#### fn escalationChain.withTeamId

```jsonnet
escalationChain.withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the grafana_oncall_team datasource.
The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the `grafana_oncall_team` datasource.
#### obj escalationChain.step


##### fn escalationChain.step.notifyOnCallFromSchedule

```jsonnet
escalationChain.step.notifyOnCallFromSchedule(schedule)
```

PARAMETERS:

* **schedule** (`string|object`)

`notifyOnCallFromSchedule` configures an Escalation step to notify
on-call persons from the given Schedule. `schedule` may be either a
Schedule resource name or a manifest.

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
integration.new(name, type, id="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)
* **id** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates an Integration. The `name` is a display-friendly string,
and `id` defaults to a slug-ified version of it. `type` is the type of
Integration.

#### fn integration.withDefaultChain

```jsonnet
integration.withDefaultChain(escalationChain)
```

PARAMETERS:

* **escalationChain** (`string`)

`withDefaulChain` configures the default route of an Integration to use
an Escalation Chain. `escalationChain` is the resource name or manifest
of the desired Escalation Chain.

#### fn integration.withDefaultRoute

```jsonnet
integration.withDefaultRoute(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1, Max: 1) The Default route for all alerts from the given integration (see below for nested schema)
The Default route for all alerts from the given integration
#### fn integration.withDefaultRouteMixin

```jsonnet
integration.withDefaultRouteMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1, Max: 1) The Default route for all alerts from the given integration (see below for nested schema)
The Default route for all alerts from the given integration
#### fn integration.withName

```jsonnet
integration.withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the service integration.
The name of the service integration.
#### fn integration.withRoutes

```jsonnet
integration.withRoutes(routes)
```

PARAMETERS:

* **routes** (`object`)

`withRoute` configures Route resources connecting this Integration with
Escalation Chains.

#### fn integration.withTeamId

```jsonnet
integration.withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the grafana_oncall_team datasource.
The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the `grafana_oncall_team` datasource.
#### fn integration.withTemplates

```jsonnet
integration.withTemplates(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Max: 1) Jinja2 templates for Alert payload. An empty templates block will be ignored. (see below for nested schema)
Jinja2 templates for Alert payload. An empty templates block will be ignored.
#### fn integration.withTemplatesMixin

```jsonnet
integration.withTemplatesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Max: 1) Jinja2 templates for Alert payload. An empty templates block will be ignored. (see below for nested schema)
Jinja2 templates for Alert payload. An empty templates block will be ignored.
#### fn integration.withType

```jsonnet
integration.withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The type of integration. Can be grafana, grafana_alerting, webhook, alertmanager, kapacitor, fabric, newrelic, datadog, pagerduty, pingdom, elastalert, amazon_sns, curler, sentry, formatted_webhook, heartbeat, demo, manual, stackdriver, uptimerobot, sentry_platform, zabbix, prtg, slack_channel, inbound_email, direct_paging, jira.
The type of integration. Can be grafana, grafana_alerting, webhook, alertmanager, kapacitor, fabric, newrelic, datadog, pagerduty, pingdom, elastalert, amazon_sns, curler, sentry, formatted_webhook, heartbeat, demo, manual, stackdriver, uptimerobot, sentry_platform, zabbix, prtg, slack_channel, inbound_email, direct_paging, jira.
#### obj integration.route


##### fn integration.route.chain

```jsonnet
integration.route.chain(name)
```

PARAMETERS:

* **name** (`string`)

`chain` configures a Route to reference an Escalation Chain.

##### fn integration.route.withRoutingRegex

```jsonnet
integration.route.withRoutingRegex(regex)
```

PARAMETERS:

* **regex** (`string`)

`withRoutingRegex` configures a Route to have routing type `regex` and
use the supplied regex.

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
string, and `id` defaults to a slug-ified version of it.

#### fn schedule.withEnableWebOverrides

```jsonnet
schedule.withEnableWebOverrides(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Enable overrides via web UI (it will ignore ical_url_overrides).
Enable overrides via web UI (it will ignore ical_url_overrides).
#### fn schedule.withIcalUrlOverrides

```jsonnet
schedule.withIcalUrlOverrides(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of external iCal calendar which override primary events.
The URL of external iCal calendar which override primary events.
#### fn schedule.withIcalUrlPrimary

```jsonnet
schedule.withIcalUrlPrimary(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the external calendar iCal file.
The URL of the external calendar iCal file.
#### fn schedule.withName

```jsonnet
schedule.withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The schedule's name.
The schedule's name.
#### fn schedule.withShifts

```jsonnet
schedule.withShifts(shifts="null")
```

PARAMETERS:

* **shifts** (`array`)
   - default value: `"null"`

`withShifts` sets a Schedule to type `calendar` and configures shifts.
Shifts are only applicable to `calendar` type Schedules. `shifts` is an
array of Shift resource names or entire Shift manifests.

#### fn schedule.withShiftsMixin

```jsonnet
schedule.withShiftsMixin(value)
```

PARAMETERS:

* **value** (`array`)

call shifts.
The list of ID's of on-call shifts.
#### fn schedule.withShiftsRef

```jsonnet
schedule.withShiftsRef(value)
```

PARAMETERS:

* **value** (`array`)

References to OnCallShift in oncall to populate shifts.
#### fn schedule.withShiftsRefMixin

```jsonnet
schedule.withShiftsRefMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to OnCallShift in oncall to populate shifts.
#### fn schedule.withShiftsSelector

```jsonnet
schedule.withShiftsSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of OnCallShift in oncall to populate shifts.
#### fn schedule.withShiftsSelectorMixin

```jsonnet
schedule.withShiftsSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of OnCallShift in oncall to populate shifts.
#### fn schedule.withSlack

```jsonnet
schedule.withSlack(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a schedule. (see below for nested schema)
The Slack-specific settings for a schedule.
#### fn schedule.withSlackMixin

```jsonnet
schedule.withSlackMixin(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a schedule. (see below for nested schema)
The Slack-specific settings for a schedule.
#### fn schedule.withTeamId

```jsonnet
schedule.withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the grafana_oncall_team datasource.
The ID of the OnCall team. To get one, create a team in Grafana, and navigate to the OnCall plugin (to sync the team with OnCall). You can then get the ID using the `grafana_oncall_team` datasource.
#### fn schedule.withTimeZone

```jsonnet
schedule.withTimeZone(value)
```

PARAMETERS:

* **value** (`string`)

(String) The schedule's time zone.
The schedule's time zone.
#### fn schedule.withType

```jsonnet
schedule.withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The schedule's type. Valid values are ical, calendar.
The schedule's type. Valid values are `ical`, `calendar`.
#### obj schedule.shiftsSelector


##### fn schedule.shiftsSelector.withMatchControllerRef

```jsonnet
schedule.shiftsSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
##### fn schedule.shiftsSelector.withMatchLabels

```jsonnet
schedule.shiftsSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
##### fn schedule.shiftsSelector.withMatchLabelsMixin

```jsonnet
schedule.shiftsSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
##### fn schedule.shiftsSelector.withPolicy

```jsonnet
schedule.shiftsSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
##### fn schedule.shiftsSelector.withPolicyMixin

```jsonnet
schedule.shiftsSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
##### obj schedule.shiftsSelector.policy


###### fn schedule.shiftsSelector.policy.withResolution

```jsonnet
schedule.shiftsSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
###### fn schedule.shiftsSelector.policy.withResolve

```jsonnet
schedule.shiftsSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj shift


#### fn shift.new

```jsonnet
shift.new(name, resourceId="rfc1123(name)")
```

PARAMETERS:

* **name** (`string`)
* **resourceId** (`string`)
   - default value: `"rfc1123(name)"`

`new` creates an OnCallShift. The `name` is a display-friendly string,
and `id` defaults to a slug-ified version of it.

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
shift.withRollingUsers(frequency, users)
```

PARAMETERS:

* **frequency** (`string`)
   - valid values: `"hourly"`, `"daily"`, `"weekly"`, `"monthly"`
* **users** (`array`)

`withRollingUsers` sets an OnCallShift to type `rolling_users` and
configures required fields. `users` must be an array *of arrays*
of strings referring to users by email address. `frequency` is required
for this shift type.

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