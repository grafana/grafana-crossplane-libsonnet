# victorops



## Index

* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessageType(value)`](#fn-withmessagetype)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withUrlSecretRef(value)`](#fn-withurlsecretref)
* [`fn withUrlSecretRefMixin(value)`](#fn-withurlsecretrefmixin)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj urlSecretRef`](#obj-urlsecretref)
  * [`fn withKey(value)`](#fn-urlsecretrefwithkey)
  * [`fn withName(value)`](#fn-urlsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-urlsecretrefwithnamespace)

## Fields

### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated description of the Jira issue. Maximum length is 32767 characters.
Templated description of the message.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withMessageType

```jsonnet
withMessageType(value)
```

PARAMETERS:

* **value** (`string`)

either 'link' or 'actionCard'
The VictorOps alert state - typically either `CRITICAL` or `RECOVERY`.
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
Templated title to display.
### fn withUrlSecretRef

```jsonnet
withUrlSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
The VictorOps webhook URL.
### fn withUrlSecretRefMixin

```jsonnet
withUrlSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
The VictorOps webhook URL.
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
### obj urlSecretRef


#### fn urlSecretRef.withKey

```jsonnet
urlSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn urlSecretRef.withName

```jsonnet
urlSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn urlSecretRef.withNamespace

```jsonnet
urlSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.