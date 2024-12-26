{
  '#withAuth': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Credentials used to connect to the Kubernetes API.' } },
  withAuth(value): {
    spec+: {
      kubernetes+: {
        auth: value,
      },
    },
  },
  '#withAuthMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Credentials used to connect to the Kubernetes API.' } },
  withAuthMixin(value): {
    spec+: {
      kubernetes+: {
        auth+: value,
      },
    },
  },
  auth+:
    {
      '#withEnv': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Env is a reference to an environment variable that contains credentials\nthat must be used to connect to the provider.' } },
      withEnv(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              env: value,
            },
          },
        },
      },
      '#withEnvMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Env is a reference to an environment variable that contains credentials\nthat must be used to connect to the provider.' } },
      withEnvMixin(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              env+: value,
            },
          },
        },
      },
      env+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name is the name of an environment variable.' } },
          withName(value): {
            spec+: {
              kubernetes+: {
                auth+: {
                  env+: {
                    name: value,
                  },
                },
              },
            },
          },
        },
      '#withFs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Fs is a reference to a filesystem location that contains credentials that\nmust be used to connect to the provider.' } },
      withFs(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              fs: value,
            },
          },
        },
      },
      '#withFsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Fs is a reference to a filesystem location that contains credentials that\nmust be used to connect to the provider.' } },
      withFsMixin(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              fs+: value,
            },
          },
        },
      },
      fs+:
        {
          '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Path is a filesystem path.' } },
          withPath(value): {
            spec+: {
              kubernetes+: {
                auth+: {
                  fs+: {
                    path: value,
                  },
                },
              },
            },
          },
        },
      '#withSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A SecretRef is a reference to a secret key that contains the credentials\nthat must be used to connect to the provider.' } },
      withSecretRef(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              secretRef: value,
            },
          },
        },
      },
      '#withSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A SecretRef is a reference to a secret key that contains the credentials\nthat must be used to connect to the provider.' } },
      withSecretRefMixin(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              secretRef+: value,
            },
          },
        },
      },
      secretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              kubernetes+: {
                auth+: {
                  secretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              kubernetes+: {
                auth+: {
                  secretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              kubernetes+: {
                auth+: {
                  secretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withSource': { 'function': { args: [{ default: null, enums: ['None', 'Secret', 'Environment', 'Filesystem'], name: 'value', type: ['string'] }], help: 'Source of the credentials.' } },
      withSource(value): {
        spec+: {
          kubernetes+: {
            auth+: {
              source: value,
            },
          },
        },
      },
    },
}
