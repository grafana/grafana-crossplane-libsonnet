# wecom



## Index

* [`fn withAgentId(value)`](#fn-withagentid)
* [`fn withCorpId(value)`](#fn-withcorpid)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withMsgType(value)`](#fn-withmsgtype)
* [`fn withSecretSecretRef(value)`](#fn-withsecretsecretref)
* [`fn withSecretSecretRefMixin(value)`](#fn-withsecretsecretrefmixin)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withToUser(value)`](#fn-withtouser)
* [`fn withUrlSecretRef(value)`](#fn-withurlsecretref)
* [`fn withUrlSecretRefMixin(value)`](#fn-withurlsecretrefmixin)
* [`obj secretSecretRef`](#obj-secretsecretref)
  * [`fn withKey(value)`](#fn-secretsecretrefwithkey)
  * [`fn withName(value)`](#fn-secretsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-secretsecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj urlSecretRef`](#obj-urlsecretref)
  * [`fn withKey(value)`](#fn-urlsecretrefwithkey)
  * [`fn withName(value)`](#fn-urlsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-urlsecretrefwithnamespace)

## Fields

### fn withAgentId

```jsonnet
withAgentId(value)
```

PARAMETERS:

* **value** (`string`)

(String) Agent ID added to the request payload when using APIAPP.
Agent ID added to the request payload when using APIAPP.
### fn withCorpId

```jsonnet
withCorpId(value)
```

PARAMETERS:

* **value** (`string`)

(String) Corp ID used to get token when using APIAPP.
Corp ID used to get token when using APIAPP.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
The templated content of the message to send.
### fn withMsgType

```jsonnet
withMsgType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The type of them message. Supported: markdown, text. Default: text.
The type of them message. Supported: markdown, text. Default: text.
### fn withSecretSecretRef

```jsonnet
withSecretSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The secret key used to generate the HMAC signature.
The secret key required to obtain access token when using APIAPP. See https://work.weixin.qq.com/wework_admin/frame#apps to create APIAPP.
### fn withSecretSecretRefMixin

```jsonnet
withSecretSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The secret key used to generate the HMAC signature.
The secret key required to obtain access token when using APIAPP. See https://work.weixin.qq.com/wework_admin/frame#apps to create APIAPP.
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
The templated title of the message to send.
### fn withToUser

```jsonnet
withToUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of user that should receive the message. Multiple entries should be separated by '|'. Default: @all.
The ID of user that should receive the message. Multiple entries should be separated by '|'. Default: @all.
### fn withUrlSecretRef

```jsonnet
withUrlSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
The WeCom webhook URL. Required if using GroupRobot.
### fn withUrlSecretRefMixin

```jsonnet
withUrlSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
The WeCom webhook URL. Required if using GroupRobot.
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