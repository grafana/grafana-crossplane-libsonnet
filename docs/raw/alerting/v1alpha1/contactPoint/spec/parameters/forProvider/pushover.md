# pushover



## Index

* [`fn withApiTokenSecretRef(value)`](#fn-withapitokensecretref)
* [`fn withApiTokenSecretRefMixin(value)`](#fn-withapitokensecretrefmixin)
* [`fn withDevice(value)`](#fn-withdevice)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withExpire(value)`](#fn-withexpire)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withOkPriority(value)`](#fn-withokpriority)
* [`fn withOkSound(value)`](#fn-withoksound)
* [`fn withPriority(value)`](#fn-withpriority)
* [`fn withRetry(value)`](#fn-withretry)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withSound(value)`](#fn-withsound)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withUploadImage(value=true)`](#fn-withuploadimage)
* [`fn withUserKeySecretRef(value)`](#fn-withuserkeysecretref)
* [`fn withUserKeySecretRefMixin(value)`](#fn-withuserkeysecretrefmixin)
* [`obj apiTokenSecretRef`](#obj-apitokensecretref)
  * [`fn withKey(value)`](#fn-apitokensecretrefwithkey)
  * [`fn withName(value)`](#fn-apitokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-apitokensecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj userKeySecretRef`](#obj-userkeysecretref)
  * [`fn withKey(value)`](#fn-userkeysecretrefwithkey)
  * [`fn withName(value)`](#fn-userkeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-userkeysecretrefwithnamespace)

## Fields

### fn withApiTokenSecretRef

```jsonnet
withApiTokenSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Personal Access Token that is used as a bearer authorization header.
The Pushover API token.
### fn withApiTokenSecretRefMixin

```jsonnet
withApiTokenSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Personal Access Token that is used as a bearer authorization header.
The Pushover API token.
### fn withDevice

```jsonnet
withDevice(value)
```

PARAMETERS:

* **value** (`string`)

separated list of devices to which the event is associated.
Comma-separated list of devices to which the event is associated.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withExpire

```jsonnet
withExpire(value)
```

PARAMETERS:

* **value** (`number`)

(Number) How many seconds for which the notification will continue to be retried by Pushover.
How many seconds for which the notification will continue to be retried by Pushover.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
The templated notification message content.
### fn withOkPriority

```jsonnet
withOkPriority(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The priority level of the resolved event.
The priority level of the resolved event.
### fn withOkSound

```jsonnet
withOkSound(value)
```

PARAMETERS:

* **value** (`string`)

(String) The sound associated with the resolved notification.
The sound associated with the resolved notification.
### fn withPriority

```jsonnet
withPriority(value)
```

PARAMETERS:

* **value** (`number`)

(String) The priority level of the issue (e.g., High, Medium, Low).
The priority level of the event.
### fn withRetry

```jsonnet
withRetry(value)
```

PARAMETERS:

* **value** (`number`)

(Number) How often, in seconds, the Pushover servers will send the same notification to the user.
How often, in seconds, the Pushover servers will send the same notification to the user.
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
### fn withSound

```jsonnet
withSound(value)
```

PARAMETERS:

* **value** (`string`)

(String) The sound associated with the notification.
The sound associated with the notification.
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated title of the message.
The templated title of the message.
### fn withUploadImage

```jsonnet
withUploadImage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to send images in the notification or not. Default is true. Requires Grafana to be configured to send images in notifications.
Whether to send images in the notification or not. Default is true. Requires Grafana to be configured to send images in notifications.
### fn withUserKeySecretRef

```jsonnet
withUserKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The Pushover user key.
The Pushover user key.
### fn withUserKeySecretRefMixin

```jsonnet
withUserKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The Pushover user key.
The Pushover user key.
### obj apiTokenSecretRef


#### fn apiTokenSecretRef.withKey

```jsonnet
apiTokenSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn apiTokenSecretRef.withName

```jsonnet
apiTokenSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn apiTokenSecretRef.withNamespace

```jsonnet
apiTokenSecretRef.withNamespace(value)
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
### obj userKeySecretRef


#### fn userKeySecretRef.withKey

```jsonnet
userKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn userKeySecretRef.withName

```jsonnet
userKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn userKeySecretRef.withNamespace

```jsonnet
userKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.