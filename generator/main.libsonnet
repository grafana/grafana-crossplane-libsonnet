local parser = import 'github.com/Duologic/jsonnet-parser/parser.libsonnet';
local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local processor = crdsonnet.processor.new('ast');

local definitions = import './namespaced.libsonnet';

local globalDefinitions =
  std.filter(
    function(crd) crd.spec.group == 'grafana.crossplane.io',
    std.parseYaml(importstr './crds.yaml'),
  );


local subPackageDocstring(name, help='') =
  a.object.new([
    a.field.new(
      a.string.new('#'),
      a.literal.new(
        std.manifestJsonEx(
          d.package.newSub(name, help)
          , '  ', ''
        ),
      ),
    ),
  ]);

local mergeDocstring(group, version, name, obj, help='') =
  autils.deepMergeObjects([
    a.object.new([
      a.field.new(
        a.id.new(group),
        a.object.new([
          a.field.new(
            a.string.new('#'),
            a.literal.new(
              std.manifestJsonEx(
                d.package.newSub(group, '')
                , '  ', ''
              ),
            ),
          ),
          a.field.new(
            a.id.new(version),
            a.object.new([
              a.field.new(
                a.id.new(name),
                subPackageDocstring(name, help)
              ),
            ]),
          ),
        ]),
      ),
    ]),
    obj,
  ]);

local compositions =
  std.foldl(
    function(acc, def)
      local render = crdsonnet.xrd.render(def.definition, 'grafana.net', processor);

      local group = helpers.getGroupKey(def.definition.spec.group, 'grafana.net');
      local version = 'v1alpha1';
      local kind = helpers.camelCaseKind(crdsonnet.xrd.getKind(def.definition));

      local renderWithDocs = mergeDocstring(group, version, kind, render);

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

      local renderWithDocs = mergeDocstring(group, version, kind, render);

      autils.deepMergeObjects([acc, renderWithDocs]),
    globalDefinitions,
    a.object.withMembers([])
  );

local ast = autils.deepMergeObjects([compositions, global]);

local splitIntoFiles(objast, sub='', depth=1, maxDepth=5) =
  local subdir = if sub != '' then sub + '/' else '';
  std.foldl(
    function(acc, member)
      if member.type == 'field'
         && member.expr.type == 'object'
         && !std.startsWith(member.fieldname.string, '#')
      then
        acc
        + {
          [subdir + 'main.libsonnet']+:
            a.object.withMembersMixin([
              member
              + a.field.withExpr(
                if depth != maxDepth
                then a.import_statement.new('./' + member.fieldname.string + '/main.libsonnet')
                else a.import_statement.new('./' + member.fieldname.string + '.libsonnet')
              ),
            ]),
        }
        + (if depth != maxDepth && member.fieldname.string != 'global'
           then splitIntoFiles(member.expr, subdir + member.fieldname.string, depth + 1)
           else {
             [subdir + member.fieldname.string + '.libsonnet']: member.expr,
           })
      else
        acc
        + {
          [subdir + 'main.libsonnet']+:
            a.object.withMembersMixin([member]),
        }
    ,
    objast.members,
    {
      [subdir + 'main.libsonnet']:
        a.object.new([]),
    }
  );

function(version='main')
  local files = splitIntoFiles(ast);
  {
    [file.key]: file.value.toString()
    for file in std.objectKeysValues(files)
    if file.key != 'main.libsonnet'
  }
  + {
    'raw.libsonnet': (files['main.libsonnet']).toString(),
    'version.libsonnet': std.manifestJson(version),
  }
