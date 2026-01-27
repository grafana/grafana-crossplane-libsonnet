# threema



## Index

* [`fn withApiSecretSecretRef(value)`](#fn-withapisecretsecretref)
* [`fn withApiSecretSecretRefMixin(value)`](#fn-withapisecretsecretrefmixin)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withGatewayId(value)`](#fn-withgatewayid)
* [`fn withRecipientId(value)`](#fn-withrecipientid)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`obj apiSecretSecretRef`](#obj-apisecretsecretref)
  * [`fn withKey(value)`](#fn-apisecretsecretrefwithkey)
  * [`fn withName(value)`](#fn-apisecretsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-apisecretsecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)

## Fields

### fn withApiSecretSecretRef

```jsonnet
withApiSecretSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The Threema API key.
The Threema API key.
### fn withApiSecretSecretRefMixin

```jsonnet
withApiSecretSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The Threema API key.
The Threema API key.
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated description of the Jira issue. Maximum length is 32767 characters.
The templated description of the message.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withGatewayId

```jsonnet
withGatewayId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Threema gateway ID.
The Threema gateway ID.
### fn withRecipientId

```jsonnet
withRecipientId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the recipient of the message.
The ID of the recipient of the message.
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
The templated title of the message.
### obj apiSecretSecretRef


#### fn apiSecretSecretRef.withKey

```jsonnet
apiSecretSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn apiSecretSecretRef.withName

```jsonnet
apiSecretSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn apiSecretSecretRef.withNamespace

```jsonnet
apiSecretSecretRef.withNamespace(value)
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