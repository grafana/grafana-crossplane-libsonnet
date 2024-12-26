{
  '#withConfigRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ConfigRef contains store config reference info.' } },
  withConfigRef(value): {
    spec+: {
      plugin+: {
        configRef: value,
      },
    },
  },
  '#withConfigRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'ConfigRef contains store config reference info.' } },
  withConfigRefMixin(value): {
    spec+: {
      plugin+: {
        configRef+: value,
      },
    },
  },
  configRef+:
    {
      '#withApiVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'APIVersion of the referenced config.' } },
      withApiVersion(value): {
        spec+: {
          plugin+: {
            configRef+: {
              apiVersion: value,
            },
          },
        },
      },
      '#withKind': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Kind of the referenced config.' } },
      withKind(value): {
        spec+: {
          plugin+: {
            configRef+: {
              kind: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced config.' } },
      withName(value): {
        spec+: {
          plugin+: {
            configRef+: {
              name: value,
            },
          },
        },
      },
    },
  '#withEndpoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Endpoint is the endpoint of the gRPC server.' } },
  withEndpoint(value): {
    spec+: {
      plugin+: {
        endpoint: value,
      },
    },
  },
}
