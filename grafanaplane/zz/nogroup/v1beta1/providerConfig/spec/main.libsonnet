{
  '#withCloudApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Grafana Cloud API URL from the credentials reference attribute.' } },
  withCloudApiUrl(value): {
    spec+: {
      cloudApiUrl: value,
    },
  },
  '#withCloudProviderUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Cloud Provider API from the credentials reference attribute.' } },
  withCloudProviderUrl(value): {
    spec+: {
      cloudProviderUrl: value,
    },
  },
  '#withConnectionsApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Connections API from the credentials reference attribute.' } },
  withConnectionsApiUrl(value): {
    spec+: {
      connectionsApiUrl: value,
    },
  },
  '#withCredentials': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Credentials required to authenticate to this provider.' } },
  withCredentials(value): {
    spec+: {
      credentials: value,
    },
  },
  '#withCredentialsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Credentials required to authenticate to this provider.' } },
  withCredentialsMixin(value): {
    spec+: {
      credentials+: value,
    },
  },
  credentials+: import './credentials.libsonnet',
  '#withFleetManagementUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the FleetManagement API from the credentials reference attribute.' } },
  withFleetManagementUrl(value): {
    spec+: {
      fleetManagementUrl: value,
    },
  },
  '#withOncallUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the OnCall API URL from the credentials reference attribute.' } },
  withOncallUrl(value): {
    spec+: {
      oncallUrl: value,
    },
  },
  '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['integer'] }], help: 'Override the Grafana org ID from the credentials reference attribute.' } },
  withOrgId(value): {
    spec+: {
      orgId: value,
    },
  },
  '#withSmUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Synthetic Monitoring API URL from the credentials reference attribute.' } },
  withSmUrl(value): {
    spec+: {
      smUrl: value,
    },
  },
  '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['integer'] }], help: 'Override the Grafana stack ID from the credentials reference attribute.' } },
  withStackId(value): {
    spec+: {
      stackId: value,
    },
  },
  '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Override the Grafana URL from the credentials reference attribute.' } },
  withUrl(value): {
    spec+: {
      url: value,
    },
  },
}
