# cloud



## Index

* [`obj stack`](#obj-stack)
  * [`fn new(name, namespace, cloudProviderConfigName, secretName="<name>-providerconfig-token")`](#fn-stacknew)
* [`obj stackServiceAccount`](#obj-stackserviceaccount)
  * [`fn fromStackResource(stackResource, namespace)`](#fn-stackserviceaccountfromstackresource)
* [`obj stackServiceAccountToken`](#obj-stackserviceaccounttoken)
  * [`fn fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName)`](#fn-stackserviceaccounttokenfromstackserviceaccountresource)

## Fields

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