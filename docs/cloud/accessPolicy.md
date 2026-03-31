# cloud.accessPolicy



## Index

* [`fn addToken(secretName, secretNamespace)`](#fn-addtoken)
* [`fn forOrg(name, namespace, scopes)`](#fn-fororg)
* [`fn forStackResource(stackResource, namespace)`](#fn-forstackresource)
* [`fn new(name, namespace, scopes)`](#fn-new)
* [`fn withStack(id, region)`](#fn-withstack)

## Fields

### fn addToken

```jsonnet
addToken(secretName, secretNamespace)
```

PARAMETERS:

* **secretName** (`string`)
* **secretNamespace** (`string`)

`addToken` creates a new Access Policy Token under this Access Policy, the token will be available in the provider secret.

### fn forOrg

```jsonnet
forOrg(name, namespace, scopes)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **scopes** (`array`)

`forOrg` configures the `realm` to an org `slug`.

### fn forStackResource

```jsonnet
forStackResource(stackResource, namespace)
```

PARAMETERS:

* **stackResource** (`string`)
* **namespace** (`string`)

`forStackResource` configures the `realm` for a `stackResource`.

 The `stackResource` is in the `stack` key returned by `cloud.stack.new()`.

### fn new

```jsonnet
new(name, namespace, scopes)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **scopes** (`array`)

`new` creates a new Access Policy.

For `scopes`, see https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/#scopes for possible values.

A valid Access Policy also needs a `realm`, use one of the following functions:
- `withStack`: reference a stack by its identifier (id).
- `forStackResource`: reference a stack by a Crossplane resource.
- `forOrg`: set realm to org level

### fn withStack

```jsonnet
withStack(id, region)
```

PARAMETERS:

* **id** (`string`)
* **region** (`string`)

`withStack` configures the `realm` to a stack `id`.