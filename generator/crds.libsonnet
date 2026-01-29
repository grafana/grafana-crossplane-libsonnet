std.filter(
  function(crd)
    crd.spec.group != 'grafana.crossplane.io'
    && !std.endsWith(crd.spec.group, 'grafana.m.crossplane.io'),
  std.parseYaml(importstr './crds.yaml'),
)
