{
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
  withName(value): {
    providerConfigRef+: {
      name: value,
    },
  },
  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
  withPolicy(value): {
    providerConfigRef+: {
      policy: value,
    },
  },
  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
  withPolicyMixin(value): {
    providerConfigRef+: {
      policy+: value,
    },
  },
  policy+: import './policy.libsonnet',
}
