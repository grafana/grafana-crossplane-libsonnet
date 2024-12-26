{
  '#withApiVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'APIVersion of the referenced object.' } },
  withApiVersion(value): {
    resourceRef+: {
      apiVersion: value,
    },
  },
  '#withKind': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Kind of the referenced object.' } },
  withKind(value): {
    resourceRef+: {
      kind: value,
    },
  },
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
  withName(value): {
    resourceRef+: {
      name: value,
    },
  },
  '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the referenced object.' } },
  withUid(value): {
    resourceRef+: {
      uid: value,
    },
  },
}
