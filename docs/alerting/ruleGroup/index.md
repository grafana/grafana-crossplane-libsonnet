# ruleGroup

Provides functions to set up a ruleGroup.

## Subpackages

* [rules](rules.md)

## Index

* [`fn fromPrometheusRuleGroup(group, folderUid, datasourceUid="grafanacloud-prom")`](#fn-fromprometheusrulegroup)
* [`fn new(name, folderUid)`](#fn-new)
* [`fn withRules(rules)`](#fn-withrules)

## Fields

### fn fromPrometheusRuleGroup

```jsonnet
fromPrometheusRuleGroup(group, folderUid, datasourceUid="grafanacloud-prom")
```

PARAMETERS:

* **group** (`object`)
* **folderUid** (`string`)
* **datasourceUid** (`string`)
   - default value: `"grafanacloud-prom"`

`fromPrometheusRuleGroup` creates a new rule group from a Prometheus rule group.

ref: https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/

### fn new

```jsonnet
new(name, folderUid)
```

PARAMETERS:

* **name** (`string`)
* **folderUid** (`string`)

`new` creates a new rule group resource.
### fn withRules

```jsonnet
withRules(rules)
```

PARAMETERS:

* **rules** (`array`)

`withRules` adds rules to a rule group.