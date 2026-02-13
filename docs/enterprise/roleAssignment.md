# roleAssignment



## Index

* [`fn new(name, roleUid)`](#fn-new)
* [`fn newTeamAssignment(team, role)`](#fn-newteamassignment)
* [`fn withServiceAccount(value)`](#fn-withserviceaccount)
* [`fn withTeam(value)`](#fn-withteam)
* [`fn withUser(value)`](#fn-withuser)

## Fields

### fn new

```jsonnet
new(name, roleUid)
```

PARAMETERS:

* **name** (`string`)
* **roleUid** (`string`)

`new` creates a new role assignment.

 Example:
 ```jsonnet
 roleAssignment.new('eng-custom_role', 'custom_role')
 + roleAssignment.withTeam('engineering')
 ```

### fn newTeamAssignment

```jsonnet
newTeamAssignment(team, role)
```

PARAMETERS:

* **team** (`string`)
* **role** (`string`)

`newTeamAssignment` creates a new role assignment for a specific team.

It'll ensure the kubernetes metadata.name is a unique and valid name based on the team and role values.

### fn withServiceAccount

```jsonnet
withServiceAccount(value)
```

PARAMETERS:

* **value** (`string`)

withServiceAccount` assigns role to a service account
### fn withTeam

```jsonnet
withTeam(value)
```

PARAMETERS:

* **value** (`string`)

withTeam` assigns role to a team
### fn withUser

```jsonnet
withUser(value)
```

PARAMETERS:

* **value** (`string`)

withUser` assigns role to a user