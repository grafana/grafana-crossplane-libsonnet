{
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
  withName(value): {
    spec+: {
      writeConnectionSecretToRef+: {
        name: value,
      },
    },
  },
  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
  withNamespace(value): {
    spec+: {
      writeConnectionSecretToRef+: {
        namespace: value,
      },
    },
  },
}
