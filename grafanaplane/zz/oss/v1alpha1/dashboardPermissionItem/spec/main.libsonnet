{
  '#withCompositionRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withCompositionRef(value): {
    spec+: {
      compositionRef: value,
    },
  },
  '#withCompositionRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withCompositionRefMixin(value): {
    spec+: {
      compositionRef+: value,
    },
  },
  compositionRef+: import './compositionRef.libsonnet',
  '#withCompositionRevisionRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withCompositionRevisionRef(value): {
    spec+: {
      compositionRevisionRef: value,
    },
  },
  '#withCompositionRevisionRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withCompositionRevisionRefMixin(value): {
    spec+: {
      compositionRevisionRef+: value,
    },
  },
  compositionRevisionRef+: import './compositionRevisionRef.libsonnet',
  '#withCompositionSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withCompositionSelector(value): {
    spec+: {
      compositionSelector: value,
    },
  },
  '#withCompositionSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withCompositionSelectorMixin(value): {
    spec+: {
      compositionSelector+: value,
    },
  },
  compositionSelector+: import './compositionSelector.libsonnet',
  '#withCompositionUpdatePolicy': { 'function': { args: [{ default: null, enums: ['Automatic', 'Manual'], name: 'value', type: ['string'] }], help: '' } },
  withCompositionUpdatePolicy(value): {
    spec+: {
      compositionUpdatePolicy: value,
    },
  },
  '#withParameters': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'DashboardPermissionItemSpec defines the desired state of DashboardPermissionItem' } },
  withParameters(value): {
    spec+: {
      parameters: value,
    },
  },
  '#withParametersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'DashboardPermissionItemSpec defines the desired state of DashboardPermissionItem' } },
  withParametersMixin(value): {
    spec+: {
      parameters+: value,
    },
  },
  parameters+: import './parameters.libsonnet',
  '#withWriteConnectionSecretToRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withWriteConnectionSecretToRef(value): {
    spec+: {
      writeConnectionSecretToRef: value,
    },
  },
  '#withWriteConnectionSecretToRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withWriteConnectionSecretToRefMixin(value): {
    spec+: {
      writeConnectionSecretToRef+: value,
    },
  },
  writeConnectionSecretToRef+: import './writeConnectionSecretToRef.libsonnet',
}
