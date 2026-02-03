# rule



## Index

* [`fn withActive(value=true)`](#fn-withactive)
* [`fn withAlert(value)`](#fn-withalert)
* [`fn withAnnotations(value)`](#fn-withannotations)
* [`fn withAnnotationsMixin(value)`](#fn-withannotationsmixin)
* [`fn withDisableInGroups(value)`](#fn-withdisableingroups)
* [`fn withDisableInGroupsMixin(value)`](#fn-withdisableingroupsmixin)
* [`fn withDuration(value)`](#fn-withduration)
* [`fn withExpr(value)`](#fn-withexpr)
* [`fn withLabels(value)`](#fn-withlabels)
* [`fn withLabelsMixin(value)`](#fn-withlabelsmixin)
* [`fn withRecord(value)`](#fn-withrecord)

## Fields

### fn withActive

```jsonnet
withActive(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether the rules file is active. Inactive rules are not evaluated. Defaults to true.
Whether this specific rule is active. This field is read-only and controlled by the API.
### fn withAlert

```jsonnet
withAlert(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the alert for alerting rules. Either 'record' or 'alert' must be specified, but not both.
The name of the alert for alerting rules. Either 'record' or 'alert' must be specified, but not both.
### fn withAnnotations

```jsonnet
withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Annotations to add to alerts (e.g., summary, description).
Annotations to add to alerts (e.g., summary, description).
### fn withAnnotationsMixin

```jsonnet
withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Annotations to add to alerts (e.g., summary, description).
Annotations to add to alerts (e.g., summary, description).
### fn withDisableInGroups

```jsonnet
withDisableInGroups(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of group names where this rule should be disabled. Useful for conditional rule enablement.
List of group names where this rule should be disabled. Useful for conditional rule enablement.
### fn withDisableInGroupsMixin

```jsonnet
withDisableInGroupsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of group names where this rule should be disabled. Useful for conditional rule enablement.
List of group names where this rule should be disabled. Useful for conditional rule enablement.
### fn withDuration

```jsonnet
withDuration(value)
```

PARAMETERS:

* **value** (`string`)

(String) How long the condition must be true before firing the alert (e.g., '5m'). Only applicable for alerting rules. Maps to 'for' in Prometheus.
How long the condition must be true before firing the alert (e.g., '5m'). Only applicable for alerting rules. Maps to 'for' in Prometheus.
### fn withExpr

```jsonnet
withExpr(value)
```

PARAMETERS:

* **value** (`string`)

(String) The PromQL expression to evaluate.
The PromQL expression to evaluate.
### fn withLabels

```jsonnet
withLabels(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Labels to attach to the resulting time series or alert.
Labels to attach to the resulting time series or alert.
### fn withLabelsMixin

```jsonnet
withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Labels to attach to the resulting time series or alert.
Labels to attach to the resulting time series or alert.
### fn withRecord

```jsonnet
withRecord(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the time series to output for recording rules. Either 'record' or 'alert' must be specified, but not both.
The name of the time series to output for recording rules. Either 'record' or 'alert' must be specified, but not both.