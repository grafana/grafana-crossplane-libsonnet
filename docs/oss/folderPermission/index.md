# oss.folderPermission



## Subpackages

* [permissions](permissions.md)

## Index

* [`fn forFolder(folderResource)`](#fn-forfolder)
* [`fn withPermissions(permissions)`](#fn-withpermissions)
* [`fn withPermissionsMixin(permissions)`](#fn-withpermissionsmixin)
* [`fn withTeamPermission(permissions)`](#fn-withteampermission)

## Fields

### fn forFolder

```jsonnet
forFolder(folderResource)
```

PARAMETERS:

* **folderResource** (`object`)

`forFolder` configures the permission for a folder. `folderResource` can be created by `folder.new()`.
### fn withPermissions

```jsonnet
withPermissions(permissions)
```

PARAMETERS:

* **permissions** (`array`)

`withPermissions` sets the permission items to add/update. Items that are omitted from the list will be removed.

### fn withPermissionsMixin

```jsonnet
withPermissionsMixin(permissions)
```

PARAMETERS:

* **permissions** (`array`)

`withPermissionsMixin` adds permission items to add/update. Items that are omitted from the list will be removed.

### fn withTeamPermission

```jsonnet
withTeamPermission(permissions)
```

PARAMETERS:

* **permissions** (`array`)

`withTeamPermission` adds the permission for a team resource to a folder. `teamResource` can be created by `team.new()`
