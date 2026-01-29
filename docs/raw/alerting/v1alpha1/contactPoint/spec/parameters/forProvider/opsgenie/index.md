# opsgenie



## Subpackages

* [responders](responders.md)

## Index

* [`fn withApiKeySecretRef(value)`](#fn-withapikeysecretref)
* [`fn withApiKeySecretRefMixin(value)`](#fn-withapikeysecretrefmixin)
* [`fn withAutoClose(value=true)`](#fn-withautoclose)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withOverridePriority(value=true)`](#fn-withoverridepriority)
* [`fn withResponders(value)`](#fn-withresponders)
* [`fn withRespondersMixin(value)`](#fn-withrespondersmixin)
* [`fn withSendTagsAs(value)`](#fn-withsendtagsas)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withUrl(value)`](#fn-withurl)
* [`obj apiKeySecretRef`](#obj-apikeysecretref)
  * [`fn withKey(value)`](#fn-apikeysecretrefwithkey)
  * [`fn withName(value)`](#fn-apikeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-apikeysecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)

## Fields

### fn withApiKeySecretRef

```jsonnet
withApiKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The OpsGenie API key to use.
The OpsGenie API key to use.
### fn withApiKeySecretRefMixin

```jsonnet
withApiKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The OpsGenie API key to use.
The OpsGenie API key to use.
### fn withAutoClose

```jsonnet
withAutoClose(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

close alerts in OpsGenie when they resolve in the Alertmanager.
Whether to auto-close alerts in OpsGenie when they resolve in the Alertmanager.
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated description of the Jira issue. Maximum length is 32767 characters.
A templated high-level description to use for the alert.
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
The templated content of the message.
### fn withOverridePriority

```jsonnet
withOverridePriority(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to allow the alert priority to be configured via the value of the og_priority annotation on the alert.
Whether to allow the alert priority to be configured via the value of the `og_priority` annotation on the alert.
### fn withResponders

```jsonnet
withResponders(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+. (see below for nested schema)
Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+.
### fn withRespondersMixin

```jsonnet
withRespondersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+. (see below for nested schema)
Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+.
### fn withSendTagsAs

```jsonnet
withSendTagsAs(value)
```

PARAMETERS:

* **value** (`string`)

(String) Whether to send annotations to OpsGenie as Tags, Details, or both. Supported values are tags, details, both, or empty to use the default behavior of Tags.
Whether to send annotations to OpsGenie as Tags, Details, or both. Supported values are `tags`, `details`, `both`, or empty to use the default behavior of Tags.
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
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Alertmanager instance.
Allows customization of the OpsGenie API URL.
### obj apiKeySecretRef


#### fn apiKeySecretRef.withKey

```jsonnet
apiKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn apiKeySecretRef.withName

```jsonnet
apiKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn apiKeySecretRef.withNamespace

```jsonnet
apiKeySecretRef.withNamespace(value)
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