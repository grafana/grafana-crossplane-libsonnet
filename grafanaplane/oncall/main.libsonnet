local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet';

{
  '#': d.package.newSub('oncall', ''),
  escalationChain: import './escalationchain.libsonnet',
  escalation: import './escalation.libsonnet',
  integration: import './integration.libsonnet',
  route: import './route.libsonnet',
  schedule: import './schedule.libsonnet',
  shift: import './shift.libsonnet',
}
