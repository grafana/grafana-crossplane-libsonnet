local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      dashboard = raw.oss.v1alpha1.dashboard,
      forProvider = dashboard.spec.parameters.forProvider;

{
  '#': d.package.newSub('oss.dashboard', ''),

  '#new': d.func.new(
    |||
      `new` creates a dashboard.

      - `name` is the Kubernetes object name
      - `dashboardObject` is the actual JSON object of the dashboard
      - `folderResource` can be created by `folder.new()`
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('dashboardObject', d.T.object),
      d.argument.new('folderResource', d.T.object),
    ]
  ),
  new(name, dashboardObject, folderResource):
    local slug = xtd.ascii.stringToRFC1123(name);
    dashboard.new(slug)
    + forProvider.withConfigJson(std.manifestJson(dashboardObject))
    + forProvider.withFolder(folderResource.spec.parameters.forProvider.uid)
    + forProvider.withOverwrite(),
}
