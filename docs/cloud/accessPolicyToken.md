# cloud.accessPolicyToken



## Index

* [`fn forAccessPolicyResource(accessPolicyResource)`](#fn-foraccesspolicyresource)
* [`fn new(secretName, secretNamespace)`](#fn-new)
* [`fn withAccessPolicyId(id)`](#fn-withaccesspolicyid)

## Fields

### fn forAccessPolicyResource

```jsonnet
forAccessPolicyResource(accessPolicyResource)
```

PARAMETERS:

* **accessPolicyResource** (`object`)

`forAccessPolicyResource` configures the Access Policy` for a `accessPolicyResource`.

 The `accessPolicyResource` is in the `accessPolicy` key returned by `cloud.accessPolicy.new()`.

### fn new

```jsonnet
new(secretName, secretNamespace)
```

PARAMETERS:

* **secretName** (`string`)
* **secretNamespace** (`string`)

`new` creates a new Access Policy Token.

Tip: use `accessPolicy.addToken()` to automatically link the token to the right Access Policy.

A valid Access Policy Token also needs an Access Policy, use one of the following functions:
- `withAccessPolicyId`: reference a policy by its identifier (id)
- `forAccessPolicyResource`: reference a policy by a Crossplane resource.

### fn withAccessPolicyId

```jsonnet
withAccessPolicyId(id)
```

PARAMETERS:

* **id** (`string`)

`withAccessPolicyId` configures the Access Policy to a policy `id`.