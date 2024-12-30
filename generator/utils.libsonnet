local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  local root = self,

  subPackageDocstring(name, help=''):
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
    ]),

  mergeDocstring(group, version, name, obj, help=''):
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
                  root.subPackageDocstring(name, help)
                ),
              ]),
            ),
          ]),
        ),
      ]),
      obj,
    ]),

  splitIntoFiles(objast, sub='', depth=1, maxDepth=5):
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
             then root.splitIntoFiles(member.expr, subdir + member.fieldname.string, depth + 1)
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
    ),
}
