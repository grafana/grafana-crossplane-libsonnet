local cngen = import 'github.com/Duologic/crossplane-namespaced-libsonnet/main.libsonnet';

local crds =
  std.filter(
    function(crd) crd.spec.group != 'grafana.crossplane.io',
    std.parseYaml(importstr './crds.yaml'),
  );

std.map(cngen.fromCRD, crds)
