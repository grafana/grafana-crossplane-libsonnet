local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('sm', ''),
  check: import './check.libsonnet',
}
