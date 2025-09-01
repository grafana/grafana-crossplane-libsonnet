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
      '#withBaselineTestRunId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Identifier of a baseline test run used for results comparison.\nIdentifier of a baseline test run used for results comparison.' } },
      withBaselineTestRunId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              baselineTestRunId: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'friendly identifier of the load test.\nHuman-friendly identifier of the load test.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withProjectId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The identifier of the project this load test belongs to.\nThe identifier of the project this load test belongs to.' } },
      withProjectId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              projectId: value,
            },
          },
        },
      },
      '#withProjectRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Project in k6 to populate projectId.' } },
      withProjectRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              projectRef: value,
            },
          },
        },
      },
      '#withProjectRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Project in k6 to populate projectId.' } },
      withProjectRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              projectRef+: value,
            },
          },
        },
      },
      projectRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicy(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectRef+: {
                    policy: value,
                  },
                },
              },
            },
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicyMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectRef+: {
                    policy+: value,
                  },
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
                    forProvider+: {
                      projectRef+: {
                        policy+: {
                          resolution: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
              withResolve(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      projectRef+: {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                  },
                },
              },
            },
        },
      '#withProjectSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Project in k6 to populate projectId.' } },
      withProjectSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              projectSelector: value,
            },
          },
        },
      },
      '#withProjectSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Project in k6 to populate projectId.' } },
      withProjectSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              projectSelector+: value,
            },
          },
        },
      },
      projectSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectSelector+: {
                    matchControllerRef: value,
                  },
                },
              },
            },
          },
          '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
          withMatchLabels(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectSelector+: {
                    matchLabels: value,
                  },
                },
              },
            },
          },
          '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
          withMatchLabelsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectSelector+: {
                    matchLabels+: value,
                  },
                },
              },
            },
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
          withPolicy(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectSelector+: {
                    policy: value,
                  },
                },
              },
            },
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
          withPolicyMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  projectSelector+: {
                    policy+: value,
                  },
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
                    forProvider+: {
                      projectSelector+: {
                        policy+: {
                          resolution: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
              withResolve(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      projectSelector+: {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                  },
                },
              },
            },
        },
      '#withScript': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The k6 test script content. Can be provided inline or via the file() function.\nThe k6 test script content. Can be provided inline or via the `file()` function.' } },
      withScript(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              script: value,
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
      '#withBaselineTestRunId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Identifier of a baseline test run used for results comparison.\nIdentifier of a baseline test run used for results comparison.' } },
      withBaselineTestRunId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              baselineTestRunId: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'friendly identifier of the load test.\nHuman-friendly identifier of the load test.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withProjectId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The identifier of the project this load test belongs to.\nThe identifier of the project this load test belongs to.' } },
      withProjectId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              projectId: value,
            },
          },
        },
      },
      '#withProjectRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Project in k6 to populate projectId.' } },
      withProjectRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              projectRef: value,
            },
          },
        },
      },
      '#withProjectRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Project in k6 to populate projectId.' } },
      withProjectRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              projectRef+: value,
            },
          },
        },
      },
      projectRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicy(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectRef+: {
                    policy: value,
                  },
                },
              },
            },
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicyMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectRef+: {
                    policy+: value,
                  },
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
                    initProvider+: {
                      projectRef+: {
                        policy+: {
                          resolution: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
              withResolve(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      projectRef+: {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                  },
                },
              },
            },
        },
      '#withProjectSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Project in k6 to populate projectId.' } },
      withProjectSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              projectSelector: value,
            },
          },
        },
      },
      '#withProjectSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Project in k6 to populate projectId.' } },
      withProjectSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              projectSelector+: value,
            },
          },
        },
      },
      projectSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectSelector+: {
                    matchControllerRef: value,
                  },
                },
              },
            },
          },
          '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
          withMatchLabels(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectSelector+: {
                    matchLabels: value,
                  },
                },
              },
            },
          },
          '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
          withMatchLabelsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectSelector+: {
                    matchLabels+: value,
                  },
                },
              },
            },
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
          withPolicy(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectSelector+: {
                    policy: value,
                  },
                },
              },
            },
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
          withPolicyMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  projectSelector+: {
                    policy+: value,
                  },
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
                    initProvider+: {
                      projectSelector+: {
                        policy+: {
                          resolution: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
              withResolve(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      projectSelector+: {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                  },
                },
              },
            },
        },
      '#withScript': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The k6 test script content. Can be provided inline or via the file() function.\nThe k6 test script content. Can be provided inline or via the `file()` function.' } },
      withScript(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              script: value,
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
  '#withPublishConnectionDetailsTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'PublishConnectionDetailsTo specifies the connection secret config which\ncontains a name, metadata and a reference to secret store config to\nwhich any connection details for this managed resource should be written.\nConnection details frequently include the endpoint, username,\nand password required to connect to the managed resource.' } },
  withPublishConnectionDetailsTo(value): {
    spec+: {
      parameters+: {
        publishConnectionDetailsTo: value,
      },
    },
  },
  '#withPublishConnectionDetailsToMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'PublishConnectionDetailsTo specifies the connection secret config which\ncontains a name, metadata and a reference to secret store config to\nwhich any connection details for this managed resource should be written.\nConnection details frequently include the endpoint, username,\nand password required to connect to the managed resource.' } },
  withPublishConnectionDetailsToMixin(value): {
    spec+: {
      parameters+: {
        publishConnectionDetailsTo+: value,
      },
    },
  },
  publishConnectionDetailsTo+:
    {
      '#withConfigRef': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'SecretStoreConfigRef specifies which secret store config should be used\nfor this ConnectionSecret.' } },
      withConfigRef(value={ name: 'default' }): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              configRef: value,
            },
          },
        },
      },
      '#withConfigRefMixin': { 'function': { args: [{ default: { name: 'default' }, enums: null, name: 'value', type: ['object'] }], help: 'SecretStoreConfigRef specifies which secret store config should be used\nfor this ConnectionSecret.' } },
      withConfigRefMixin(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              configRef+: value,
            },
          },
        },
      },
      configRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  configRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicy(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  configRef+: {
                    policy: value,
                  },
                },
              },
            },
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
          withPolicyMixin(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  configRef+: {
                    policy+: value,
                  },
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
                    publishConnectionDetailsTo+: {
                      configRef+: {
                        policy+: {
                          resolution: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
              withResolve(value): {
                spec+: {
                  parameters+: {
                    publishConnectionDetailsTo+: {
                      configRef+: {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                  },
                },
              },
            },
        },
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Metadata is the metadata for connection secret.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Metadata is the metadata for connection secret.' } },
      withMetadataMixin(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              metadata+: value,
            },
          },
        },
      },
      metadata+:
        {
          '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Annotations are the annotations to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.annotations".\n- It is up to Secret Store implementation for others store types.' } },
          withAnnotations(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    annotations: value,
                  },
                },
              },
            },
          },
          '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Annotations are the annotations to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.annotations".\n- It is up to Secret Store implementation for others store types.' } },
          withAnnotationsMixin(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    annotations+: value,
                  },
                },
              },
            },
          },
          '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Labels are the labels/tags to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.labels".\n- It is up to Secret Store implementation for others store types.' } },
          withLabels(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    labels: value,
                  },
                },
              },
            },
          },
          '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Labels are the labels/tags to be added to connection secret.\n- For Kubernetes secrets, this will be used as "metadata.labels".\n- It is up to Secret Store implementation for others store types.' } },
          withLabelsMixin(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    labels+: value,
                  },
                },
              },
            },
          },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Type is the SecretType for the connection secret.\n- Only valid for Kubernetes Secret Stores.' } },
          withType(value): {
            spec+: {
              parameters+: {
                publishConnectionDetailsTo+: {
                  metadata+: {
                    type: value,
                  },
                },
              },
            },
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name is the name of the connection secret.' } },
      withName(value): {
        spec+: {
          parameters+: {
            publishConnectionDetailsTo+: {
              name: value,
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
  '#withWriteConnectionSecretToRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'WriteConnectionSecretToReference specifies the namespace and name of a\nSecret to which any connection details for this managed resource should\nbe written. Connection details frequently include the endpoint, username,\nand password required to connect to the managed resource.\nThis field is planned to be replaced in a future release in favor of\nPublishConnectionDetailsTo. Currently, both could be set independently\nand connection details would be published to both without affecting\neach other.' } },
  withWriteConnectionSecretToRef(value): {
    spec+: {
      parameters+: {
        writeConnectionSecretToRef: value,
      },
    },
  },
  '#withWriteConnectionSecretToRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'WriteConnectionSecretToReference specifies the namespace and name of a\nSecret to which any connection details for this managed resource should\nbe written. Connection details frequently include the endpoint, username,\nand password required to connect to the managed resource.\nThis field is planned to be replaced in a future release in favor of\nPublishConnectionDetailsTo. Currently, both could be set independently\nand connection details would be published to both without affecting\neach other.' } },
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
