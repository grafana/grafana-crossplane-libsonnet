# group



## Subpackages

* [rule](rule.md)

## Index

* [`fn withInterval(value)`](#fn-withinterval)
* [`fn withName(value)`](#fn-withname)
* [`fn withRule(value)`](#fn-withrule)
* [`fn withRuleMixin(value)`](#fn-withrulemixin)

## Fields

### fn withInterval

```jsonnet
withInterval(value)
```

PARAMETERS:

* **value** (`string`)

(String) Evaluation interval for this group (e.g., '30s', '1m'). If not specified, uses the global evaluation interval.
Evaluation interval for this group (e.g., '30s', '1m'). If not specified, uses the global evaluation interval.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the Prometheus rules file. This will be stored with a .custom extension. Must follow naming validation rules (alphanumeric, hyphens, underscores).
The name of the rule group (e.g., 'latency_monitoring').
### fn withRule

```jsonnet
withRule(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1) List of Prometheus rules in this group. (see below for nested schema)
List of Prometheus rules in this group.
### fn withRuleMixin

```jsonnet
withRuleMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1) List of Prometheus rules in this group. (see below for nested schema)
List of Prometheus rules in this group.