{
  alerting: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-alerting',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-alerting:0.6.0-0.26.0',
    },
  },
  cloud: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-cloud',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-cloud:0.6.0-0.26.0',
    },
  },
  cloudprovider: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-cloudprovider',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-cloudprovider:0.6.0-0.26.0',
    },
  },
  connections: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-connections',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-connections:0.6.0-0.26.0',
    },
  },
  enterprise: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-enterprise',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-enterprise:0.6.0-0.26.0',
    },
  },
  ml: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-ml',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-ml:0.6.0-0.26.0',
    },
  },
  oncall: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-oncall',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-oncall:0.6.0-0.26.0',
    },
  },
  oss: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-oss',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-oss:0.6.0-0.26.0',
    },
  },
  slo: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-slo',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-slo:0.6.0-0.26.0',
    },
  },
  sm: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-sm',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-sm:0.6.0-0.26.0',
    },
  },
}
