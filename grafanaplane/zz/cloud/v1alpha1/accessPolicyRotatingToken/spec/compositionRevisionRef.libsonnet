{
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
  withName(value): {
    spec+: {
      compositionRevisionRef+: {
        name: value,
      },
    },
  },
}
