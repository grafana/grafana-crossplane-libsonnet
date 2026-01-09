local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.17/main.libsonnet';

local xrds =
  std.map(
    function(o) o.definition,
    (import './namespaced.libsonnet'),
  );

local crds =
  std.filter(
    function(crd) crd.spec.group != 'grafana.crossplane.io',
    std.parseYaml(importstr './crds.yaml'),
  );

local gvkXRDs =
  std.flatMap(
    function(definition) [
      {
        group: definition.spec.group,
        version: v.name,
        kind: definition.spec.claimNames.kind,
        plural: definition.spec.claimNames.plural,
      }
      for v in definition.spec.versions
    ],
    xrds
  );

local gvkCRDs =
  std.flatMap(
    function(definition) [
      {
        group: definition.spec.group,
        version: v.name,
        kind: definition.spec.names.kind,
        plural: definition.spec.names.plural,
      }
      for v in definition.spec.versions
    ],
    crds
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

local configuration(group) =
  |||-
    %(key)s(version): {
      apiVersion: 'pkg.crossplane.io/v1',
      kind: 'Configuration',
      metadata: {
        annotations: {
          'tanka.dev/namespaced': 'false',
        },
        name: '%(name)s',
      },
      spec: {
        package: 'ghcr.io/grafana/crossplane/%(name)s:%%s' %% version,
      },
    },
  ||| % {
    key: shortGroupName(group),
    name: 'grafana-namespaced-' + shortGroupName(group),
  };

{
  configurations:
    std.lines(
      ['{']
      + std.map(
        configuration,
        groupSet(gvkXRDs)
      )
      + ['}']
    ),

  gvks:
    gvkByGroup('xrd', gvkXRDs)
    + gvkByGroup('crd', gvkCRDs),
}
