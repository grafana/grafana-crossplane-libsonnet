{
  '#': { help: '', name: 'providerConfigUsage' },
  '#new': { 'function': { args: [{ default: null, enums: null, name: 'name', type: 'string' }], help: '`new` creates a new instance' } },
  new(name):
    self.withApiVersion()
    + self.withKind()
    + self.metadata.withName(name),
  '#withApiVersion': { 'function': { args: [], help: 'APIVersion defines the versioned schema of this representation of an object.\nServers should convert recognized schemas to the latest internal value, and\nmay reject unrecognized values.\nMore info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources' } },
  withApiVersion(): {
    apiVersion: 'grafana.crossplane.io/v1beta1',
  },
  '#withKind': { 'function': { args: [], help: 'Kind is a string value representing the REST resource this object represents.\nServers may infer this from the endpoint the client submits requests to.\nCannot be updated.\nIn CamelCase.\nMore info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds' } },
  withKind(): {
    kind: 'ProviderConfigUsage',
  },
  '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.' } },
  withMetadata(value): {
    metadata: value,
  },
  '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.' } },
  withMetadataMixin(value): {
    metadata+: value,
  },
  metadata+: import './metadata/main.libsonnet',
  '#withProviderConfigRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ProviderConfigReference to the provider config being used.' } },
  withProviderConfigRef(value): {
    providerConfigRef: value,
  },
  '#withProviderConfigRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ProviderConfigReference to the provider config being used.' } },
  withProviderConfigRefMixin(value): {
    providerConfigRef+: value,
  },
  providerConfigRef+: import './providerConfigRef/main.libsonnet',
  '#withResourceRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ResourceReference to the managed resource using the provider config.' } },
  withResourceRef(value): {
    resourceRef: value,
  },
  '#withResourceRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ResourceReference to the managed resource using the provider config.' } },
  withResourceRefMixin(value): {
    resourceRef+: value,
  },
  resourceRef+: import './resourceRef/main.libsonnet',
}
