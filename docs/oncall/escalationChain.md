# oncall.escalationChain



## Index

* [`fn new(name, namespace)`](#fn-new)
* [`fn withClaimName(claimName)`](#fn-withclaimname)
* [`fn withSteps(steps)`](#fn-withsteps)
* [`fn withTeamId(teamId)`](#fn-withteamid)
* [`obj step`](#obj-step)
  * [`fn notifyOnCallFromSchedule(scheduleName, scheduleNamespace)`](#fn-stepnotifyoncallfromschedule)
  * [`fn notifyPersons(persons)`](#fn-stepnotifypersons)
  * [`fn wait(seconds)`](#fn-stepwait)
  * [`fn withImportant(value=true)`](#fn-stepwithimportant)

## Fields

### fn new

```jsonnet
new(name, namespace)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)

`new` creates an Escalation Chain.

Parameters:
  - `name` is a display-friendly string.
  - `namespace` is the namespace in which chain will be created.

### fn withClaimName

```jsonnet
withClaimName(claimName)
```

PARAMETERS:

* **claimName** (`string`)

`withClaimName` sets the resource name for an Escalation Chain
### fn withSteps

```jsonnet
withSteps(steps)
```

PARAMETERS:

* **steps** (`array`)

`withSteps` configures one or more Escalation steps within the calling Escalation Chain.

### fn withTeamId

```jsonnet
withTeamId(teamId)
```

PARAMETERS:

* **teamId** (`string`)

`withTeamId` configures the Team ID on the Escalation Chain.

Parameters:
  - `teamId` should be the ID of the team as a string.

### obj step


#### fn step.notifyOnCallFromSchedule

```jsonnet
step.notifyOnCallFromSchedule(scheduleName, scheduleNamespace)
```

PARAMETERS:

* **scheduleName** (`string`)
* **scheduleNamespace** (`string`)

`notifyOnCallFromSchedule` configures an Escalation step to notify on-call persons from the given Schedule.

Parameters:
  - `scheduleName` must be the Schedule resource name
  - `scheduleNamespace` must be its namespace.

#### fn step.notifyPersons

```jsonnet
step.notifyPersons(persons)
```

PARAMETERS:

* **persons** (`array`)

`notifyPersons` configures an Escalation step to notify a list of person IDs.

#### fn step.wait

```jsonnet
step.wait(seconds)
```

PARAMETERS:

* **seconds** (`number`)

`wait` configures an Escalation step to wait for acknowledgement for the given number of seconds before proceeding.

#### fn step.withImportant

```jsonnet
step.withImportant(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Will activate "important" personal notification rules. Actual for steps: notify_persons, notify_person_next_each_time, notify_on_call_from_schedule, notify_user_group and notify_team_members
Will activate "important" personal notification rules. Actual for steps: notify_persons, notify_person_next_each_time, notify_on_call_from_schedule, notify_user_group and notify_team_members