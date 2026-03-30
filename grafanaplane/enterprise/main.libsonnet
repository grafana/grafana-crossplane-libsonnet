local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('enterprise', ''),
  role: import './role.libsonnet',
  roleAssignment: import './roleassignment.libsonnet',
}
