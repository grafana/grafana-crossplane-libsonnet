# ruleGroup.rules

Provides functions to set up common rules.


## Index

* [`obj prometheus`](#obj-prometheus)
  * [`fn fromAlertingRule(alertRule, datasourceUid="grafanacloud-prom")`](#fn-prometheusfromalertingrule)
  * [`fn fromRecordingRule(recordingRule, datasourceUid="grafanacloud-prom")`](#fn-prometheusfromrecordingrule)

## Fields

### obj prometheus


#### fn prometheus.fromAlertingRule

```jsonnet
prometheus.fromAlertingRule(alertRule, datasourceUid="grafanacloud-prom")
```

PARAMETERS:

* **alertRule** (`object`)
* **datasourceUid** (`string`)
   - default value: `"grafanacloud-prom"`

`fromAlertingRule` creates a Grafana Managed Alerting rule from a Prometheus alerting rule

ref: https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/

#### fn prometheus.fromRecordingRule

```jsonnet
prometheus.fromRecordingRule(recordingRule, datasourceUid="grafanacloud-prom")
```

PARAMETERS:

* **recordingRule** (`object`)
* **datasourceUid** (`string`)
   - default value: `"grafanacloud-prom"`

`fromRecordingRule` creates a Grafana Managed Alerting rule from a Prometheus recording rule

ref: https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/
