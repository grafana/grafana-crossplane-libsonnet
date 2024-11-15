# rule



## Subpackages

* [data](data/index.md)
* [notificationSettings](notificationSettings.md)

## Index

* [`fn withAnnotations(value)`](#fn-withannotations)
* [`fn withAnnotationsMixin(value)`](#fn-withannotationsmixin)
* [`fn withCondition(value)`](#fn-withcondition)
* [`fn withData(value)`](#fn-withdata)
* [`fn withDataMixin(value)`](#fn-withdatamixin)
* [`fn withExecErrState(value)`](#fn-withexecerrstate)
* [`fn withFor(value)`](#fn-withfor)
* [`fn withIsPaused(value=true)`](#fn-withispaused)
* [`fn withLabels(value)`](#fn-withlabels)
* [`fn withLabelsMixin(value)`](#fn-withlabelsmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withNoDataState(value)`](#fn-withnodatastate)
* [`fn withNotificationSettings(value)`](#fn-withnotificationsettings)
* [`fn withNotificationSettingsMixin(value)`](#fn-withnotificationsettingsmixin)

## Fields

### fn withAnnotations

```jsonnet
withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

value pairs of metadata to attach to the alert rule. They add additional information, such as a summary or runbook_url, to help identify and investigate alerts. The dashboardUId and panelId annotations, which link alerts to a panel, must be set together. Defaults to map[].
Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts. The `dashboardUId` and `panelId` annotations, which link alerts to a panel, must be set together. Defaults to `map[]`.
### fn withAnnotationsMixin

```jsonnet
withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

value pairs of metadata to attach to the alert rule. They add additional information, such as a summary or runbook_url, to help identify and investigate alerts. The dashboardUId and panelId annotations, which link alerts to a panel, must be set together. Defaults to map[].
Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts. The `dashboardUId` and `panelId` annotations, which link alerts to a panel, must be set together. Defaults to `map[]`.
### fn withCondition

```jsonnet
withCondition(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ref_id of the query node in the data field to use as the alert condition.
The `ref_id` of the query node in the `data` field to use as the alert condition.
### fn withData

```jsonnet
withData(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1) A sequence of stages that describe the contents of the rule. (see below for nested schema)
A sequence of stages that describe the contents of the rule.
### fn withDataMixin

```jsonnet
withDataMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1) A sequence of stages that describe the contents of the rule. (see below for nested schema)
A sequence of stages that describe the contents of the rule.
### fn withExecErrState

```jsonnet
withExecErrState(value)
```

PARAMETERS:

* **value** (`string`)

(String) Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting. Defaults to Alerting.
Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting. Defaults to `Alerting`.
### fn withFor

```jsonnet
withFor(value)
```

PARAMETERS:

* **value** (`string`)

(String) The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending. Defaults to 0.
The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending. Defaults to `0`.
### fn withIsPaused

```jsonnet
withIsPaused(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Sets whether the alert should be paused or not. Defaults to false.
Sets whether the alert should be paused or not. Defaults to `false`.
### fn withLabels

```jsonnet
withLabels(value)
```

PARAMETERS:

* **value** (`object`)

value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to map[].
Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to `map[]`.
### fn withLabelsMixin

```jsonnet
withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to map[].
Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to `map[]`.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the rule group.
The name of the alert rule.
### fn withNoDataState

```jsonnet
withNoDataState(value)
```

PARAMETERS:

* **value** (`string`)

(String) Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting. Defaults to NoData.
Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting. Defaults to `NoData`.
### fn withNotificationSettings

```jsonnet
withNotificationSettings(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Max: 1) Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' enabled. (see below for nested schema)
Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' enabled.
### fn withNotificationSettingsMixin

```jsonnet
withNotificationSettingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Max: 1) Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' enabled. (see below for nested schema)
Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' enabled.