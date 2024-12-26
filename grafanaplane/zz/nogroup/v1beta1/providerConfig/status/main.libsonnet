{
  '#withConditions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Conditions of the resource.' } },
  withConditions(value): {
    status+: {
      conditions:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  '#withConditionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Conditions of the resource.' } },
  withConditionsMixin(value): {
    status+: {
      conditions+:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },
  conditions+: import './conditions.libsonnet',
  '#withUsers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['integer'] }], help: 'Users of this provider configuration.' } },
  withUsers(value): {
    status+: {
      users: value,
    },
  },
}
