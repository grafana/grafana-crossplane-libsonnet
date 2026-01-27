# pagerduty



## Index

* [`fn withClass(value)`](#fn-withclass)
* [`fn withClient(value)`](#fn-withclient)
* [`fn withClientUrl(value)`](#fn-withclienturl)
* [`fn withComponent(value)`](#fn-withcomponent)
* [`fn withDetails(value)`](#fn-withdetails)
* [`fn withDetailsMixin(value)`](#fn-withdetailsmixin)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withGroup(value)`](#fn-withgroup)
* [`fn withIntegrationKeySecretRef(value)`](#fn-withintegrationkeysecretref)
* [`fn withIntegrationKeySecretRefMixin(value)`](#fn-withintegrationkeysecretrefmixin)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withSeverity(value)`](#fn-withseverity)
* [`fn withSource(value)`](#fn-withsource)
* [`fn withSummary(value)`](#fn-withsummary)
* [`fn withUrl(value)`](#fn-withurl)
* [`obj integrationKeySecretRef`](#obj-integrationkeysecretref)
  * [`fn withKey(value)`](#fn-integrationkeysecretrefwithkey)
  * [`fn withName(value)`](#fn-integrationkeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-integrationkeysecretrefwithnamespace)

## Fields

### fn withClass

```jsonnet
withClass(value)
```

PARAMETERS:

* **value** (`string`)

(String) The class or type of event, for example ping failure.
The class or type of event, for example `ping failure`.
### fn withClient

```jsonnet
withClient(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the monitoring client that is triggering this event.
The name of the monitoring client that is triggering this event.
### fn withClientUrl

```jsonnet
withClientUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the monitoring client that is triggering this event.
The URL of the monitoring client that is triggering this event.
### fn withComponent

```jsonnet
withComponent(value)
```

PARAMETERS:

* **value** (`string`)

(String) The component being affected by the event.
The component being affected by the event.
### fn withDetails

```jsonnet
withDetails(value)
```

PARAMETERS:

* **value** (`object`)

(String) The templated details to include with the message.
A set of arbitrary key/value pairs that provide further detail about the incident.
### fn withDetailsMixin

```jsonnet
withDetailsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String) The templated details to include with the message.
A set of arbitrary key/value pairs that provide further detail about the incident.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withGroup

```jsonnet
withGroup(value)
```

PARAMETERS:

* **value** (`string`)

(String) The group to which the provided component belongs to.
The group to which the provided component belongs to.
### fn withIntegrationKeySecretRef

```jsonnet
withIntegrationKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The PagerDuty API key.
The PagerDuty API key.
### fn withIntegrationKeySecretRefMixin

```jsonnet
withIntegrationKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The PagerDuty API key.
The PagerDuty API key.
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


### fn withSeverity

```jsonnet
withSeverity(value)
```

PARAMETERS:

* **value** (`string`)

(String) The PagerDuty event severity level. Default is critical.
The PagerDuty event severity level. Default is `critical`.
### fn withSource

```jsonnet
withSource(value)
```

PARAMETERS:

* **value** (`string`)

(String) The unique location of the affected system.
The unique location of the affected system.
### fn withSummary

```jsonnet
withSummary(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated summary of the Jira issue. Maximum length is 255 characters.
The templated summary message of the event.
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Alertmanager instance.
The URL to send API requests to
### obj integrationKeySecretRef


#### fn integrationKeySecretRef.withKey

```jsonnet
integrationKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn integrationKeySecretRef.withName

```jsonnet
integrationKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn integrationKeySecretRef.withNamespace

```jsonnet
integrationKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.