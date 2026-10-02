# cloud.nativeAccessPolicyToken

Native Crossplane v2 namespaced AccessPolicyToken (cloud.grafana.m.crossplane.io),
as opposed to `cloud.accessPolicyToken`'s Claim-backed cloud.grafana.net.namespaced.


## Index

* [`fn forAccessPolicyResource(accessPolicyResource, namespace)`](#fn-foraccesspolicyresource)
* [`fn new(secretName, providerConfigName, providerConfigKind="ClusterProviderConfig")`](#fn-new)

## Fields

### fn forAccessPolicyResource

```jsonnet
forAccessPolicyResource(accessPolicyResource, namespace)
```

PARAMETERS:

* **accessPolicyResource** (`object`)
* **namespace** (`string`)

`forAccessPolicyResource` references the AccessPolicy by its own
resource name+namespace, same reasoning as forStackResource.

### fn new

```jsonnet
new(secretName, providerConfigName, providerConfigKind="ClusterProviderConfig")
```

PARAMETERS:

* **secretName** (`string`)
* **providerConfigName** (`string`)
* **providerConfigKind** (`string`)
   - default value: `"ClusterProviderConfig"`

`new` creates a new native namespaced AccessPolicyToken.