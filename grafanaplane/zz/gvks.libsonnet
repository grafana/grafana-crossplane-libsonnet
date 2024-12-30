{
  alerting: {
    crd: [
      {
        group: 'alerting.grafana.crossplane.io',
        kind: 'ContactPoint',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.crossplane.io',
        kind: 'MessageTemplate',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.crossplane.io',
        kind: 'MuteTiming',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.crossplane.io',
        kind: 'NotificationPolicy',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.crossplane.io',
        kind: 'RuleGroup',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'alerting.grafana.net.namespaced',
        kind: 'ContactPoint',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.net.namespaced',
        kind: 'MessageTemplate',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.net.namespaced',
        kind: 'MuteTiming',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.net.namespaced',
        kind: 'NotificationPolicy',
        version: 'v1alpha1',
      },
      {
        group: 'alerting.grafana.net.namespaced',
        kind: 'RuleGroup',
        version: 'v1alpha1',
      },
    ],
  },
  cloud: {
    crd: [
      {
        group: 'cloud.grafana.crossplane.io',
        kind: 'AccessPolicy',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.crossplane.io',
        kind: 'AccessPolicyToken',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.crossplane.io',
        kind: 'PluginInstallation',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.crossplane.io',
        kind: 'Stack',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.crossplane.io',
        kind: 'StackServiceAccount',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.crossplane.io',
        kind: 'StackServiceAccountToken',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'cloud.grafana.net.namespaced',
        kind: 'AccessPolicy',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.net.namespaced',
        kind: 'AccessPolicyToken',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.net.namespaced',
        kind: 'PluginInstallation',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.net.namespaced',
        kind: 'Stack',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.net.namespaced',
        kind: 'StackServiceAccount',
        version: 'v1alpha1',
      },
      {
        group: 'cloud.grafana.net.namespaced',
        kind: 'StackServiceAccountToken',
        version: 'v1alpha1',
      },
    ],
  },
  enterprise: {
    crd: [
      {
        group: 'enterprise.grafana.crossplane.io',
        kind: 'DataSourcePermission',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.crossplane.io',
        kind: 'Report',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.crossplane.io',
        kind: 'RoleAssignment',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.crossplane.io',
        kind: 'Role',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.crossplane.io',
        kind: 'TeamExternalGroup',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'enterprise.grafana.net.namespaced',
        kind: 'DataSourcePermission',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.net.namespaced',
        kind: 'Report',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.net.namespaced',
        kind: 'RoleAssignment',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.net.namespaced',
        kind: 'Role',
        version: 'v1alpha1',
      },
      {
        group: 'enterprise.grafana.net.namespaced',
        kind: 'TeamExternalGroup',
        version: 'v1alpha1',
      },
    ],
  },
  ml: {
    crd: [
      {
        group: 'ml.grafana.crossplane.io',
        kind: 'Holiday',
        version: 'v1alpha1',
      },
      {
        group: 'ml.grafana.crossplane.io',
        kind: 'Job',
        version: 'v1alpha1',
      },
      {
        group: 'ml.grafana.crossplane.io',
        kind: 'OutlierDetector',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'ml.grafana.net.namespaced',
        kind: 'Holiday',
        version: 'v1alpha1',
      },
      {
        group: 'ml.grafana.net.namespaced',
        kind: 'Job',
        version: 'v1alpha1',
      },
      {
        group: 'ml.grafana.net.namespaced',
        kind: 'OutlierDetector',
        version: 'v1alpha1',
      },
    ],
  },
  oncall: {
    crd: [
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'EscalationChain',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'Escalation',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'Integration',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'OnCallShift',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'OutgoingWebhook',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'Route',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'Schedule',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.crossplane.io',
        kind: 'UserNotificationRule',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'EscalationChain',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'Escalation',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'Integration',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'OnCallShift',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'OutgoingWebhook',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'Route',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'Schedule',
        version: 'v1alpha1',
      },
      {
        group: 'oncall.grafana.net.namespaced',
        kind: 'UserNotificationRule',
        version: 'v1alpha1',
      },
    ],
  },
  oss: {
    crd: [
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'Annotation',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'DashboardPermission',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'DashboardPublic',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'Dashboard',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'DataSource',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'FolderPermission',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'Folder',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'LibraryPanel',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'OrganizationPreferences',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'Organization',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'Playlist',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'ServiceAccountPermission',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'ServiceAccount',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'ServiceAccountToken',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'SsoSettings',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'Team',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.crossplane.io',
        kind: 'User',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'Annotation',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'DashboardPermission',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'DashboardPublic',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'Dashboard',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'DataSource',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'FolderPermission',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'Folder',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'LibraryPanel',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'OrganizationPreferences',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'Organization',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'Playlist',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'ServiceAccountPermission',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'ServiceAccount',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'ServiceAccountToken',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'SsoSettings',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'Team',
        version: 'v1alpha1',
      },
      {
        group: 'oss.grafana.net.namespaced',
        kind: 'User',
        version: 'v1alpha1',
      },
    ],
  },
  slo: {
    crd: [
      {
        group: 'slo.grafana.crossplane.io',
        kind: 'SLO',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'slo.grafana.net.namespaced',
        kind: 'SLO',
        version: 'v1alpha1',
      },
    ],
  },
  sm: {
    crd: [
      {
        group: 'sm.grafana.crossplane.io',
        kind: 'Check',
        version: 'v1alpha1',
      },
      {
        group: 'sm.grafana.crossplane.io',
        kind: 'Installation',
        version: 'v1alpha1',
      },
      {
        group: 'sm.grafana.crossplane.io',
        kind: 'Probe',
        version: 'v1alpha1',
      },
    ],
    xrd: [
      {
        group: 'sm.grafana.net.namespaced',
        kind: 'Check',
        version: 'v1alpha1',
      },
      {
        group: 'sm.grafana.net.namespaced',
        kind: 'Installation',
        version: 'v1alpha1',
      },
      {
        group: 'sm.grafana.net.namespaced',
        kind: 'Probe',
        version: 'v1alpha1',
      },
    ],
  },
}
