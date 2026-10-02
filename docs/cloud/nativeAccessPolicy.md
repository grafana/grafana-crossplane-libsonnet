# cloud.nativeAccessPolicy

Native Crossplane v2 namespaced AccessPolicy (cloud.grafana.m.crossplane.io),
as opposed to `cloud.accessPolicy`'s Claim-backed cloud.grafana.net.namespaced.


## Index

* [`fn forOrg(slug, region="prod-us-east-0")`](#fn-fororg)
* [`fn forStackResource(stackResource, namespace)`](#fn-forstackresource)
* [`fn new(name, scopes, providerConfigName, providerConfigKind="ClusterProviderConfig")`](#fn-new)
* [`fn withStack(id, region)`](#fn-withstack)

## Fields

### fn forOrg

```jsonnet
forOrg(slug, region="prod-us-east-0")
```

PARAMETERS:

* **slug** (`string`)
* **region** (`string`)
   - default value: `"prod-us-east-0"`

`forOrg` configures the `realm` to an org `slug`.
### fn forStackResource

```jsonnet
forStackResource(stackResource, namespace)
```

PARAMETERS:

* **stackResource** (`object`)
* **namespace** (`string`)

`forStackResource` configures the `realm` for a native Stack resource
(name+namespace), not the old claim-name/claim-namespace labels --
those don't exist without a Claim.

### fn new

```jsonnet
new(name, scopes, providerConfigName, providerConfigKind="ClusterProviderConfig")
```

PARAMETERS:

* **name** (`string`)
* **scopes** (`array`)
* **providerConfigName** (`string`)
* **providerConfigKind** (`string`)
   - default value: `"ClusterProviderConfig"`

`new` creates a new native namespaced AccessPolicy.
### fn withStack

```jsonnet
withStack(id, region)
```

PARAMETERS:

* **id** (`string`)
* **region** (`string`)

`withStack` configures the `realm` to a stack `id`.