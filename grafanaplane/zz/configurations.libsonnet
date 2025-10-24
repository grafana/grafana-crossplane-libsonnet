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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-alerting:0.13.0-0.40.0',
    },
  },
  asserts: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-asserts',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-asserts:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-cloud:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-cloudprovider:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-connections:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-enterprise:0.13.0-0.40.0',
    },
  },
  fleetmanagement: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-fleetmanagement',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-fleetmanagement:0.13.0-0.40.0',
    },
  },
  frontendobservability: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-frontendobservability',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-frontendobservability:0.13.0-0.40.0',
    },
  },
  k6: {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'grafana-namespaced-k6',
    },
    spec: {
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-k6:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-ml:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-oncall:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-oss:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-slo:0.13.0-0.40.0',
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
      package: 'ghcr.io/grafana/crossplane/grafana-namespaced-sm:0.13.0-0.40.0',
    },
  },
}
