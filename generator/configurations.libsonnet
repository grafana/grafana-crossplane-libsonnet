local namespaced = import './namespaced.libsonnet';
local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.17/main.libsonnet';

local configuration(key, version) =
  local conf = crossplane.pkg.v1.configuration;
  conf.new(key)
  + conf.spec.withPackage('ghcr.io/grafana/crossplane/' + key + ':' + version);

local gvkXRDs =
  std.flatMap(
    function(def) [
      {
        group: def.definition.spec.group,
        version: v.name,
        kind: def.definition.spec.claimNames.kind,
      }
      for v in def.definition.spec.versions
    ],
    namespaced
  );

local gvkCRDs =
  std.map(
    function(def) {
      local s = std.splitLimitR(def.composition.spec.pipeline[0].input.resources[0].base.apiVersion, '/', 1),
      group: s[0],
      version: s[1],
      kind: def.composition.spec.pipeline[0].input.resources[0].base.kind,
    },
    namespaced
  );

local groupSet(gvks) =
  std.set(
    std.map(
      function(gvk)
        gvk.group,
      gvks,
    )
  );

local shortGroupName(group) =
  std.splitLimit(group, '.', 1)[0];

local groupFilter(group) =
  function(gvk) gvk.group == group;

local gvkByGroup(name, gvks) = {
  [shortGroupName(group)]+: {
    [name]+: [
      gvk
      for gvk in std.filter(groupFilter(group), gvks)
    ],
  }
  for group in groupSet(gvks)
};

function(version='main') {
  configurations: {
    [shortGroupName(group)]: configuration('grafana-namespaced-' + shortGroupName(group), version)
    for group in groupSet(gvkXRDs)
  },

  gvks:
    gvkByGroup('xrd', gvkXRDs)
    + gvkByGroup('crd', gvkCRDs),
}
