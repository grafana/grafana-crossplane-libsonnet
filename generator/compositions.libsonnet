local namespaced = import './namespaced.libsonnet';
local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.14/main.libsonnet';

local configuration(key, version) =
  local conf = crossplane.pkg.v1.configuration;
  conf.new(key)
  + conf.spec.withPackage('xpkg.upbound.io/grafana/' + key + ':' + version);

local groups =
  std.set(
    std.map(
      function(def)
        def.definition.spec.group,
      namespaced
    )
  );

function(configurationVersion) {
  [group]: configuration(group, configurationVersion)
  for group in groups
}
