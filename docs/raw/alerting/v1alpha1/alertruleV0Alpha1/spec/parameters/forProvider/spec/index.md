# spec



## Subpackages

* [notificationSettings](notificationSettings.md)
* [trigger](trigger.md)

## Index

* [`fn withAnnotations(value)`](#fn-withannotations)
* [`fn withAnnotationsMixin(value)`](#fn-withannotationsmixin)
* [`fn withExecErrState(value)`](#fn-withexecerrstate)
* [`fn withExpressions(value)`](#fn-withexpressions)
* [`fn withExpressionsMixin(value)`](#fn-withexpressionsmixin)
* [`fn withFor(value)`](#fn-withfor)
* [`fn withKeepFiringFor(value)`](#fn-withkeepfiringfor)
* [`fn withLabels(value)`](#fn-withlabels)
* [`fn withLabelsMixin(value)`](#fn-withlabelsmixin)
* [`fn withMissingSeriesEvalsToResolve(value)`](#fn-withmissingseriesevalstoresolve)
* [`fn withNoDataState(value)`](#fn-withnodatastate)
* [`fn withNotificationSettings(value)`](#fn-withnotificationsettings)
* [`fn withNotificationSettingsMixin(value)`](#fn-withnotificationsettingsmixin)
* [`fn withPanelRef(value)`](#fn-withpanelref)
* [`fn withPanelRefMixin(value)`](#fn-withpanelrefmixin)
* [`fn withPaused(value=true)`](#fn-withpaused)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withTrigger(value)`](#fn-withtrigger)
* [`fn withTriggerMixin(value)`](#fn-withtriggermixin)

## Fields

### fn withAnnotations

```jsonnet
withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts.
### fn withAnnotationsMixin

```jsonnet
withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts.
### fn withExecErrState

```jsonnet
withExecErrState(value)
```

PARAMETERS:

* **value** (`string`)

Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting.
### fn withExpressions

```jsonnet
withExpressions(value)
```

PARAMETERS:

* **value** (`object`)

A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.
### fn withExpressionsMixin

```jsonnet
withExpressionsMixin(value)
```

PARAMETERS:

* **value** (`object`)

A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.
### fn withFor

```jsonnet
withFor(value)
```

PARAMETERS:

* **value** (`string`)

The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending.
### fn withKeepFiringFor

```jsonnet
withKeepFiringFor(value)
```

PARAMETERS:

* **value** (`string`)

The amount of time for which the rule will considered to be Recovering after initially Firing. Before this time has elapsed, the rule will continue to fire once it's been triggered.
### fn withLabels

```jsonnet
withLabels(value)
```

PARAMETERS:

* **value** (`object`)

Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing.
### fn withLabelsMixin

```jsonnet
withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing.
### fn withMissingSeriesEvalsToResolve

```jsonnet
withMissingSeriesEvalsToResolve(value)
```

PARAMETERS:

* **value** (`number`)

The number of missing series evaluations that must occur before the rule is considered to be resolved.
### fn withNoDataState

```jsonnet
withNoDataState(value)
```

PARAMETERS:

* **value** (`string`)

Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting.
### fn withNotificationSettings

```jsonnet
withNotificationSettings(value)
```

PARAMETERS:

* **value** (`array`)

Notification settings for the rule. If specified, it overrides the notification policies.
### fn withNotificationSettingsMixin

```jsonnet
withNotificationSettingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

Notification settings for the rule. If specified, it overrides the notification policies.
### fn withPanelRef

```jsonnet
withPanelRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a panel that this alert rule is associated with. Should be an object with 'dashboard_uid' (string) and 'panel_id' (number) fields.
### fn withPanelRefMixin

```jsonnet
withPanelRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a panel that this alert rule is associated with. Should be an object with 'dashboard_uid' (string) and 'panel_id' (number) fields.
### fn withPaused

```jsonnet
withPaused(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

Sets whether the rule should be paused or not.
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

The title of the alert rule.
### fn withTrigger

```jsonnet
withTrigger(value)
```

PARAMETERS:

* **value** (`array`)

The trigger configuration for the alert rule.
### fn withTriggerMixin

```jsonnet
withTriggerMixin(value)
```

PARAMETERS:

* **value** (`array`)

The trigger configuration for the alert rule.