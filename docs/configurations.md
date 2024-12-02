# configurations

This package contains Configurations for the generated Compositions and CompositeResourceDefinitions (XRD). A single configuration imports compositions for a resource group.

The Configurations can be imported like this:

```jsonnet
local grafanaplane = import 'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
local configurations = grafanaplane.configurations;

[
  configuration.alerting,
  configuration.cloud,
  configuration.enterprise,
  configuration.ml,
  configuration.oncall,
  configuration.oss,
  configuration.slo,
  configuration.sm
]
```

