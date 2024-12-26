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
}
