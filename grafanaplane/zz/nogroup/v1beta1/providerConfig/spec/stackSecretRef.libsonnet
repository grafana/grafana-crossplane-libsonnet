{
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
  withName(value): {
    spec+: {
      stackSecretRef+: {
        name: value,
      },
    },
  },
  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
  withNamespace(value): {
    spec+: {
      stackSecretRef+: {
        namespace: value,
      },
    },
  },
}
