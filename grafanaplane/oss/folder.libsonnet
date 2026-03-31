local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      folder = raw.oss.v1alpha1.folder,
      forProvider = folder.spec.parameters.forProvider;

{
  '#': d.package.newSub('oss.folder', ''),

  '#new': d.func.new(
    |||
      `new` creates a folder.
    |||,
    [
      d.argument.new('title', d.T.string),
    ]
  ),
  new(title):
    local uid = xtd.ascii.stringToRFC1123(title);
    folder.new(uid)
    + forProvider.withPreventDestroyIfNotEmpty()
    + forProvider.withTitle(title)
    + forProvider.withUid(uid)
    + folder.spec.parameters.withExternalName(uid),

  '#withParentFolder': d.func.new(
    '`withParentFolder` sets the parent folder. `folderResource` can be created by `folder.new()`',
    [d.argument.new('folderResource', d.T.object)]
  ),
  withParentFolder(folderResource):
    forProvider.withParentFolderUid(folderResource.spec.parameters.forProvider.uid),

  '#withDestroyIfNotEmpty': d.func.new(
    '`withDestroyIfNotEmpty` will turn off the protection that prevents a folder from being deleted when it still has dashboards in it. Turning it off will remove the folder regardless if it still contains dashboards.',
    [d.argument.new('value', d.T.bool, default=true)]
  ),
  withDestroyIfNotEmpty(value=true):
    forProvider.withPreventDestroyIfNotEmpty(!value),

  '#withTitle': d.func.new(
    '`withTitle` sets the human readable title in the UI',
    [d.argument.new('title', d.T.string)]
  ),
  withTitle(title):
    forProvider.withTitle(title),

  '#withName': d.func.new(
    '`withName` sets Kubernetes object name',
    [d.argument.new('name', d.T.string)]
  ),
  withName(name):
    folder.metadata.withName(name),

  '#withUid': d.func.new(
    '`withUid` sets the identifier visible in the URL',
    [d.argument.new('uid', d.T.string)]
  ),
  withUid(uid):
    forProvider.withUid(uid),

  '#withExternalName': d.func.new(
    '`withExternalName` can be used to import an existing folder, it can be either a UID or a numeric ID.',
    [d.argument.new('externalName', d.T.string)]
  ),
  withExternalName(externalName):
    folder.spec.parameters.withExternalName(externalName),
}
