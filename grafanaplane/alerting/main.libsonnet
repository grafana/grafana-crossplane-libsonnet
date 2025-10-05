local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#': d.package.newSub('alerting', 'Configure Grafana Managed Alerting (GMA)'),
  ruleGroup: import './ruleGroup.libsonnet',
}
