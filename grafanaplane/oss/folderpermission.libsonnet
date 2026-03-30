local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      folderPermission = raw.oss.v1alpha1.folderPermission,
      forProvider = folderPermission.spec.parameters.forProvider;

{
  '#': d.package.newSub('oss.folderPermission', ''),

  '#forFolder': d.func.new(
    '`forFolder` configures the permission for a folder. `folderResource` can be created by `folder.new()`.',
    [d.argument.new('folderResource', d.T.object)]
  ),
  forFolder(folderResource):
    folderPermission.new(folderResource.metadata.name)
    + forProvider.withFolderUid(folderResource.spec.parameters.forProvider.uid),

  permissions: forProvider.permissions,

  '#withPermissions': d.func.new(
    |||
      `withPermissions` sets the permission items to add/update. Items that are omitted from the list will be removed.
    |||,
    [d.argument.new('permissions', d.T.array)]
  ),
  withPermissions(permissions):
    forProvider.withPermissions(permissions),

  '#withPermissionsMixin': d.func.new(
    |||
      `withPermissionsMixin` adds permission items to add/update. Items that are omitted from the list will be removed.
    |||,
    [d.argument.new('permissions', d.T.array)]
  ),
  withPermissionsMixin(permissions):
    forProvider.withPermissionsMixin(permissions),

  '#withTeamPermission': d.func.new(
    |||
      `withTeamPermission` adds the permission for a team resource to a folder. `teamResource` can be created by `team.new()`
    |||,
    [d.argument.new('permissions', d.T.array)]
  ),
  withTeamPermission(teamResource, permission='Admin'):
    self.withPermissionsMixin([
      self.permissions.teamRef.withName(teamResource.spec.parameters.forProvider.name)
      + self.permissions.withPermission(permission),
    ]),
}
