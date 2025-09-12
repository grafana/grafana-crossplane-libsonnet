# tlsConfig



## Index

* [`fn withCaCertificateSecretRef(value)`](#fn-withcacertificatesecretref)
* [`fn withCaCertificateSecretRefMixin(value)`](#fn-withcacertificatesecretrefmixin)
* [`fn withClientCertificateSecretRef(value)`](#fn-withclientcertificatesecretref)
* [`fn withClientCertificateSecretRefMixin(value)`](#fn-withclientcertificatesecretrefmixin)
* [`fn withClientKeySecretRef(value)`](#fn-withclientkeysecretref)
* [`fn withClientKeySecretRefMixin(value)`](#fn-withclientkeysecretrefmixin)
* [`fn withInsecureSkipVerify(value=true)`](#fn-withinsecureskipverify)
* [`obj caCertificateSecretRef`](#obj-cacertificatesecretref)
  * [`fn withKey(value)`](#fn-cacertificatesecretrefwithkey)
  * [`fn withName(value)`](#fn-cacertificatesecretrefwithname)
  * [`fn withNamespace(value)`](#fn-cacertificatesecretrefwithnamespace)
* [`obj clientCertificateSecretRef`](#obj-clientcertificatesecretref)
  * [`fn withKey(value)`](#fn-clientcertificatesecretrefwithkey)
  * [`fn withName(value)`](#fn-clientcertificatesecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientcertificatesecretrefwithnamespace)
* [`obj clientKeySecretRef`](#obj-clientkeysecretref)
  * [`fn withKey(value)`](#fn-clientkeysecretrefwithkey)
  * [`fn withName(value)`](#fn-clientkeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientkeysecretrefwithnamespace)

## Fields

### fn withCaCertificateSecretRef

```jsonnet
withCaCertificateSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Certificate in PEM format to use when verifying the server's certificate chain.
Certificate in PEM format to use when verifying the server's certificate chain.
### fn withCaCertificateSecretRefMixin

```jsonnet
withCaCertificateSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Certificate in PEM format to use when verifying the server's certificate chain.
Certificate in PEM format to use when verifying the server's certificate chain.
### fn withClientCertificateSecretRef

```jsonnet
withClientCertificateSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client certificate in PEM format to use when connecting to the server.
Client certificate in PEM format to use when connecting to the server.
### fn withClientCertificateSecretRefMixin

```jsonnet
withClientCertificateSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client certificate in PEM format to use when connecting to the server.
Client certificate in PEM format to use when connecting to the server.
### fn withClientKeySecretRef

```jsonnet
withClientKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client key in PEM format to use when connecting to the server.
Client key in PEM format to use when connecting to the server.
### fn withClientKeySecretRefMixin

```jsonnet
withClientKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client key in PEM format to use when connecting to the server.
Client key in PEM format to use when connecting to the server.
### fn withInsecureSkipVerify

```jsonnet
withInsecureSkipVerify(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Do not verify the server's certificate chain and host name. Defaults to false.
Do not verify the server's certificate chain and host name. Defaults to `false`.
### obj caCertificateSecretRef


#### fn caCertificateSecretRef.withKey

```jsonnet
caCertificateSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn caCertificateSecretRef.withName

```jsonnet
caCertificateSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn caCertificateSecretRef.withNamespace

```jsonnet
caCertificateSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj clientCertificateSecretRef


#### fn clientCertificateSecretRef.withKey

```jsonnet
clientCertificateSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn clientCertificateSecretRef.withName

```jsonnet
clientCertificateSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn clientCertificateSecretRef.withNamespace

```jsonnet
clientCertificateSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
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