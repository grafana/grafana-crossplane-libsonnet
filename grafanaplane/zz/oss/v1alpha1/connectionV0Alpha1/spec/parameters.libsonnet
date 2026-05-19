{
  '#withDeletionPolicy': { 'function': { args: [{ default: 'Delete', enums: ['Orphan', 'Delete'], name: 'value', type: ['string'] }], help: 'DeletionPolicy specifies what will happen to the underlying external\nwhen this managed resource is deleted - either "Delete" or "Orphan" the\nexternal resource.\nThis field is planned to be deprecated in favor of the ManagementPolicies\nfield in a future release. Currently, both could be set independently and\nnon-default values would be honored if the feature flag is enabled.\nSee the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223' } },
  withDeletionPolicy(value='Delete'): {
    spec+: {
      parameters+: {
        deletionPolicy: value,
      },
    },
  },
  '#withExternalName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The name of the managed resource inside the Provider.\nBy default Providers give external resources the same name as the Kubernetes object. A provider uses the external name to lookup a managed resource in an external system. The provider looks up the resource in the external system to determine if it exists, and if it matches the managed resource’s desired state. If the provider can’t find the resource, it creates it.\n\nDocs: https://docs.crossplane.io/latest/concepts/managed-resources/#naming-external-resources\n' } },
  withExternalName(value): {
    spec+: {
      parameters+: {
        externalName: value,
      },
    },
  },
  '#withForProvider': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withForProvider(value): {
    spec+: {
      parameters+: {
        forProvider: value,
      },
    },
  },
  '#withForProviderMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
  withForProviderMixin(value): {
    spec+: {
      parameters+: {
        forProvider+: value,
      },
    },
  },
  forProvider+:
    {
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
      withMetadataMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              metadata+: value,
            },
          },
        },
      },
      metadata+:
        {
          '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.\nThe UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation." } },
          withFolderUid(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  metadata+: {
                    folderUid: value,
                  },
                },
              },
            },
          },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique identifier of the resource.\nThe unique identifier of the resource.' } },
          withUid(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  metadata+: {
                    uid: value,
                  },
                },
              },
            },
          },
        },
      '#withOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
      withOptions(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              options: value,
            },
          },
        },
      },
      '#withOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
      withOptionsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              options+: value,
            },
          },
        },
      },
      options+:
        {
          '#withManagerIdentity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Override the identity stamped on this resource's manager metadata." } },
          withManagerIdentity(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  options+: {
                    managerIdentity: value,
                  },
                },
              },
            },
          },
          '#withOverwrite': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.\nSet to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.' } },
          withOverwrite(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  options+: {
                    overwrite: value,
                  },
                },
              },
            },
          },
        },
      '#withSecure': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecure(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              secure: value,
            },
          },
        },
      },
      '#withSecureMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecureMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              secure+: value,
            },
          },
        },
      },
      secure+:
        {
          '#withPrivateKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Private key for GitHub App authentication.\nPrivate key for GitHub App authentication.' } },
          withPrivateKey(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    privateKey: value,
                  },
                },
              },
            },
          },
          '#withPrivateKeyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Private key for GitHub App authentication.\nPrivate key for GitHub App authentication.' } },
          withPrivateKeyMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    privateKey+: value,
                  },
                },
              },
            },
          },
          '#withToken': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Access token.\nAccess token.' } },
          withToken(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    token: value,
                  },
                },
              },
            },
          },
          '#withTokenMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Access token.\nAccess token.' } },
          withTokenMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    token+: value,
                  },
                },
              },
            },
          },
        },
      '#withSecureVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'application of secure values.\nSet this to 1 when using `secure`, then increment it to trigger re-application of secure values.' } },
      withSecureVersion(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              secureVersion: value,
            },
          },
        },
      },
      '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpec(value): {
        parameters+: {
          forProvider+: {
            spec: value,
          },
        },
      },
      '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpecMixin(value): {
        parameters+: {
          forProvider+: {
            spec+: value,
          },
        },
      },
      spec+:
        {
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Connection description.\nConnection description.' } },
          withDescription(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    description: value,
                  },
                },
              },
            },
          },
          '#withGithub': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub App configuration. (see below for nested schema)\nGitHub App configuration.' } },
          withGithub(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    github: value,
                  },
                },
              },
            },
          },
          '#withGithubMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub App configuration. (see below for nested schema)\nGitHub App configuration.' } },
          withGithubMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    github+: value,
                  },
                },
              },
            },
          },
          github+:
            {
              '#withAppId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) GitHub App ID.\nGitHub App ID.' } },
              withAppId(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        github+: {
                          appId: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withInstallationId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) GitHub App installation ID.\nGitHub App installation ID.' } },
              withInstallationId(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        github+: {
                          installationId: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Display name shown in the UI.\nDisplay name shown in the UI.' } },
          withTitle(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    title: value,
                  },
                },
              },
            },
          },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Connection provider type.\nConnection provider type.' } },
          withType(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    type: value,
                  },
                },
              },
            },
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nProvider URL.' } },
          withUrl(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    url: value,
                  },
                },
              },
            },
          },
        },
    },
  '#withInitProvider': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'THIS IS A BETA FIELD. It will be honored\nunless the Management Policies feature flag is disabled.\nInitProvider holds the same fields as ForProvider, with the exception\nof Identifier and other resource reference fields. The fields that are\nin InitProvider are merged into ForProvider when the resource is created.\nThe same fields are also added to the terraform ignore_changes hook, to\navoid updating them after creation. This is useful for fields that are\nrequired on creation, but we do not desire to update them after creation,\nfor example because of an external controller is managing them, like an\nautoscaler.' } },
  withInitProvider(value): {
    spec+: {
      parameters+: {
        initProvider: value,
      },
    },
  },
  '#withInitProviderMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'THIS IS A BETA FIELD. It will be honored\nunless the Management Policies feature flag is disabled.\nInitProvider holds the same fields as ForProvider, with the exception\nof Identifier and other resource reference fields. The fields that are\nin InitProvider are merged into ForProvider when the resource is created.\nThe same fields are also added to the terraform ignore_changes hook, to\navoid updating them after creation. This is useful for fields that are\nrequired on creation, but we do not desire to update them after creation,\nfor example because of an external controller is managing them, like an\nautoscaler.' } },
  withInitProviderMixin(value): {
    spec+: {
      parameters+: {
        initProvider+: value,
      },
    },
  },
  initProvider+:
    {
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
      withMetadataMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              metadata+: value,
            },
          },
        },
      },
      metadata+:
        {
          '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.\nThe UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation." } },
          withFolderUid(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  metadata+: {
                    folderUid: value,
                  },
                },
              },
            },
          },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique identifier of the resource.\nThe unique identifier of the resource.' } },
          withUid(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  metadata+: {
                    uid: value,
                  },
                },
              },
            },
          },
        },
      '#withOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
      withOptions(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              options: value,
            },
          },
        },
      },
      '#withOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
      withOptionsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              options+: value,
            },
          },
        },
      },
      options+:
        {
          '#withManagerIdentity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Override the identity stamped on this resource's manager metadata." } },
          withManagerIdentity(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  options+: {
                    managerIdentity: value,
                  },
                },
              },
            },
          },
          '#withOverwrite': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.\nSet to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.' } },
          withOverwrite(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  options+: {
                    overwrite: value,
                  },
                },
              },
            },
          },
        },
      '#withSecure': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecure(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              secure: value,
            },
          },
        },
      },
      '#withSecureMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecureMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              secure+: value,
            },
          },
        },
      },
      secure+:
        {
          '#withPrivateKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Private key for GitHub App authentication.\nPrivate key for GitHub App authentication.' } },
          withPrivateKey(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    privateKey: value,
                  },
                },
              },
            },
          },
          '#withPrivateKeyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Private key for GitHub App authentication.\nPrivate key for GitHub App authentication.' } },
          withPrivateKeyMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    privateKey+: value,
                  },
                },
              },
            },
          },
          '#withToken': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Access token.\nAccess token.' } },
          withToken(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    token: value,
                  },
                },
              },
            },
          },
          '#withTokenMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Access token.\nAccess token.' } },
          withTokenMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    token+: value,
                  },
                },
              },
            },
          },
        },
      '#withSecureVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'application of secure values.\nSet this to 1 when using `secure`, then increment it to trigger re-application of secure values.' } },
      withSecureVersion(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              secureVersion: value,
            },
          },
        },
      },
      '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpec(value): {
        parameters+: {
          initProvider+: {
            spec: value,
          },
        },
      },
      '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpecMixin(value): {
        parameters+: {
          initProvider+: {
            spec+: value,
          },
        },
      },
      spec+:
        {
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Connection description.\nConnection description.' } },
          withDescription(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    description: value,
                  },
                },
              },
            },
          },
          '#withGithub': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub App configuration. (see below for nested schema)\nGitHub App configuration.' } },
          withGithub(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    github: value,
                  },
                },
              },
            },
          },
          '#withGithubMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub App configuration. (see below for nested schema)\nGitHub App configuration.' } },
          withGithubMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    github+: value,
                  },
                },
              },
            },
          },
          github+:
            {
              '#withAppId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) GitHub App ID.\nGitHub App ID.' } },
              withAppId(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        github+: {
                          appId: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withInstallationId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) GitHub App installation ID.\nGitHub App installation ID.' } },
              withInstallationId(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        github+: {
                          installationId: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Display name shown in the UI.\nDisplay name shown in the UI.' } },
          withTitle(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    title: value,
                  },
                },
              },
            },
          },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Connection provider type.\nConnection provider type.' } },
          withType(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    type: value,
                  },
                },
              },
            },
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nProvider URL.' } },
          withUrl(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    url: value,
                  },
                },
              },
            },
          },
        },
    },
  '#withManagementPolicies': { 'function': { args: [{ default: ['*'], enums: null, name: 'value', type: ['array'] }], help: 'THIS IS A BETA FIELD. It is on by default but can be opted out\nthrough a Crossplane feature flag.\nManagementPolicies specify the array of actions Crossplane is allowed to\ntake on the managed and external resources.\nThis field is planned to replace the DeletionPolicy field in a future\nrelease. Currently, both could be set independently and non-default\nvalues would be honored if the feature flag is enabled. If both are\ncustom, the DeletionPolicy field will be ignored.\nSee the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223\nand this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md' } },
  withManagementPolicies(value): {
    spec+: {
      parameters+: {
        managementPolicies:
          (if std.isArray(value)
           then value
           else [value]),
      },
    },
  },
  '#withManagementPoliciesMixin': { 'function': { args: [{ default: ['*'], enums: null, name: 'value', type: ['array'] }], help: 'THIS IS A BETA FIELD. It is on by default but can be opted out\nthrough a Crossplane feature flag.\nManagementPolicies specify the array of actions Crossplane is allowed to\ntake on the managed and external resources.\nThis field is planned to replace the DeletionPolicy field in a future\nrelease. Currently, both could be set independently and non-default\nvalues would be honored if the feature flag is enabled. If both are\ncustom, the DeletionPolicy field will be ignored.\nSee the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223\nand this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md' } },
  withManagementPoliciesMixin(value): {
    spec+: {
      parameters+: {
        managementPolicies+:
          (if std.isArray(value)
           then value
           else [value]),
      },
    },
  },
  '#withProviderConfigRef': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'ProviderConfigReference specifies how the provider that will be used to\ncreate, observe, update, and delete this managed resource should be\nconfigured.' } },
  withProviderConfigRef(value={ name: 'default' }): {
    spec+: {
      parameters+: {
        providerConfigRef: value,
      },
    },
  },
  '#withProviderConfigRefMixin': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'ProviderConfigReference specifies how the provider that will be used to\ncreate, observe, update, and delete this managed resource should be\nconfigured.' } },
  withProviderConfigRefMixin(value): {
    spec+: {
      parameters+: {
        providerConfigRef+: value,
      },
    },
  },
  providerConfigRef+:
    {
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
      withName(value): {
        spec+: {
          parameters+: {
            providerConfigRef+: {
              name: value,
            },
          },
        },
      },
      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
      withPolicy(value): {
        spec+: {
          parameters+: {
            providerConfigRef+: {
              policy: value,
            },
          },
        },
      },
      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
      withPolicyMixin(value): {
        spec+: {
          parameters+: {
            providerConfigRef+: {
              policy+: value,
            },
          },
        },
      },
      policy+:
        {
          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
          withResolution(value='Required'): {
            spec+: {
              parameters+: {
                providerConfigRef+: {
                  policy+: {
                    resolution: value,
                  },
                },
              },
            },
          },
          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
          withResolve(value): {
            spec+: {
              parameters+: {
                providerConfigRef+: {
                  policy+: {
                    resolve: value,
                  },
                },
              },
            },
          },
        },
    },
  '#withSelectorLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Configure a custom label for use with selector.matchLabels.' } },
  withSelectorLabel(value): {
    spec+: {
      parameters+: {
        selectorLabel: value,
      },
    },
  },
  '#withWriteConnectionSecretToRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'WriteConnectionSecretToReference specifies the namespace and name of a\nSecret to which any connection details for this managed resource should\nbe written. Connection details frequently include the endpoint, username,\nand password required to connect to the managed resource.' } },
  withWriteConnectionSecretToRef(value): {
    spec+: {
      parameters+: {
        writeConnectionSecretToRef: value,
      },
    },
  },
  '#withWriteConnectionSecretToRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'WriteConnectionSecretToReference specifies the namespace and name of a\nSecret to which any connection details for this managed resource should\nbe written. Connection details frequently include the endpoint, username,\nand password required to connect to the managed resource.' } },
  withWriteConnectionSecretToRefMixin(value): {
    spec+: {
      parameters+: {
        writeConnectionSecretToRef+: value,
      },
    },
  },
  writeConnectionSecretToRef+:
    {
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
      withName(value): {
        spec+: {
          parameters+: {
            writeConnectionSecretToRef+: {
              name: value,
            },
          },
        },
      },
      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
      withNamespace(value): {
        spec+: {
          parameters+: {
            writeConnectionSecretToRef+: {
              namespace: value,
            },
          },
        },
      },
    },
}
