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
      '#withCloudAccessPolicyTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Grafana Cloud access policy.\nThe [Grafana Cloud access policy](https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/).' } },
      withCloudAccessPolicyTokenSecretRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              cloudAccessPolicyTokenSecretRef: value,
            },
          },
        },
      },
      '#withCloudAccessPolicyTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Grafana Cloud access policy.\nThe [Grafana Cloud access policy](https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/).' } },
      withCloudAccessPolicyTokenSecretRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              cloudAccessPolicyTokenSecretRef+: value,
            },
          },
        },
      },
      cloudAccessPolicyTokenSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  cloudAccessPolicyTokenSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  cloudAccessPolicyTokenSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  cloudAccessPolicyTokenSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withGrafanaSaTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The service account token.\nThe [service account](https://grafana.com/docs/grafana/latest/administration/service-accounts/) token.' } },
      withGrafanaSaTokenSecretRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              grafanaSaTokenSecretRef: value,
            },
          },
        },
      },
      '#withGrafanaSaTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The service account token.\nThe [service account](https://grafana.com/docs/grafana/latest/administration/service-accounts/) token.' } },
      withGrafanaSaTokenSecretRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              grafanaSaTokenSecretRef+: value,
            },
          },
        },
      },
      grafanaSaTokenSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  grafanaSaTokenSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  grafanaSaTokenSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  grafanaSaTokenSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withGrafanaUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user to use for the installation.\nThe user to use for the installation.' } },
      withGrafanaUser(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              grafanaUser: value,
            },
          },
        },
      },
      '#withK6ApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Grafana Cloud k6 API url.\nThe Grafana Cloud k6 API url.' } },
      withK6ApiUrl(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              k6ApiUrl: value,
            },
          },
        },
      },
      '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The identifier of the stack to install k6 on.\nThe identifier of the stack to install k6 on.' } },
      withStackId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              stackId: value,
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
      '#withCloudAccessPolicyTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Grafana Cloud access policy.\nThe [Grafana Cloud access policy](https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/).' } },
      withCloudAccessPolicyTokenSecretRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              cloudAccessPolicyTokenSecretRef: value,
            },
          },
        },
      },
      '#withCloudAccessPolicyTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Grafana Cloud access policy.\nThe [Grafana Cloud access policy](https://grafana.com/docs/grafana-cloud/account-management/authentication-and-permissions/access-policies/).' } },
      withCloudAccessPolicyTokenSecretRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              cloudAccessPolicyTokenSecretRef+: value,
            },
          },
        },
      },
      cloudAccessPolicyTokenSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  cloudAccessPolicyTokenSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  cloudAccessPolicyTokenSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  cloudAccessPolicyTokenSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withGrafanaSaTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The service account token.\nThe [service account](https://grafana.com/docs/grafana/latest/administration/service-accounts/) token.' } },
      withGrafanaSaTokenSecretRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              grafanaSaTokenSecretRef: value,
            },
          },
        },
      },
      '#withGrafanaSaTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The service account token.\nThe [service account](https://grafana.com/docs/grafana/latest/administration/service-accounts/) token.' } },
      withGrafanaSaTokenSecretRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              grafanaSaTokenSecretRef+: value,
            },
          },
        },
      },
      grafanaSaTokenSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  grafanaSaTokenSecretRef+: {
                    key: value,
                  },
                },
              },
            },
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  grafanaSaTokenSecretRef+: {
                    name: value,
                  },
                },
              },
            },
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
          withNamespace(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  grafanaSaTokenSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withGrafanaUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user to use for the installation.\nThe user to use for the installation.' } },
      withGrafanaUser(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              grafanaUser: value,
            },
          },
        },
      },
      '#withK6ApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Grafana Cloud k6 API url.\nThe Grafana Cloud k6 API url.' } },
      withK6ApiUrl(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              k6ApiUrl: value,
            },
          },
        },
      },
      '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The identifier of the stack to install k6 on.\nThe identifier of the stack to install k6 on.' } },
      withStackId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              stackId: value,
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
