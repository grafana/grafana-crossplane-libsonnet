{
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
  withName(value): {
    spec+: {
      compositionRef+: {
        name: value,
      },
    },
  },
}
