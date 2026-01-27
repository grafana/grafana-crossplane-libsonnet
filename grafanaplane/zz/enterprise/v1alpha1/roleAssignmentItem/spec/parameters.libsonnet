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
      '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.\nThe Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.' } },
      withOrgId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              orgId: value,
            },
          },
        },
      },
      '#withOrganizationRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Organization in oss to populate orgId.' } },
      withOrganizationRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              organizationRef: value,
            },
          },
        },
      },
      '#withOrganizationRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Organization in oss to populate orgId.' } },
      withOrganizationRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              organizationRef+: value,
            },
          },
        },
      },
      organizationRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  organizationRef+: {
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
                  organizationRef+: {
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
                  organizationRef+: {
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
                      organizationRef+: {
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
                      organizationRef+: {
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
      '#withOrganizationSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Organization in oss to populate orgId.' } },
      withOrganizationSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              organizationSelector: value,
            },
          },
        },
      },
      '#withOrganizationSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Organization in oss to populate orgId.' } },
      withOrganizationSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              organizationSelector+: value,
            },
          },
        },
      },
      organizationSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                      organizationSelector+: {
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
                      organizationSelector+: {
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
      '#withRoleRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Role in enterprise to populate roleUid.' } },
      withRoleRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              roleRef: value,
            },
          },
        },
      },
      '#withRoleRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Role in enterprise to populate roleUid.' } },
      withRoleRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              roleRef+: value,
            },
          },
        },
      },
      roleRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  roleRef+: {
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
                  roleRef+: {
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
                  roleRef+: {
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
                      roleRef+: {
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
                      roleRef+: {
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
      '#withRoleSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Role in enterprise to populate roleUid.' } },
      withRoleSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              roleSelector: value,
            },
          },
        },
      },
      '#withRoleSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Role in enterprise to populate roleUid.' } },
      withRoleSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              roleSelector+: value,
            },
          },
        },
      },
      roleSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  roleSelector+: {
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
                  roleSelector+: {
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
                  roleSelector+: {
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
                  roleSelector+: {
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
                  roleSelector+: {
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
                      roleSelector+: {
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
                      roleSelector+: {
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
      '#withRoleUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the role UID onto which to assign an actor\nthe role UID onto which to assign an actor' } },
      withRoleUid(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              roleUid: value,
            },
          },
        },
      },
      '#withServiceAccountId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the service account onto which the role is to be assigned\nthe service account onto which the role is to be assigned' } },
      withServiceAccountId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              serviceAccountId: value,
            },
          },
        },
      },
      '#withServiceAccountRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              serviceAccountRef: value,
            },
          },
        },
      },
      '#withServiceAccountRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              serviceAccountRef+: value,
            },
          },
        },
      },
      serviceAccountRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  serviceAccountRef+: {
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
                  serviceAccountRef+: {
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
                  serviceAccountRef+: {
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
                      serviceAccountRef+: {
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
                      serviceAccountRef+: {
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
      '#withServiceAccountSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              serviceAccountSelector: value,
            },
          },
        },
      },
      '#withServiceAccountSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              serviceAccountSelector+: value,
            },
          },
        },
      },
      serviceAccountSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                      serviceAccountSelector+: {
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
                      serviceAccountSelector+: {
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
      '#withTeamId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the team onto which the role is to be assigned\nthe team onto which the role is to be assigned' } },
      withTeamId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamId: value,
            },
          },
        },
      },
      '#withTeamRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Team in oss to populate teamId.' } },
      withTeamRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamRef: value,
            },
          },
        },
      },
      '#withTeamRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Team in oss to populate teamId.' } },
      withTeamRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamRef+: value,
            },
          },
        },
      },
      teamRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  teamRef+: {
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
                  teamRef+: {
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
                  teamRef+: {
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
                      teamRef+: {
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
                      teamRef+: {
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
      '#withTeamSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Team in oss to populate teamId.' } },
      withTeamSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamSelector: value,
            },
          },
        },
      },
      '#withTeamSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Team in oss to populate teamId.' } },
      withTeamSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamSelector+: value,
            },
          },
        },
      },
      teamSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  teamSelector+: {
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
                  teamSelector+: {
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
                  teamSelector+: {
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
                  teamSelector+: {
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
                  teamSelector+: {
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
                      teamSelector+: {
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
                      teamSelector+: {
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
      '#withUserId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the user onto which the role is to be assigned\nthe user onto which the role is to be assigned' } },
      withUserId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              userId: value,
            },
          },
        },
      },
      '#withUserRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a User in oss to populate userId.' } },
      withUserRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              userRef: value,
            },
          },
        },
      },
      '#withUserRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a User in oss to populate userId.' } },
      withUserRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              userRef+: value,
            },
          },
        },
      },
      userRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  userRef+: {
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
                  userRef+: {
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
                  userRef+: {
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
                      userRef+: {
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
                      userRef+: {
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
      '#withUserSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a User in oss to populate userId.' } },
      withUserSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              userSelector: value,
            },
          },
        },
      },
      '#withUserSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a User in oss to populate userId.' } },
      withUserSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              userSelector+: value,
            },
          },
        },
      },
      userSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  userSelector+: {
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
                  userSelector+: {
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
                  userSelector+: {
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
                  userSelector+: {
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
                  userSelector+: {
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
                      userSelector+: {
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
                      userSelector+: {
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
      '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.\nThe Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.' } },
      withOrgId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              orgId: value,
            },
          },
        },
      },
      '#withOrganizationRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Organization in oss to populate orgId.' } },
      withOrganizationRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              organizationRef: value,
            },
          },
        },
      },
      '#withOrganizationRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Organization in oss to populate orgId.' } },
      withOrganizationRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              organizationRef+: value,
            },
          },
        },
      },
      organizationRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  organizationRef+: {
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
                  organizationRef+: {
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
                  organizationRef+: {
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
                      organizationRef+: {
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
                      organizationRef+: {
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
      '#withOrganizationSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Organization in oss to populate orgId.' } },
      withOrganizationSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              organizationSelector: value,
            },
          },
        },
      },
      '#withOrganizationSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Organization in oss to populate orgId.' } },
      withOrganizationSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              organizationSelector+: value,
            },
          },
        },
      },
      organizationSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                  organizationSelector+: {
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
                      organizationSelector+: {
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
                      organizationSelector+: {
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
      '#withRoleRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Role in enterprise to populate roleUid.' } },
      withRoleRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              roleRef: value,
            },
          },
        },
      },
      '#withRoleRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Role in enterprise to populate roleUid.' } },
      withRoleRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              roleRef+: value,
            },
          },
        },
      },
      roleRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  roleRef+: {
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
                  roleRef+: {
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
                  roleRef+: {
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
                      roleRef+: {
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
                      roleRef+: {
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
      '#withRoleSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Role in enterprise to populate roleUid.' } },
      withRoleSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              roleSelector: value,
            },
          },
        },
      },
      '#withRoleSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Role in enterprise to populate roleUid.' } },
      withRoleSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              roleSelector+: value,
            },
          },
        },
      },
      roleSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  roleSelector+: {
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
                  roleSelector+: {
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
                  roleSelector+: {
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
                  roleSelector+: {
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
                  roleSelector+: {
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
                      roleSelector+: {
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
                      roleSelector+: {
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
      '#withRoleUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the role UID onto which to assign an actor\nthe role UID onto which to assign an actor' } },
      withRoleUid(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              roleUid: value,
            },
          },
        },
      },
      '#withServiceAccountId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the service account onto which the role is to be assigned\nthe service account onto which the role is to be assigned' } },
      withServiceAccountId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              serviceAccountId: value,
            },
          },
        },
      },
      '#withServiceAccountRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              serviceAccountRef: value,
            },
          },
        },
      },
      '#withServiceAccountRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              serviceAccountRef+: value,
            },
          },
        },
      },
      serviceAccountRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  serviceAccountRef+: {
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
                  serviceAccountRef+: {
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
                  serviceAccountRef+: {
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
                      serviceAccountRef+: {
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
                      serviceAccountRef+: {
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
      '#withServiceAccountSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              serviceAccountSelector: value,
            },
          },
        },
      },
      '#withServiceAccountSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ServiceAccount in oss to populate serviceAccountId.' } },
      withServiceAccountSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              serviceAccountSelector+: value,
            },
          },
        },
      },
      serviceAccountSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                  serviceAccountSelector+: {
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
                      serviceAccountSelector+: {
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
                      serviceAccountSelector+: {
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
      '#withTeamId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the team onto which the role is to be assigned\nthe team onto which the role is to be assigned' } },
      withTeamId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamId: value,
            },
          },
        },
      },
      '#withTeamRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Team in oss to populate teamId.' } },
      withTeamRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamRef: value,
            },
          },
        },
      },
      '#withTeamRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Team in oss to populate teamId.' } },
      withTeamRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamRef+: value,
            },
          },
        },
      },
      teamRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  teamRef+: {
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
                  teamRef+: {
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
                  teamRef+: {
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
                      teamRef+: {
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
                      teamRef+: {
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
      '#withTeamSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Team in oss to populate teamId.' } },
      withTeamSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamSelector: value,
            },
          },
        },
      },
      '#withTeamSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Team in oss to populate teamId.' } },
      withTeamSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamSelector+: value,
            },
          },
        },
      },
      teamSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  teamSelector+: {
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
                  teamSelector+: {
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
                  teamSelector+: {
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
                  teamSelector+: {
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
                  teamSelector+: {
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
                      teamSelector+: {
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
                      teamSelector+: {
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
      '#withUserId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) the user onto which the role is to be assigned\nthe user onto which the role is to be assigned' } },
      withUserId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              userId: value,
            },
          },
        },
      },
      '#withUserRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a User in oss to populate userId.' } },
      withUserRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              userRef: value,
            },
          },
        },
      },
      '#withUserRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a User in oss to populate userId.' } },
      withUserRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              userRef+: value,
            },
          },
        },
      },
      userRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  userRef+: {
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
                  userRef+: {
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
                  userRef+: {
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
                      userRef+: {
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
                      userRef+: {
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
      '#withUserSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a User in oss to populate userId.' } },
      withUserSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              userSelector: value,
            },
          },
        },
      },
      '#withUserSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a User in oss to populate userId.' } },
      withUserSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              userSelector+: value,
            },
          },
        },
      },
      userSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  userSelector+: {
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
                  userSelector+: {
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
                  userSelector+: {
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
                  userSelector+: {
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
                  userSelector+: {
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
                      userSelector+: {
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
                      userSelector+: {
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
