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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-alerting:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-cloud:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-enterprise:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-ml:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-oncall:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-oss:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-slo:0.0.7-0.21.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-sm:0.0.7-0.21.0',
    },
  },
}
