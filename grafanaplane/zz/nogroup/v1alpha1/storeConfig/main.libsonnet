{
  '#': { help: '', name: 'storeConfig' },
  '#new': { 'function': { args: [{ default: null, enums: null, name: 'name', type: 'string' }], help: '`new` creates a new instance' } },
  new(name):
    self.withApiVersion()
    + self.withKind()
    + self.metadata.withName(name),
  '#withApiVersion': { 'function': { args: [], help: 'APIVersion defines the versioned schema of this representation of an object.\nServers should convert recognized schemas to the latest internal value, and\nmay reject unrecognized values.\nMore info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources' } },
  withApiVersion(): {
    apiVersion: 'grafana.crossplane.io/v1alpha1',
  },
  '#withKind': { 'function': { args: [], help: 'Kind is a string value representing the REST resource this object represents.\nServers may infer this from the endpoint the client submits requests to.\nCannot be updated.\nIn CamelCase.\nMore info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds' } },
  withKind(): {
    kind: 'StoreConfig',
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
  '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A StoreConfigSpec defines the desired state of a ProviderConfig.' } },
  withSpec(value): {
    spec: value,
  },
  '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A StoreConfigSpec defines the desired state of a ProviderConfig.' } },
  withSpecMixin(value): {
    spec+: value,
  },
  spec+: import './spec/main.libsonnet',
  '#withStatus': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A StoreConfigStatus represents the status of a StoreConfig.' } },
  withStatus(value): {
    status: value,
  },
  '#withStatusMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A StoreConfigStatus represents the status of a StoreConfig.' } },
  withStatusMixin(value): {
    status+: value,
  },
  status+: import './status/main.libsonnet',
}
