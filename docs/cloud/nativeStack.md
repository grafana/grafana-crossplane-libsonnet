# cloud.nativeStack

Native Crossplane v2 namespaced Stack (cloud.grafana.m.crossplane.io),
as opposed to `cloud.stack`'s Claim-backed cloud.grafana.net.namespaced.
That Claim always spawns a cluster-scoped XStack composite alongside
it; this wraps the raw namespaced managed resource directly instead,
so no cluster-scoped resource is created at all.


## Index

* [`fn new(name, providerConfigName, providerConfigKind="ClusterProviderConfig")`](#fn-new)

## Fields

### fn new

```jsonnet
new(name, providerConfigName, providerConfigKind="ClusterProviderConfig")
```

PARAMETERS:

* **name** (`string`)
* **providerConfigName** (`string`)
* **providerConfigKind** (`string`)
   - default value: `"ClusterProviderConfig"`

`new` creates a new native namespaced Stack.