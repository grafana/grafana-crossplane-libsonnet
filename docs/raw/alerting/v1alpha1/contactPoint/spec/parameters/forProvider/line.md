# line



## Index

* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withTokenSecretRef(value)`](#fn-withtokensecretref)
* [`fn withTokenSecretRefMixin(value)`](#fn-withtokensecretrefmixin)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj tokenSecretRef`](#obj-tokensecretref)
  * [`fn withKey(value)`](#fn-tokensecretrefwithkey)
  * [`fn withName(value)`](#fn-tokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-tokensecretrefwithnamespace)

## Fields

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
### fn withTokenSecretRef

```jsonnet
withTokenSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The bearer token used to authorize the client.
The bearer token used to authorize the client.
### fn withTokenSecretRefMixin

```jsonnet
withTokenSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The bearer token used to authorize the client.
The bearer token used to authorize the client.
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
### obj tokenSecretRef


#### fn tokenSecretRef.withKey

```jsonnet
tokenSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn tokenSecretRef.withName

```jsonnet
tokenSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn tokenSecretRef.withNamespace

```jsonnet
tokenSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.