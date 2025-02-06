# slack



## Index

* [`fn withColor(value)`](#fn-withcolor)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withEndpointUrl(value)`](#fn-withendpointurl)
* [`fn withIconEmoji(value)`](#fn-withiconemoji)
* [`fn withIconUrl(value)`](#fn-withiconurl)
* [`fn withMentionChannel(value)`](#fn-withmentionchannel)
* [`fn withMentionGroups(value)`](#fn-withmentiongroups)
* [`fn withMentionUsers(value)`](#fn-withmentionusers)
* [`fn withRecipient(value)`](#fn-withrecipient)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withText(value)`](#fn-withtext)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withTokenSecretRef(value)`](#fn-withtokensecretref)
* [`fn withTokenSecretRefMixin(value)`](#fn-withtokensecretrefmixin)
* [`fn withUrlSecretRef(value)`](#fn-withurlsecretref)
* [`fn withUrlSecretRefMixin(value)`](#fn-withurlsecretrefmixin)
* [`fn withUsername(value)`](#fn-withusername)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)
* [`obj tokenSecretRef`](#obj-tokensecretref)
  * [`fn withKey(value)`](#fn-tokensecretrefwithkey)
  * [`fn withName(value)`](#fn-tokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-tokensecretrefwithnamespace)
* [`obj urlSecretRef`](#obj-urlsecretref)
  * [`fn withKey(value)`](#fn-urlsecretrefwithkey)
  * [`fn withName(value)`](#fn-urlsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-urlsecretrefwithnamespace)

## Fields

### fn withColor

```jsonnet
withColor(value)
```

PARAMETERS:

* **value** (`string`)

(String) Templated color of the slack message.
Templated color of the slack message.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withEndpointUrl

```jsonnet
withEndpointUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) Use this to override the Slack API endpoint URL to send requests to.
Use this to override the Slack API endpoint URL to send requests to.
### fn withIconEmoji

```jsonnet
withIconEmoji(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of a Slack workspace emoji to use as the bot icon.
The name of a Slack workspace emoji to use as the bot icon.
### fn withIconUrl

```jsonnet
withIconUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) A URL of an image to use as the bot icon.
A URL of an image to use as the bot icon.
### fn withMentionChannel

```jsonnet
withMentionChannel(value)
```

PARAMETERS:

* **value** (`string`)

(String) Describes how to ping the slack channel that messages are being sent to. Options are here for an @here ping, channel for @channel, or empty for no ping.
Describes how to ping the slack channel that messages are being sent to. Options are `here` for an @here ping, `channel` for @channel, or empty for no ping.
### fn withMentionGroups

```jsonnet
withMentionGroups(value)
```

PARAMETERS:

* **value** (`string`)

separated list of groups to mention in the message.
Comma-separated list of groups to mention in the message.
### fn withMentionUsers

```jsonnet
withMentionUsers(value)
```

PARAMETERS:

* **value** (`string`)

separated list of users to mention in the message.
Comma-separated list of users to mention in the message.
### fn withRecipient

```jsonnet
withRecipient(value)
```

PARAMETERS:

* **value** (`string`)

(String) Channel, private group, or IM channel (can be an encoded ID or a name) to send messages to.
Channel, private group, or IM channel (can be an encoded ID or a name) to send messages to.
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
### fn withText

```jsonnet
withText(value)
```

PARAMETERS:

* **value** (`string`)

(String) Templated content of the message.
Templated content of the message.
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated title of the message.
Templated title of the message.
### fn withTokenSecretRef

```jsonnet
withTokenSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The bearer token used to authorize the client.
A Slack API token,for sending messages directly without the webhook method.
### fn withTokenSecretRefMixin

```jsonnet
withTokenSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The bearer token used to authorize the client.
A Slack API token,for sending messages directly without the webhook method.
### fn withUrlSecretRef

```jsonnet
withUrlSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
A Slack webhook URL,for sending messages via the webhook method.
### fn withUrlSecretRefMixin

```jsonnet
withUrlSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String) The URL of the Alertmanager instance.
A Slack webhook URL,for sending messages via the webhook method.
### fn withUsername

```jsonnet
withUsername(value)
```

PARAMETERS:

* **value** (`string`)

(String) The user name to use when making a call to the Kafka REST Proxy
Username for the bot to use.
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