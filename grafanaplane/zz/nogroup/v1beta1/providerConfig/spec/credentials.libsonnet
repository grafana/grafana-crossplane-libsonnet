{
  '#withEnv': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Env is a reference to an environment variable that contains credentials\nthat must be used to connect to the provider.' } },
  withEnv(value): {
    spec+: {
      credentials+: {
        env: value,
      },
    },
  },
  '#withEnvMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Env is a reference to an environment variable that contains credentials\nthat must be used to connect to the provider.' } },
  withEnvMixin(value): {
    spec+: {
      credentials+: {
        env+: value,
      },
    },
  },
  env+:
    {
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name is the name of an environment variable.' } },
      withName(value): {
        spec+: {
          credentials+: {
            env+: {
              name: value,
            },
          },
        },
      },
    },
  '#withFs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Fs is a reference to a filesystem location that contains credentials that\nmust be used to connect to the provider.' } },
  withFs(value): {
    spec+: {
      credentials+: {
        fs: value,
      },
    },
  },
  '#withFsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Fs is a reference to a filesystem location that contains credentials that\nmust be used to connect to the provider.' } },
  withFsMixin(value): {
    spec+: {
      credentials+: {
        fs+: value,
      },
    },
  },
  fs+:
    {
      '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Path is a filesystem path.' } },
      withPath(value): {
        spec+: {
          credentials+: {
            fs+: {
              path: value,
            },
          },
        },
      },
    },
  '#withSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A SecretRef is a reference to a secret key that contains the credentials\nthat must be used to connect to the provider.' } },
  withSecretRef(value): {
    spec+: {
      credentials+: {
        secretRef: value,
      },
    },
  },
  '#withSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A SecretRef is a reference to a secret key that contains the credentials\nthat must be used to connect to the provider.' } },
  withSecretRefMixin(value): {
    spec+: {
      credentials+: {
        secretRef+: value,
      },
    },
  },
  secretRef+:
    {
      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
      withKey(value): {
        spec+: {
          credentials+: {
            secretRef+: {
              key: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
      withName(value): {
        spec+: {
          credentials+: {
            secretRef+: {
              name: value,
            },
          },
        },
      },
      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
      withNamespace(value): {
        spec+: {
          credentials+: {
            secretRef+: {
              namespace: value,
            },
          },
        },
      },
    },
  '#withSource': { 'function': { args: [{ default: null, enums: ['None', 'Secret', 'InjectedIdentity', 'Environment', 'Filesystem'], name: 'value', type: ['string'] }], help: 'Source of the provider credentials.' } },
  withSource(value): {
    spec+: {
      credentials+: {
        source: value,
      },
    },
  },
}
