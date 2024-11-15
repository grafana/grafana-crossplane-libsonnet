# basicAuth



## Index

* [`fn withPasswordSecretRef(value)`](#fn-withpasswordsecretref)
* [`fn withPasswordSecretRefMixin(value)`](#fn-withpasswordsecretrefmixin)
* [`fn withUsername(value)`](#fn-withusername)
* [`obj passwordSecretRef`](#obj-passwordsecretref)
  * [`fn withKey(value)`](#fn-passwordsecretrefwithkey)
  * [`fn withName(value)`](#fn-passwordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-passwordsecretrefwithnamespace)

## Fields

### fn withPasswordSecretRef

```jsonnet
withPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Basic auth password.
Basic auth password.
### fn withPasswordSecretRefMixin

```jsonnet
withPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Basic auth password.
Basic auth password.
### fn withUsername

```jsonnet
withUsername(value)
```

PARAMETERS:

* **value** (`string`)

(String) Basic auth username.
Basic auth username.
### obj passwordSecretRef


#### fn passwordSecretRef.withKey

```jsonnet
passwordSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn passwordSecretRef.withName

```jsonnet
passwordSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn passwordSecretRef.withNamespace

```jsonnet
passwordSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.