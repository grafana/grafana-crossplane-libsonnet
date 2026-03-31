# oss.datasource



## Index

* [`fn new(name, type)`](#fn-new)
* [`fn withBasicAuth(username)`](#fn-withbasicauth)
* [`fn withExternalName(externalName)`](#fn-withexternalname)
* [`fn withJsonData(configObject)`](#fn-withjsondata)
* [`fn withSecureJsonDataSecretRef(name, namespace, key)`](#fn-withsecurejsondatasecretref)

## Fields

### fn new

```jsonnet
new(name, type)
```

PARAMETERS:

* **name** (`string`)
* **type** (`string`)

`new` configures a datasource.

### fn withBasicAuth

```jsonnet
withBasicAuth(username)
```

PARAMETERS:

* **username** (`string`)

`withBasicAuth` enables basic authentication for the data source, not that this'll likely expect secret referenced with `withSecureJsonDataSecretRef()` that has a key `basicAuthPassword`.

### fn withExternalName

```jsonnet
withExternalName(externalName)
```

PARAMETERS:

* **externalName** (`string`)

`withExternalName` can be used to import an existing datasource.
### fn withJsonData

```jsonnet
withJsonData(configObject)
```

PARAMETERS:

* **configObject** (`object`)

`withJsonData` configures options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.

### fn withSecureJsonDataSecretRef

```jsonnet
withSecureJsonDataSecretRef(name, namespace, key)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **key** (`string`)

`withSecureJsonDataSecretRef` references a secret that configures sensitive options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
