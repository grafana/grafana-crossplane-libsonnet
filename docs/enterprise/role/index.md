# role



## Subpackages

* [permission](permission.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withPermissions(permissions)`](#fn-withpermissions)

## Fields

### fn new

```jsonnet
new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates a new role.

 Example:
 ```jsonnet
 role.new('custom_role')
 + role.withPermissions([
   role.permission.withScope('folders:uid:general')
   + role.permission.withAction('dashboards:create')
 ])
 ```

### fn withPermissions

```jsonnet
withPermissions(permissions)
```

PARAMETERS:

* **permissions** (`string`)

withPermissions` adds permissions to the role.