local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('oss', ''),
  team: import './team.libsonnet',
  folder: import './folder.libsonnet',
  folderPermission: import './folderpermission.libsonnet',
  dashboard: import './dashboard.libsonnet',
  datasource: import './datasource.libsonnet',
}
