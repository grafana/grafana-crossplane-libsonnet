# roleAssignment



## Index

* [`fn new(name, roleUid)`](#fn-new)
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