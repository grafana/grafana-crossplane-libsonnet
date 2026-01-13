local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      ruleGroup = raw.alerting.v1alpha1.ruleGroup,
      forProvider = ruleGroup.spec.parameters.forProvider,
      rule = forProvider.rule;

{
  '#': d.package.newSub(
    'ruleGroup',
    'Provides functions to set up a ruleGroup.',
  ),

  '#new': d.func.new(
    '`new` creates a new rule group resource.',
    [
      d.arg('name', d.T.string),
      d.arg('folderUid', d.T.string),
    ]
  ),
  new(name, folderUid):
    local uid = xtd.ascii.stringToRFC1123(name);
    ruleGroup.new(uid)
    + forProvider.withName(name)
    + forProvider.withFolderUid(folderUid)
    + forProvider.withIntervalSeconds(60)
    + forProvider.withDisableProvenance()
    + ruleGroup.spec.parameters.withExternalName(std.join(':', [folderUid, name])),

  '#withRules': d.func.new(
    '`withRules` adds rules to a rule group.',
    [d.arg('rules', d.T.array)]
  ),
  withRules(rules):
    forProvider.withRuleMixin(rules),

  '#fromPrometheusRuleGroup': d.func.new(
    |||
      `fromPrometheusRuleGroup` creates a new rule group from a Prometheus rule group.

      ref: https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/
    |||,
    [
      d.arg('group', d.T.object),
      d.arg('folderUid', d.T.string),
      d.arg('datasourceUid', d.T.string, default='grafanacloud-prom'),
    ]
  ),
  fromPrometheusRuleGroup(group, folderUid, datasourceUid='grafanacloud-prom'):
    self.new(group.name, folderUid)
    + self.withRules(
      std.map(
        function(rule)
          if std.objectHas(rule, 'alert')
          then self.rules.prometheus.fromAlertingRule(rule, datasourceUid)
          else if std.objectHas(rule, 'record')
          then self.rules.prometheus.fromRecordingRule(rule, datasourceUid)
          else error 'rule is neither an alert or a record',
        group.rules,
      )
    ),

  rules: {
    '#': d.package.newSub(
      'ruleGroup.rules',
      |||
        Provides functions to set up common rules.
      |||
    ),

    // Private helper function for creating recording rules
    local fromRecordingRuleBase(recordingRule, datasourceType, queryDatasourceUid, targetDatasourceUid) =
      rule.withName(recordingRule.record)
      + (if std.objectHas(recordingRule, 'labels')
         then rule.withLabels(recordingRule.labels)
         else {})
      + rule.withRecord([
        rule.record.withFrom('query')
        + rule.record.withTargetDatasourceUid(targetDatasourceUid)
        + rule.record.withMetric(recordingRule.record),
      ])
      + rule.withData([
        rule.data.withRefId('query')
        + rule.data.withQueryType(datasourceType)
        + rule.data.withDatasourceUid(queryDatasourceUid)
        + rule.data.withRelativeTimeRange([
          rule.data.relativeTimeRange.withFrom(600)
          + rule.data.relativeTimeRange.withTo(0),
        ])
        + rule.data.withModel(
          std.manifestJson({
            datasource: {
              type: datasourceType,
              uid: queryDatasourceUid,
            },
            expr: recordingRule.expr,
            instant: true,
            intervalMs: 1000,
            maxDataPoints: 43200,
            range: false,
            refId: 'query',
          })
        ),
      ]),

    prometheus: {
      '#fromAlertingRule': d.func.new(
        |||
          `fromAlertingRule` creates a Grafana Managed Alerting rule from a Prometheus alerting rule

          ref: https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/
        |||,
        [
          d.arg('alertRule', d.T.object),
          d.arg('datasourceUid', d.T.string, default='grafanacloud-prom'),
        ]
      ),
      fromAlertingRule(alertRule, datasourceUid='grafanacloud-prom'):
        rule.withName(alertRule.alert)
        + rule.withCondition('threshold')
        + rule.withNoDataState('OK')
        + rule.withExecErrState('OK')
        + rule.withFor(alertRule['for'])
        + (if std.objectHas(alertRule, 'labels')
           then rule.withLabels(alertRule.labels)
           else {})
        + (if std.objectHas(alertRule, 'annotations')
           then rule.withAnnotations(alertRule.annotations)
           else {})
        + (if std.objectHas(alertRule, 'keep_firing_for')
           then rule.withKeepFiringFor(alertRule.keep_firing_for)
           else {})
        + rule.withData([
          rule.data.withRefId('query')
          + rule.data.withQueryType('prometheus')
          + rule.data.withDatasourceUid(datasourceUid)
          + rule.data.withRelativeTimeRange([
            rule.data.relativeTimeRange.withFrom(600)
            + rule.data.relativeTimeRange.withTo(0),
          ])
          + rule.data.withModel(
            std.manifestJson({
              datasource: {
                type: 'prometheus',
                uid: datasourceUid,
              },
              expr: alertRule.expr,
              instant: true,
              intervalMs: 1000,
              maxDataPoints: 43200,
              range: false,
              refId: 'query',
            })
          ),

          rule.data.withRefId('prometheus_math')
          + rule.data.withQueryType('math')
          + rule.data.withDatasourceUid('__expr__')
          + rule.data.withRelativeTimeRange([
            rule.data.relativeTimeRange.withFrom(0)
            + rule.data.relativeTimeRange.withTo(0),
          ])
          + rule.data.withModel(
            std.manifestJson({
              datasource: {
                name: 'Expression',
                type: '__expr__',
                uid: '__expr__',
              },
              expression: 'is_number($query) || is_nan($query) || is_inf($query)',
              intervalMs: 1000,
              maxDataPoints: 43200,
              refId: 'prometheus_math',
              type: 'math',
            })
          ),

          rule.data.withRefId('threshold')
          + rule.data.withQueryType('threshold')
          + rule.data.withDatasourceUid('__expr__')
          + rule.data.withRelativeTimeRange([
            rule.data.relativeTimeRange.withFrom(0)
            + rule.data.relativeTimeRange.withTo(0),
          ])
          + rule.data.withModel(
            std.manifestJson({
              datasource: {
                name: 'Expression',
                type: '__expr__',
                uid: '__expr__',
              },
              conditions: [{
                evaluator: {
                  params: [0],
                  type: 'gt',
                },
              }],
              expression: 'prometheus_math',
              intervalMs: 1000,
              maxDataPoints: 43200,
              refId: 'threshold',
              type: 'threshold',
            })
          ),
        ]),

      '#fromRecordingRule': d.func.new(
        |||
          `fromRecordingRule` creates a Grafana Managed Alerting rule from a Prometheus recording rule

          ref: https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/
        |||,
        [
          d.arg('recordingRule', d.T.object),
          d.arg('datasourceUid', d.T.string, default='grafanacloud-prom'),
        ]
      ),
      fromRecordingRule(recordingRule, datasourceUid='grafanacloud-prom'):
        fromRecordingRuleBase(recordingRule, 'prometheus', datasourceUid, datasourceUid),
    },
    loki: {
      '#fromRecordingRule': d.func.new(
        |||
          `fromRecordingRule` creates a Grafana Managed Alerting recording rule that queries from Loki.

          This allows creating metrics from LogQL queries, with the metric written to a Prometheus datasource.

          ref: https://grafana.com/docs/loki/latest/alert/#recording-rules
        |||,
        [
          d.arg('recordingRule', d.T.object),
          d.arg('lokiDatasourceUid', d.T.string, default='grafanacloud-logs'),
          d.arg('targetDatasourceUid', d.T.string, default='grafanacloud-prom'),
        ]
      ),
      fromRecordingRule(recordingRule, lokiDatasourceUid='grafanacloud-logs', targetDatasourceUid='grafanacloud-prom'):
        fromRecordingRuleBase(recordingRule, 'loki', lokiDatasourceUid, targetDatasourceUid),
    },
  },
}
