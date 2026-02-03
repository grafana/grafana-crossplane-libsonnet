{
  customModelRules+: import './customModelRules/main.libsonnet',
  logConfig+: import './logConfig/main.libsonnet',
  notificationAlertsConfig+: import './notificationAlertsConfig/main.libsonnet',
  profileConfig+: import './profileConfig/main.libsonnet',
  promRuleFile+: import './promRuleFile/main.libsonnet',
  suppressedAssertionsConfig+: import './suppressedAssertionsConfig/main.libsonnet',
  thresholds+: import './thresholds/main.libsonnet',
  traceConfig+: import './traceConfig/main.libsonnet',
}
