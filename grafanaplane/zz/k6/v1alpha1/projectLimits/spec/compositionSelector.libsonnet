{
  '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withMatchLabels(value): {
    spec+: {
      compositionSelector+: {
        matchLabels: value,
      },
    },
  },
  '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withMatchLabelsMixin(value): {
    spec+: {
      compositionSelector+: {
        matchLabels+: value,
      },
    },
  },
}
