# hmacConfig



## Index

* [`fn withHeader(value)`](#fn-withheader)
* [`fn withSecretSecretRef(value)`](#fn-withsecretsecretref)
* [`fn withSecretSecretRefMixin(value)`](#fn-withsecretsecretrefmixin)
* [`fn withTimestampHeader(value)`](#fn-withtimestampheader)
* [`obj secretSecretRef`](#obj-secretsecretref)
  * [`fn withKey(value)`](#fn-secretsecretrefwithkey)
  * [`fn withName(value)`](#fn-secretsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-secretsecretrefwithnamespace)

## Fields

### fn withHeader

```jsonnet
withHeader(value)
```

PARAMETERS:

* **value** (`string`)

Grafana-Alerting-Signature.
The header in which the HMAC signature will be included. Defaults to `X-Grafana-Alerting-Signature`.
### fn withSecretSecretRef

```jsonnet
withSecretSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The secret key used to generate the HMAC signature.
The secret key used to generate the HMAC signature.
### fn withSecretSecretRefMixin

```jsonnet
withSecretSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The secret key used to generate the HMAC signature.
The secret key used to generate the HMAC signature.
### fn withTimestampHeader

```jsonnet
withTimestampHeader(value)
```

PARAMETERS:

* **value** (`string`)

(String) If set, the timestamp will be included in the HMAC signature. The value should be the name of the header to use.
If set, the timestamp will be included in the HMAC signature. The value should be the name of the header to use.
### obj secretSecretRef


#### fn secretSecretRef.withKey

```jsonnet
secretSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn secretSecretRef.withName

```jsonnet
secretSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn secretSecretRef.withNamespace

```jsonnet
secretSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.