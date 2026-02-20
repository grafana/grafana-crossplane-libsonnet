# tlsConfig



## Index

* [`fn withCaCert(value)`](#fn-withcacert)
* [`fn withClientCert(value)`](#fn-withclientcert)
* [`fn withClientKeySecretRef(value)`](#fn-withclientkeysecretref)
* [`fn withClientKeySecretRefMixin(value)`](#fn-withclientkeysecretrefmixin)
* [`fn withInsecureSkipVerify(value=true)`](#fn-withinsecureskipverify)
* [`fn withServerName(value)`](#fn-withservername)
* [`obj clientKeySecretRef`](#obj-clientkeysecretref)
  * [`fn withKey(value)`](#fn-clientkeysecretrefwithkey)
  * [`fn withName(value)`](#fn-clientkeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientkeysecretrefwithnamespace)

## Fields

### fn withCaCert

```jsonnet
withCaCert(value)
```

PARAMETERS:

* **value** (`string`)

(String) CA certificate in PEM format.
CA certificate in PEM format.
### fn withClientCert

```jsonnet
withClientCert(value)
```

PARAMETERS:

* **value** (`string`)

(String) Client certificate in PEM format.
Client certificate in PEM format.
### fn withClientKeySecretRef

```jsonnet
withClientKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client key in PEM format.
Client key in PEM format.
### fn withClientKeySecretRefMixin

```jsonnet
withClientKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client key in PEM format.
Client key in PEM format.
### fn withInsecureSkipVerify

```jsonnet
withInsecureSkipVerify(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Disable target certificate validation. Defaults to false.
Disable target certificate validation. Defaults to `false`.
### fn withServerName

```jsonnet
withServerName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Used to verify the hostname for the targets.
Used to verify the hostname for the targets.
### obj clientKeySecretRef


#### fn clientKeySecretRef.withKey

```jsonnet
clientKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn clientKeySecretRef.withName

```jsonnet
clientKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn clientKeySecretRef.withNamespace

```jsonnet
clientKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.