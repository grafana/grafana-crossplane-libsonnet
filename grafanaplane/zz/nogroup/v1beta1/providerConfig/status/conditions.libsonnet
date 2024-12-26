{
  '#': { help: '', name: 'conditions' },
  '#withLastTransitionTime': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'LastTransitionTime is the last time this condition transitioned from one\nstatus to another.' } },
  withLastTransitionTime(value): {
    lastTransitionTime: value,
  },
  '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "A Message containing details about this condition's last transition from\none status to another, if any." } },
  withMessage(value): {
    message: value,
  },
  '#withObservedGeneration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['integer'] }], help: 'ObservedGeneration represents the .metadata.generation that the condition was set based upon.\nFor instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date\nwith respect to the current state of the instance.' } },
  withObservedGeneration(value): {
    observedGeneration: value,
  },
  '#withReason': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "A Reason for this condition's last transition from one status to another." } },
  withReason(value): {
    reason: value,
  },
  '#withStatus': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Status of this condition; is it currently True, False, or Unknown?' } },
  withStatus(value): {
    status: value,
  },
  '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Type of this condition. At most one of each condition type may apply to\na resource at any point in time.' } },
  withType(value): {
    type: value,
  },
}
