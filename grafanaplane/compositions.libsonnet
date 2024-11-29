{
  'alerting.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'alerting.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/alerting.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'cloud.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'cloud.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/cloud.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'enterprise.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'enterprise.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/enterprise.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'ml.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'ml.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/ml.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'oncall.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'oncall.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/oncall.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'oss.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'oss.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/oss.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'slo.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'slo.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/slo.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
  'sm.grafana.crossplane.io.namespaced': {
    apiVersion: 'pkg.crossplane.io/v1',
    kind: 'Configuration',
    metadata: {
      annotations: {
        'tanka.dev/namespaced': 'false',
      },
      name: 'sm.grafana.crossplane.io.namespaced',
    },
    spec: {
      package: 'xpkg.upbound.io/grafana/sm.grafana.crossplane.io.namespaced:0.0.4-0.21.0',
    },
  },
}
