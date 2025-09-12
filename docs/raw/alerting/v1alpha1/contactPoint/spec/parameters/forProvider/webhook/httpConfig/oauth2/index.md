# oauth2



## Subpackages

* [proxyConfig](proxyConfig.md)
* [tlsConfig](tlsConfig.md)

## Index

* [`fn withClientId(value)`](#fn-withclientid)
* [`fn withClientSecretSecretRef(value)`](#fn-withclientsecretsecretref)
* [`fn withClientSecretSecretRefMixin(value)`](#fn-withclientsecretsecretrefmixin)
* [`fn withEndpointParams(value)`](#fn-withendpointparams)
* [`fn withEndpointParamsMixin(value)`](#fn-withendpointparamsmixin)
* [`fn withProxyConfig(value)`](#fn-withproxyconfig)
* [`fn withProxyConfigMixin(value)`](#fn-withproxyconfigmixin)
* [`fn withScopes(value)`](#fn-withscopes)
* [`fn withScopesMixin(value)`](#fn-withscopesmixin)
* [`fn withTlsConfig(value)`](#fn-withtlsconfig)
* [`fn withTlsConfigMixin(value)`](#fn-withtlsconfigmixin)
* [`fn withTokenUrl(value)`](#fn-withtokenurl)
* [`obj clientSecretSecretRef`](#obj-clientsecretsecretref)
  * [`fn withKey(value)`](#fn-clientsecretsecretrefwithkey)
  * [`fn withName(value)`](#fn-clientsecretsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientsecretsecretrefwithnamespace)

## Fields

### fn withClientId

```jsonnet
withClientId(value)
```

PARAMETERS:

* **value** (`string`)

(String) Client ID to use when authenticating.
Client ID to use when authenticating.
### fn withClientSecretSecretRef

```jsonnet
withClientSecretSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client secret to use when authenticating.
Client secret to use when authenticating.
### fn withClientSecretSecretRefMixin

```jsonnet
withClientSecretSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Client secret to use when authenticating.
Client secret to use when authenticating.
### fn withEndpointParams

```jsonnet
withEndpointParams(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Optional parameters to append to the access token request.
Optional parameters to append to the access token request.
### fn withEndpointParamsMixin

```jsonnet
withEndpointParamsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Optional parameters to append to the access token request.
Optional parameters to append to the access token request.
### fn withProxyConfig

```jsonnet
withProxyConfig(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Optional proxy configuration for OAuth2 requests. (see below for nested schema)
Optional proxy configuration for OAuth2 requests.
### fn withProxyConfigMixin

```jsonnet
withProxyConfigMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Optional proxy configuration for OAuth2 requests. (see below for nested schema)
Optional proxy configuration for OAuth2 requests.
### fn withScopes

```jsonnet
withScopes(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Optional scopes to request when obtaining an access token.
Optional scopes to request when obtaining an access token.
### fn withScopesMixin

```jsonnet
withScopesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Optional scopes to request when obtaining an access token.
Optional scopes to request when obtaining an access token.
### fn withTlsConfig

```jsonnet
withTlsConfig(value)
```

PARAMETERS:

* **value** (`array`)

(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.
Optional TLS configuration options for OAuth2 requests.
### fn withTlsConfigMixin

```jsonnet
withTlsConfigMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.
Optional TLS configuration options for OAuth2 requests.
### fn withTokenUrl

```jsonnet
withTokenUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) URL for the access token endpoint.
URL for the access token endpoint.
### obj clientSecretSecretRef


#### fn clientSecretSecretRef.withKey

```jsonnet
clientSecretSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn clientSecretSecretRef.withName

```jsonnet
clientSecretSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn clientSecretSecretRef.withNamespace

```jsonnet
clientSecretSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.