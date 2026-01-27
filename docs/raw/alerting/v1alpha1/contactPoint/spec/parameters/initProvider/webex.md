# webex



## Index

* [`fn withApiUrl(value)`](#fn-withapiurl)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withRoomId(value)`](#fn-withroomid)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTokenSecretRef(value)`](#fn-withtokensecretref)
* [`fn withTokenSecretRefMixin(value)`](#fn-withtokensecretrefmixin)
* [`obj tokenSecretRef`](#obj-tokensecretref)
  * [`fn withKey(value)`](#fn-tokensecretrefwithkey)
  * [`fn withName(value)`](#fn-tokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-tokensecretrefwithnamespace)

## Fields

### fn withApiUrl

```jsonnet
withApiUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Jira REST API (v2 or v3).
The URL to send webhook requests to.
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
The templated title of the message to send.
### fn withRoomId

```jsonnet
withRoomId(value)
```

PARAMETERS:

* **value** (`string`)

(String) ID of the Webex Teams room where to send the messages.
ID of the Webex Teams room where to send the messages.
### fn withSettingsSecretRef

```jsonnet
withSettingsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)


### fn withSettingsSecretRefMixin

```jsonnet
withSettingsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


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