# spec



## Subpackages

* [trigger](trigger.md)

## Index

* [`fn withExpressions(value)`](#fn-withexpressions)
* [`fn withExpressionsMixin(value)`](#fn-withexpressionsmixin)
* [`fn withLabels(value)`](#fn-withlabels)
* [`fn withLabelsMixin(value)`](#fn-withlabelsmixin)
* [`fn withMetric(value)`](#fn-withmetric)
* [`fn withPaused(value=true)`](#fn-withpaused)
* [`fn withTargetDatasourceUid(value)`](#fn-withtargetdatasourceuid)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withTrigger(value)`](#fn-withtrigger)
* [`fn withTriggerMixin(value)`](#fn-withtriggermixin)

## Fields

### fn withExpressions

```jsonnet
withExpressions(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.
A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.
### fn withExpressionsMixin

```jsonnet
withExpressionsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.
A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.
### fn withLabels

```jsonnet
withLabels(value)
```

PARAMETERS:

* **value** (`object`)

value pairs to attach to the recorded metric.
Key-value pairs to attach to the recorded metric.
### fn withLabelsMixin

```jsonnet
withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

value pairs to attach to the recorded metric.
Key-value pairs to attach to the recorded metric.
### fn withMetric

```jsonnet
withMetric(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the metric to write to.
The name of the metric to write to.
### fn withPaused

```jsonnet
withPaused(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Sets whether the recording rule should be paused or not.
Sets whether the recording rule should be paused or not.
### fn withTargetDatasourceUid

```jsonnet
withTargetDatasourceUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) The UID of the datasource to write the metric to.
The UID of the datasource to write the metric to.
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The title of the recording rule.
The title of the recording rule.
### fn withTrigger

```jsonnet
withTrigger(value)
```

PARAMETERS:

* **value** (`array`)

(Block, Optional) The trigger configuration for the recording rule. (see below for nested schema)
The trigger configuration for the recording rule.
### fn withTriggerMixin

```jsonnet
withTriggerMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block, Optional) The trigger configuration for the recording rule. (see below for nested schema)
The trigger configuration for the recording rule.