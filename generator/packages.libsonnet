local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.14/main.libsonnet';
local namespaced = import 'namespaced.libsonnet';

local package(key) =
  local metaConf = crossplane.meta.v1.configuration;
  metaConf.new(key)
  + metaConf.metadata.withAnnotations({
    'meta.crossplane.io/maintainer': 'Grafana',
    'meta.crossplane.io/source': 'github.com/grafana/grafana-crossplane-libsonnet',
    'meta.crossplane.io/license': 'Apache-2.0',
    'meta.crossplane.io/description': 'This configuration provides Compositions that map 1:1 to the managed resources with the only goal is to provide a namespaced resource of the same managed resource.',
  })
  + metaConf.spec.crossplane.withVersion('>=v1.17')
  + metaConf.spec.withDependsOn(
    metaConf.spec.dependsOn.withProvider('xpkg.upbound.io/grafana/provider-grafana')
    + metaConf.spec.dependsOn.withVersion('>=v0.21.0')
  );

local manifest(value) = std.manifestYamlDoc(value, true, false);

std.foldl(
  function(acc, item)
    local group = item.definition.spec.group;
    local kind = item.definition.spec.claimNames.kind;
    acc
    + {
      [group + '/package.yaml']: manifest(package(group)),
      [group + '/Composition-' + kind + '.yaml']: manifest(item.composition),
      [group + '/CompositeResourceDefinition-' + kind + '.yaml']: manifest(item.composition),
    },
  namespaced,
  {}
)

