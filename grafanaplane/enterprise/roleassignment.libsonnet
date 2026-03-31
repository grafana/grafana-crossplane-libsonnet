local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      roleAssignmentItem = raw.enterprise.v1alpha1.roleAssignmentItem,
      forProvider = roleAssignmentItem.spec.parameters.forProvider;

{
  '#': d.package.newSub('enterprise.roleAssignment', ''),

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
    + forProvider.withRoleUid(name),

  '#newTeamAssignment': d.func.new(
    |||
      `newTeamAssignment` creates a new role assignment for a specific team.

      It'll ensure the kubernetes metadata.name is a unique and valid name based on the team and role values.
    |||,
    [
      d.argument.new('team', d.T.string),
      d.argument.new('role', d.T.string),
    ]
  ),
  newTeamAssignment(team, role):
    local _team = xtd.ascii.stringToRFC1123(team);

    local _role = xtd.ascii.stringToRFC1123(role);
    local _rolemd5 = xtd.ascii.stringToRFC1123(std.md5(role));

    local _name = _team + '-' + _role;
    local _namemd5 = _team + '-' + _rolemd5;

    self.new(
      (if std.length(_name) < 63
       then _name
       else _namemd5),
      role,
    )
    + self.withTeam(team),

  '#withTeam': d.func.new(
    'withTeam` assigns role to a team',
    [d.argument.new('value', d.T.string)]
  ),
  withTeam(value):
    forProvider.withTeamId(value),

  '#withUser': d.func.new(
    'withUser` assigns role to a user',
    [d.argument.new('value', d.T.string)]
  ),
  withUser(value):
    forProvider.withUserId(value),

  '#withServiceAccount': d.func.new(
    'withServiceAccount` assigns role to a service account',
    [d.argument.new('value', d.T.string)]
  ),
  withServiceAccount(value):
    forProvider.withServiceAccountId(value),
}
