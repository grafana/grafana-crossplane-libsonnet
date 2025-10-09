local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('oncall', ''),
  escalationChain: import './escalationchain.libsonnet',
  integration: import './integration.libsonnet',
  schedule: import './schedule.libsonnet',
}
