local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import 'zz/main.libsonnet';
{
  '#': d.package.newSub('enterprise', ''),

  role: {
    '#': d.package.newSub('role', ''),

    local role = raw.enterprise.v1alpha1.role,
    local roleForProvider = role.spec.parameters.forProvider,

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
      + roleForProvider.withName(name)
      + roleForProvider.withUid(name)
      + roleForProvider.withAutoIncrementVersion(),

    '#withPermissions': d.func.new(
      'withPermissions` adds permissions to the role.',
      [d.argument.new('permissions', d.T.string)]
    ),
    withPermissions(permissions):
      roleForProvider.withPermissions(permissions),

    permission: roleForProvider.permissions,
  },

  roleAssignment: {
    '#': d.package.newSub('roleAssignment', ''),
    local roleAssignmentItem = raw.enterprise.v1alpha1.roleAssignmentItem,
    local roleAssignmentItemForProvider = roleAssignmentItem.spec.parameters.forProvider,

    '#new': d.func.new(
      |||
        `new` creates a new role assignment.

         Example:
         ```jsonnet
         roleAssignment.new('eng-custom_role', 'custom_role')
         + roleAssignment.withTeam('engineering')
         ```
      |||,
      [
        d.argument.new('name', d.T.string),
        d.argument.new('roleUid', d.T.string),
      ]
    ),
    new(name, roleUid):
      local resourceName = xtd.ascii.stringToRFC1123(name);
      roleAssignmentItem.new(resourceName)
      + roleAssignmentItemForProvider.withRoleUid(name),

    '#withTeam': d.func.new(
      'withTeam` assigns role to a team',
      [d.argument.new('value', d.T.string)]
    ),
    withTeam(value):
      roleAssignmentItemForProvider.withTeamId(value),

    '#withUser': d.func.new(
      'withUser` assigns role to a user',
      [d.argument.new('value', d.T.string)]
    ),
    withUser(value):
      roleAssignmentItemForProvider.withUserId(value),

    '#withServiceAccount': d.func.new(
      'withServiceAccount` assigns role to a service account',
      [d.argument.new('value', d.T.string)]
    ),
    withServiceAccount(value):
      roleAssignmentItemForProvider.withServiceAccountId(value),
  },
}
