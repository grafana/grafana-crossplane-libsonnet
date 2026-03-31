local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      role = raw.enterprise.v1alpha1.role,
      forProvider = role.spec.parameters.forProvider;

{
  '#': d.package.newSub('enterprise.role', ''),

  '#new': d.func.new(
    |||
      `new` creates a new role.

       Example:
       ```jsonnet
       role.new('custom_role')
       + role.withPermissions([
         role.permission.withScope('folders:uid:general')
         + role.permission.withAction('dashboards:create')
       ])
       ```
    |||,
    [d.argument.new('name', d.T.string)]
  ),
  new(name):
    local resourceName = xtd.ascii.stringToRFC1123(name);
    role.new(resourceName)
    + role.spec.parameters.withExternalName(name)
    + forProvider.withName(name)
    + forProvider.withUid(name)
    + forProvider.withAutoIncrementVersion(),

  '#withPermissions': d.func.new(
    'withPermissions` adds permissions to the role.',
    [d.argument.new('permissions', d.T.string)]
  ),
  withPermissions(permissions):
    forProvider.withPermissions(permissions),

  permission: forProvider.permissions,
}
