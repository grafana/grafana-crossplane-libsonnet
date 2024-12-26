{
  '#withDefaultScope': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'DefaultScope used for scoping secrets for "cluster-scoped" resources.\nIf store type is "Kubernetes", this would mean the default namespace to\nstore connection secrets for cluster scoped resources.\nIn case of "Vault", this would be used as the default parent path.\nTypically, should be set as Crossplane installation namespace.' } },
  withDefaultScope(value): {
    spec+: {
      defaultScope: value,
    },
  },
  '#withKubernetes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Kubernetes configures a Kubernetes secret store.\nIf the "type" is "Kubernetes" but no config provided, in cluster config\nwill be used.' } },
  withKubernetes(value): {
    spec+: {
      kubernetes: value,
    },
  },
  '#withKubernetesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Kubernetes configures a Kubernetes secret store.\nIf the "type" is "Kubernetes" but no config provided, in cluster config\nwill be used.' } },
  withKubernetesMixin(value): {
    spec+: {
      kubernetes+: value,
    },
  },
  kubernetes+: import './kubernetes.libsonnet',
  '#withPlugin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Plugin configures External secret store as a plugin.' } },
  withPlugin(value): {
    spec+: {
      plugin: value,
    },
  },
  '#withPluginMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Plugin configures External secret store as a plugin.' } },
  withPluginMixin(value): {
    spec+: {
      plugin+: value,
    },
  },
  plugin+: import './plugin.libsonnet',
  '#withType': { 'function': { args: [{ default: 'Kubernetes', enums: ['Kubernetes', 'Vault', 'Plugin'], name: 'value', type: ['string'] }], help: 'Type configures which secret store to be used. Only the configuration\nblock for this store will be used and others will be ignored if provided.\nDefault is Kubernetes.' } },
  withType(value='Kubernetes'): {
    spec+: {
      type: value,
    },
  },
}
