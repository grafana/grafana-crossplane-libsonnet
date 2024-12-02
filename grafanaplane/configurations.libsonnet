{
  alerting: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'alerting',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/alerting:0.0.6-0.21.0',
    },
  },
  cloud: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'cloud',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/cloud:0.0.6-0.21.0',
    },
  },
  enterprise: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'enterprise',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/enterprise:0.0.6-0.21.0',
    },
  },
  ml: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'ml',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/ml:0.0.6-0.21.0',
    },
  },
  oncall: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'oncall',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/oncall:0.0.6-0.21.0',
    },
  },
  oss: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'oss',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/oss:0.0.6-0.21.0',
    },
  },
  slo: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'slo',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/slo:0.0.6-0.21.0',
    },
  },
  sm: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'sm',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/sm:0.0.6-0.21.0',
    },
  },
}
