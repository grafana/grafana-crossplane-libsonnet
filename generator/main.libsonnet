local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';

local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local processor = crdsonnet.processor.new('ast');

local utils = import './utils.libsonnet';
local configurations = import './configurations.libsonnet';

local definitions =
  std.map(
    function(o) o.definition,
    (import './namespaced.libsonnet'),
  );

local globalDefinitions =
  std.filter(
    function(crd) crd.spec.group == 'grafana.crossplane.io',
    std.parseYaml(importstr './crds.yaml'),
  );

local compositions =
  std.foldl(
    function(acc, definition)
      local render = crdsonnet.xrd.render(definition, 'grafana.net', processor);

      local group = helpers.getGroupKey(definition.spec.group, 'grafana.net');
      local version = 'v1alpha1';
      local kind = helpers.camelCaseKind(crdsonnet.xrd.getKind(definition));

      local renderWithDocs = utils.mergeDocstring(group, version, kind, render);

      autils.deepMergeObjects([acc, renderWithDocs]),
    definitions,
    a.object.withMembers([]),
  );

local global =
  std.foldl(
    function(acc, definition)
      local render = crdsonnet.crd.render(definition, 'grafana.crossplane.io', processor);

      local group = helpers.getGroupKey(definition.spec.group, 'grafana.crossplane.io');
      local version = definition.spec.versions[0].name;
      local kind = helpers.camelCaseKind(crdsonnet.crd.getKind(definition));

      local renderWithDocs = utils.mergeDocstring(group, version, kind, render);

      autils.deepMergeObjects([acc, renderWithDocs]),
    globalDefinitions,
    a.object.withMembers([])
  );

local ast = autils.deepMergeObjects([compositions, global]);

function(version='main')
  local files = utils.splitIntoFiles(ast, 'zz');
  {
    [file.key]: file.value.toString()
    for file in std.objectKeysValues(files)
  }
  + {
    'zz/configurations.libsonnet': std.manifestJson(configurations(version)),
    'zz/version.libsonnet': std.manifestJson(version),
  }
