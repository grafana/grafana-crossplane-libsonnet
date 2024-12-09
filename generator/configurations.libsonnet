local namespaced = import './namespaced.libsonnet';
local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.17/main.libsonnet';

local configuration(key, version) =
  local conf = crossplane.pkg.v1.configuration;
  conf.new(key)
  + conf.spec.withPackage('ghcr.io/grafana/crossplane/' + key + ':' + version);

local groups =
  std.set(
    std.map(
      function(def)
        std.splitLimit(def.definition.spec.group, '.', 1)[0],
      namespaced
    )
  );

function(configurationVersion) {
  [group]: configuration('grafana-namespaced-' + group, configurationVersion)
  for group in groups
}
