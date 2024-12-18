local cngen = import 'github.com/Duologic/crossplane-namespaced-libsonnet/main.libsonnet';

local crds =
  std.filter(
    function(crd) crd.spec.group != 'grafana.crossplane.io',
    std.parseYaml(importstr './crds.yaml'),
  );

// XRD metadata.name consists of `plural+group`, for some resources this became longer than 63 characters, which resulted in this error:
//   'cannot establish control of object: Composition.apiextensions.crossplane.io "stackserviceaccounttoken-namespaced" is invalid: metadata.labels: Invalid value:"xstackserviceaccounttokens.cloud.grafana.crossplane.io.namespaced": must be no more than 63 characters'
local renameGroup(obj) =
  assert std.trace(std.manifestJson(obj.definition.metadata), true);
  local name = std.strReplace(obj.definition.metadata.name, 'crossplane.io', 'net');
  assert std.length(name) <= 63 : 'CompositeResourceDefinition names must be no more than 63 characters';
  obj + {
    definition+: {
      metadata+: {
        name: name,
      },
      spec+: {
        group: std.strReplace(super.group, 'crossplane.io', 'net'),
      },
    },
  };

std.foldr(
  std.map,
  [
    renameGroup,
    cngen.fromCRD,
  ],
  crds,
)
