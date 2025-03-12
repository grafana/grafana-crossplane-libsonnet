# cloud



## Index

* [`obj accessPolicy`](#obj-accesspolicy)
  * [`fn addToken(secretName, secretNamespace)`](#fn-accesspolicyaddtoken)
  * [`fn forOrg(name, namespace, scopes)`](#fn-accesspolicyfororg)
  * [`fn forStackResource(stackResource, namespace)`](#fn-accesspolicyforstackresource)
  * [`fn new(name, namespace, scopes)`](#fn-accesspolicynew)
  * [`fn withStack(id, region)`](#fn-accesspolicywithstack)
* [`obj accessPolicyToken`](#obj-accesspolicytoken)
  * [`fn forAccessPolicyResource(accessPolicyResource)`](#fn-accesspolicytokenforaccesspolicyresource)
  * [`fn new(secretName, secretNamespace)`](#fn-accesspolicytokennew)
  * [`fn withAccessPolicyId(id)`](#fn-accesspolicytokenwithaccesspolicyid)
* [`obj stack`](#obj-stack)
  * [`fn new(name, namespace, cloudProviderConfigName, secretName="<name>-providerconfig-token")`](#fn-stacknew)
* [`obj stackServiceAccount`](#obj-stackserviceaccount)
  * [`fn fromStackResource(stackResource, namespace)`](#fn-stackserviceaccountfromstackresource)
* [`obj stackServiceAccountToken`](#obj-stackserviceaccounttoken)
  * [`fn fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName)`](#fn-stackserviceaccounttokenfromstackserviceaccountresource)

## Fields

### obj accessPolicy


#### fn accessPolicy.addToken

```jsonnet
accessPolicy.addToken(secretName, secretNamespace)
```

PARAMETERS:

* **secretName** (`string`)
* **secretNamespace** (`string`)

`addToken` creates a new Access Policy Token under this Access Policy, the token will be available in the provider secret.

#### fn accessPolicy.forOrg

```jsonnet
accessPolicy.forOrg(name, namespace, scopes)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **scopes** (`array`)

`forOrg` configures the `realm` to an org `slug`.

#### fn accessPolicy.forStackResource

```jsonnet
accessPolicy.forStackResource(stackResource, namespace)
```

PARAMETERS:

* **stackResource** (`string`)
* **namespace** (`string`)

`forStackResource` configures the `realm` for a `stackResource`.

 The `stackResource` is in the `stack` key returned by `cloud.stack.new()`.

#### fn accessPolicy.new

```jsonnet
accessPolicy.new(name, namespace, scopes)
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

#### fn accessPolicy.withStack

```jsonnet
accessPolicy.withStack(id, region)
```

PARAMETERS:

* **id** (`string`)
* **region** (`string`)

`withStack` configures the `realm` to a stack `id`.
### obj accessPolicyToken


#### fn accessPolicyToken.forAccessPolicyResource

```jsonnet
accessPolicyToken.forAccessPolicyResource(accessPolicyResource)
```

PARAMETERS:

* **accessPolicyResource** (`object`)

`forAccessPolicyResource` configures the Access Policy` for a `accessPolicyResource`.

 The `accessPolicyResource` is in the `accessPolicy` key returned by `cloud.accessPolicy.new()`.

#### fn accessPolicyToken.new

```jsonnet
accessPolicyToken.new(secretName, secretNamespace)
```

PARAMETERS:

* **secretName** (`string`)
* **secretNamespace** (`string`)

`new` creates a new Access Policy Token.

Tip: use `accessPolicy.addToken()` to automatically link the token to the right Access Policy.

A valid Access Policy Token also needs an Access Policy, use one of the following functions:
- `withAccessPolicyId`: reference a policy by its identifier (id)
- `forAccessPolicyResource`: reference a policy by a Crossplane resource.

#### fn accessPolicyToken.withAccessPolicyId

```jsonnet
accessPolicyToken.withAccessPolicyId(id)
```

PARAMETERS:

* **id** (`string`)

`withAccessPolicyId` configures the Access Policy to a policy `id`.
### obj stack


#### fn stack.new

```jsonnet
stack.new(name, namespace, cloudProviderConfigName, secretName="<name>-providerconfig-token")
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **cloudProviderConfigName** (`string`)
* **secretName** (`string`)
   - default value: `"<name>-providerconfig-token"`

`new` creates a new Grafana Cloud Stack.
### obj stackServiceAccount


#### fn stackServiceAccount.fromStackResource

```jsonnet
stackServiceAccount.fromStackResource(stackResource, namespace)
```

PARAMETERS:

* **stackResource** (`object`)
* **namespace** (`string`)

`fromStackResource` creates a new service account from a Stack resource.
### obj stackServiceAccountToken


#### fn stackServiceAccountToken.fromStackServiceAccountResource

```jsonnet
stackServiceAccountToken.fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName)
```

PARAMETERS:

* **stackServiceAccountResource** (`object`)
* **namespace** (`string`)
* **secretName** (`string`)

`fromStackServiceAccountResource` creates a new service account token from a service account resource. The token will be written to `secretName`.