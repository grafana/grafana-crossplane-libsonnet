# webhook



## Index

* [`fn withAuthorizationCredentialsSecretRef(value)`](#fn-withauthorizationcredentialssecretref)
* [`fn withAuthorizationCredentialsSecretRefMixin(value)`](#fn-withauthorizationcredentialssecretrefmixin)
* [`fn withAuthorizationScheme(value)`](#fn-withauthorizationscheme)
* [`fn withBasicAuthPasswordSecretRef(value)`](#fn-withbasicauthpasswordsecretref)
* [`fn withBasicAuthPasswordSecretRefMixin(value)`](#fn-withbasicauthpasswordsecretrefmixin)
* [`fn withBasicAuthUser(value)`](#fn-withbasicauthuser)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withHttpMethod(value)`](#fn-withhttpmethod)
* [`fn withMaxAlerts(value)`](#fn-withmaxalerts)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withTlsConfigSecretRef(value)`](#fn-withtlsconfigsecretref)
* [`fn withTlsConfigSecretRefMixin(value)`](#fn-withtlsconfigsecretrefmixin)
* [`fn withUrl(value)`](#fn-withurl)
* [`obj authorizationCredentialsSecretRef`](#obj-authorizationcredentialssecretref)
  * [`fn withKey(value)`](#fn-authorizationcredentialssecretrefwithkey)
  * [`fn withName(value)`](#fn-authorizationcredentialssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-authorizationcredentialssecretrefwithnamespace)
* [`obj basicAuthPasswordSecretRef`](#obj-basicauthpasswordsecretref)
  * [`fn withKey(value)`](#fn-basicauthpasswordsecretrefwithkey)
  * [`fn withName(value)`](#fn-basicauthpasswordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-basicauthpasswordsecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj tlsConfigSecretRef`](#obj-tlsconfigsecretref)
  * [`fn withName(value)`](#fn-tlsconfigsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-tlsconfigsecretrefwithnamespace)

## Fields

### fn withAuthorizationCredentialsSecretRef

```jsonnet
withAuthorizationCredentialsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
Allows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
### fn withAuthorizationCredentialsSecretRefMixin

```jsonnet
withAuthorizationCredentialsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
Allows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
### fn withAuthorizationScheme

```jsonnet
withAuthorizationScheme(value)
```

PARAMETERS:

* **value** (`string`)

attaches an auth header with this name. Do not use in conjunction with basic auth parameters.
Allows a custom authorization scheme - attaches an auth header with this name. Do not use in conjunction with basic auth parameters.
### fn withBasicAuthPasswordSecretRef

```jsonnet
withBasicAuthPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The password component of the basic auth credentials to use.
The username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.
### fn withBasicAuthPasswordSecretRefMixin

```jsonnet
withBasicAuthPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The password component of the basic auth credentials to use.
The username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.
### fn withBasicAuthUser

```jsonnet
withBasicAuthUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) The username component of the basic auth credentials to use.
The username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withHttpMethod

```jsonnet
withHttpMethod(value)
```

PARAMETERS:

* **value** (`string`)

(String) The HTTP method to use in the request. Defaults to POST.
The HTTP method to use in the request. Defaults to `POST`.
### fn withMaxAlerts

```jsonnet
withMaxAlerts(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.
The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
Custom message. You can use template variables.
### fn withSettingsSecretRef

```jsonnet
withSettingsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].
Additional custom properties to attach to the notifier. Defaults to `map[]`.
### fn withSettingsSecretRefMixin

```jsonnet
withSettingsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].
Additional custom properties to attach to the notifier. Defaults to `map[]`.
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated title of the message.
Templated title of the message.
### fn withTlsConfigSecretRef

```jsonnet
withTlsConfigSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.
Allows configuring TLS for the webhook notifier.
### fn withTlsConfigSecretRefMixin

```jsonnet
withTlsConfigSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.
Allows configuring TLS for the webhook notifier.
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Alertmanager instance.
The URL to send webhook requests to.
### obj authorizationCredentialsSecretRef


#### fn authorizationCredentialsSecretRef.withKey

```jsonnet
authorizationCredentialsSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn authorizationCredentialsSecretRef.withName

```jsonnet
authorizationCredentialsSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn authorizationCredentialsSecretRef.withNamespace

```jsonnet
authorizationCredentialsSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj basicAuthPasswordSecretRef


#### fn basicAuthPasswordSecretRef.withKey

```jsonnet
basicAuthPasswordSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn basicAuthPasswordSecretRef.withName

```jsonnet
basicAuthPasswordSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn basicAuthPasswordSecretRef.withNamespace

```jsonnet
basicAuthPasswordSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj settingsSecretRef


#### fn settingsSecretRef.withName

```jsonnet
settingsSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn settingsSecretRef.withNamespace

```jsonnet
settingsSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj tlsConfigSecretRef


#### fn tlsConfigSecretRef.withName

```jsonnet
tlsConfigSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn tlsConfigSecretRef.withNamespace

```jsonnet
tlsConfigSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.