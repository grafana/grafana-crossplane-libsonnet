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
      '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe default contact point to route all unmatched notifications to.' } },
      withContactPoint(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              contactPoint: value,
            },
          },
        },
      },
      '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              contactPointRef: value,
            },
          },
        },
      },
      '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              contactPointRef+: value,
            },
          },
        },
      },
      contactPointRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  contactPointRef+: {
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
                  contactPointRef+: {
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
                  contactPointRef+: {
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
                      contactPointRef+: {
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
                      contactPointRef+: {
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
      '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              contactPointSelector: value,
            },
          },
        },
      },
      '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              contactPointSelector+: value,
            },
          },
        },
      },
      contactPointSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                      contactPointSelector+: {
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
                      contactPointSelector+: {
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
      '#withDisableProvenance': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'Defaults to false. Defaults to `false`.' } },
      withDisableProvenance(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              disableProvenance: value,
            },
          },
        },
      },
      '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping.' } },
      withGroupBy(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              groupBy:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping.' } },
      withGroupByMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              groupBy+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
      withGroupInterval(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              groupInterval: value,
            },
          },
        },
      },
      '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
      withGroupWait(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              groupWait: value,
            },
          },
        },
      },
      '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Organization ID. If not set, the Org ID defined in the provider block will be used.\nThe Organization ID. If not set, the Org ID defined in the provider block will be used.' } },
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
      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
      withPolicy(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              policy:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
      withPolicyMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              policy+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      policy+:
        {
          '#': { help: '', name: 'policy' },
          '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
          withActiveTimings(value): {
            activeTimings:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
          withActiveTimingsMixin(value): {
            activeTimings+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
          withContactPoint(value): {
            contactPoint: value,
          },
          '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointRef(value): {
            contactPointRef: value,
          },
          '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointRefMixin(value): {
            contactPointRef+: value,
          },
          contactPointRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                contactPointRef+: {
                  name: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                contactPointRef+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                contactPointRef+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    contactPointRef+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    contactPointRef+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointSelector(value): {
            contactPointSelector: value,
          },
          '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointSelectorMixin(value): {
            contactPointSelector+: value,
          },
          contactPointSelector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                contactPointSelector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                contactPointSelector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                contactPointSelector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                contactPointSelector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                contactPointSelector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    contactPointSelector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    contactPointSelector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
          withContinue(value=true): {
            continue: value,
          },
          '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
          withGroupBy(value): {
            groupBy:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
          withGroupByMixin(value): {
            groupBy+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
          withGroupInterval(value): {
            groupInterval: value,
          },
          '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
          withGroupWait(value): {
            groupWait: value,
          },
          '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
          withMatcher(value): {
            matcher:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
          withMatcherMixin(value): {
            matcher+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          matcher+:
            {
              '#': { help: '', name: 'matcher' },
              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
              withLabel(value): {
                label: value,
              },
              '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
              withMatch(value): {
                match: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
              withValue(value): {
                value: value,
              },
            },
          '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingRef(value): {
            muteTimingRef:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingRefMixin(value): {
            muteTimingRef+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          muteTimingRef+:
            {
              '#': { help: '', name: 'muteTimingRef' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                name: value,
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                policy: value,
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                policy+: value,
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    policy+: {
                      resolution: value,
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    policy+: {
                      resolve: value,
                    },
                  },
                },
            },
          '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingSelector(value): {
            muteTimingSelector: value,
          },
          '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingSelectorMixin(value): {
            muteTimingSelector+: value,
          },
          muteTimingSelector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                muteTimingSelector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                muteTimingSelector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                muteTimingSelector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                muteTimingSelector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                muteTimingSelector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    muteTimingSelector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    muteTimingSelector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
          withMuteTimings(value): {
            muteTimings:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
          withMuteTimingsMixin(value): {
            muteTimings+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
          withPolicy(value): {
            policy:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
          withPolicyMixin(value): {
            policy+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          policy+:
            {
              '#': { help: '', name: 'policy' },
              '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
              withActiveTimings(value): {
                activeTimings:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
              withActiveTimingsMixin(value): {
                activeTimings+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
              withContactPoint(value): {
                contactPoint: value,
              },
              '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointRef(value): {
                contactPointRef: value,
              },
              '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointRefMixin(value): {
                contactPointRef+: value,
              },
              contactPointRef+:
                {
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                  withName(value): {
                    contactPointRef+: {
                      name: value,
                    },
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicy(value): {
                    contactPointRef+: {
                      policy: value,
                    },
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicyMixin(value): {
                    contactPointRef+: {
                      policy+: value,
                    },
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        contactPointRef+: {
                          policy+: {
                            resolution: value,
                          },
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        contactPointRef+: {
                          policy+: {
                            resolve: value,
                          },
                        },
                      },
                    },
                },
              '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointSelector(value): {
                contactPointSelector: value,
              },
              '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointSelectorMixin(value): {
                contactPointSelector+: value,
              },
              contactPointSelector+:
                {
                  '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                  withMatchControllerRef(value=true): {
                    contactPointSelector+: {
                      matchControllerRef: value,
                    },
                  },
                  '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabels(value): {
                    contactPointSelector+: {
                      matchLabels: value,
                    },
                  },
                  '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabelsMixin(value): {
                    contactPointSelector+: {
                      matchLabels+: value,
                    },
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicy(value): {
                    contactPointSelector+: {
                      policy: value,
                    },
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicyMixin(value): {
                    contactPointSelector+: {
                      policy+: value,
                    },
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        contactPointSelector+: {
                          policy+: {
                            resolution: value,
                          },
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        contactPointSelector+: {
                          policy+: {
                            resolve: value,
                          },
                        },
                      },
                    },
                },
              '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
              withContinue(value=true): {
                continue: value,
              },
              '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
              withGroupBy(value): {
                groupBy:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
              withGroupByMixin(value): {
                groupBy+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
              withGroupInterval(value): {
                groupInterval: value,
              },
              '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
              withGroupWait(value): {
                groupWait: value,
              },
              '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
              withMatcher(value): {
                matcher:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
              withMatcherMixin(value): {
                matcher+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              matcher+:
                {
                  '#': { help: '', name: 'matcher' },
                  '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                  withLabel(value): {
                    label: value,
                  },
                  '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                  withMatch(value): {
                    match: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                  withValue(value): {
                    value: value,
                  },
                },
              '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingRef(value): {
                muteTimingRef:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingRefMixin(value): {
                muteTimingRef+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              muteTimingRef+:
                {
                  '#': { help: '', name: 'muteTimingRef' },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                  withName(value): {
                    name: value,
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicy(value): {
                    policy: value,
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicyMixin(value): {
                    policy+: value,
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        policy+: {
                          resolution: value,
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                },
              '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingSelector(value): {
                muteTimingSelector: value,
              },
              '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingSelectorMixin(value): {
                muteTimingSelector+: value,
              },
              muteTimingSelector+:
                {
                  '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                  withMatchControllerRef(value=true): {
                    muteTimingSelector+: {
                      matchControllerRef: value,
                    },
                  },
                  '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabels(value): {
                    muteTimingSelector+: {
                      matchLabels: value,
                    },
                  },
                  '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabelsMixin(value): {
                    muteTimingSelector+: {
                      matchLabels+: value,
                    },
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicy(value): {
                    muteTimingSelector+: {
                      policy: value,
                    },
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicyMixin(value): {
                    muteTimingSelector+: {
                      policy+: value,
                    },
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        muteTimingSelector+: {
                          policy+: {
                            resolution: value,
                          },
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        muteTimingSelector+: {
                          policy+: {
                            resolve: value,
                          },
                        },
                      },
                    },
                },
              '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
              withMuteTimings(value): {
                muteTimings:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
              withMuteTimingsMixin(value): {
                muteTimings+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
              withPolicy(value): {
                policy:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
              withPolicyMixin(value): {
                policy+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              policy+:
                {
                  '#': { help: '', name: 'policy' },
                  '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                  withActiveTimings(value): {
                    activeTimings:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                  withActiveTimingsMixin(value): {
                    activeTimings+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
                  withContactPoint(value): {
                    contactPoint: value,
                  },
                  '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointRef(value): {
                    contactPointRef: value,
                  },
                  '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointRefMixin(value): {
                    contactPointRef+: value,
                  },
                  contactPointRef+:
                    {
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                      withName(value): {
                        contactPointRef+: {
                          name: value,
                        },
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicy(value): {
                        contactPointRef+: {
                          policy: value,
                        },
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicyMixin(value): {
                        contactPointRef+: {
                          policy+: value,
                        },
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            contactPointRef+: {
                              policy+: {
                                resolution: value,
                              },
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            contactPointRef+: {
                              policy+: {
                                resolve: value,
                              },
                            },
                          },
                        },
                    },
                  '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointSelector(value): {
                    contactPointSelector: value,
                  },
                  '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointSelectorMixin(value): {
                    contactPointSelector+: value,
                  },
                  contactPointSelector+:
                    {
                      '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                      withMatchControllerRef(value=true): {
                        contactPointSelector+: {
                          matchControllerRef: value,
                        },
                      },
                      '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabels(value): {
                        contactPointSelector+: {
                          matchLabels: value,
                        },
                      },
                      '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabelsMixin(value): {
                        contactPointSelector+: {
                          matchLabels+: value,
                        },
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicy(value): {
                        contactPointSelector+: {
                          policy: value,
                        },
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicyMixin(value): {
                        contactPointSelector+: {
                          policy+: value,
                        },
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            contactPointSelector+: {
                              policy+: {
                                resolution: value,
                              },
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            contactPointSelector+: {
                              policy+: {
                                resolve: value,
                              },
                            },
                          },
                        },
                    },
                  '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
                  withContinue(value=true): {
                    continue: value,
                  },
                  '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                  withGroupBy(value): {
                    groupBy:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                  withGroupByMixin(value): {
                    groupBy+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
                  withGroupInterval(value): {
                    groupInterval: value,
                  },
                  '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
                  withGroupWait(value): {
                    groupWait: value,
                  },
                  '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                  withMatcher(value): {
                    matcher:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                  withMatcherMixin(value): {
                    matcher+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  matcher+:
                    {
                      '#': { help: '', name: 'matcher' },
                      '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                      withLabel(value): {
                        label: value,
                      },
                      '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                      withMatch(value): {
                        match: value,
                      },
                      '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                      withValue(value): {
                        value: value,
                      },
                    },
                  '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingRef(value): {
                    muteTimingRef:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingRefMixin(value): {
                    muteTimingRef+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  muteTimingRef+:
                    {
                      '#': { help: '', name: 'muteTimingRef' },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                      withName(value): {
                        name: value,
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicy(value): {
                        policy: value,
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicyMixin(value): {
                        policy+: value,
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            policy+: {
                              resolution: value,
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            policy+: {
                              resolve: value,
                            },
                          },
                        },
                    },
                  '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingSelector(value): {
                    muteTimingSelector: value,
                  },
                  '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingSelectorMixin(value): {
                    muteTimingSelector+: value,
                  },
                  muteTimingSelector+:
                    {
                      '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                      withMatchControllerRef(value=true): {
                        muteTimingSelector+: {
                          matchControllerRef: value,
                        },
                      },
                      '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabels(value): {
                        muteTimingSelector+: {
                          matchLabels: value,
                        },
                      },
                      '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabelsMixin(value): {
                        muteTimingSelector+: {
                          matchLabels+: value,
                        },
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicy(value): {
                        muteTimingSelector+: {
                          policy: value,
                        },
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicyMixin(value): {
                        muteTimingSelector+: {
                          policy+: value,
                        },
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            muteTimingSelector+: {
                              policy+: {
                                resolution: value,
                              },
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            muteTimingSelector+: {
                              policy+: {
                                resolve: value,
                              },
                            },
                          },
                        },
                    },
                  '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                  withMuteTimings(value): {
                    muteTimings:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                  withMuteTimingsMixin(value): {
                    muteTimings+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                  withPolicy(value): {
                    policy:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                  withPolicyMixin(value): {
                    policy+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  policy+:
                    {
                      '#': { help: '', name: 'policy' },
                      '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                      withActiveTimings(value): {
                        activeTimings:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                      withActiveTimingsMixin(value): {
                        activeTimings+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
                      withContactPoint(value): {
                        contactPoint: value,
                      },
                      '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointRef(value): {
                        contactPointRef: value,
                      },
                      '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointRefMixin(value): {
                        contactPointRef+: value,
                      },
                      contactPointRef+:
                        {
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                          withName(value): {
                            contactPointRef+: {
                              name: value,
                            },
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicy(value): {
                            contactPointRef+: {
                              policy: value,
                            },
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicyMixin(value): {
                            contactPointRef+: {
                              policy+: value,
                            },
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                contactPointRef+: {
                                  policy+: {
                                    resolution: value,
                                  },
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                contactPointRef+: {
                                  policy+: {
                                    resolve: value,
                                  },
                                },
                              },
                            },
                        },
                      '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointSelector(value): {
                        contactPointSelector: value,
                      },
                      '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointSelectorMixin(value): {
                        contactPointSelector+: value,
                      },
                      contactPointSelector+:
                        {
                          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                          withMatchControllerRef(value=true): {
                            contactPointSelector+: {
                              matchControllerRef: value,
                            },
                          },
                          '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabels(value): {
                            contactPointSelector+: {
                              matchLabels: value,
                            },
                          },
                          '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabelsMixin(value): {
                            contactPointSelector+: {
                              matchLabels+: value,
                            },
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicy(value): {
                            contactPointSelector+: {
                              policy: value,
                            },
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicyMixin(value): {
                            contactPointSelector+: {
                              policy+: value,
                            },
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                contactPointSelector+: {
                                  policy+: {
                                    resolution: value,
                                  },
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                contactPointSelector+: {
                                  policy+: {
                                    resolve: value,
                                  },
                                },
                              },
                            },
                        },
                      '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
                      withContinue(value=true): {
                        continue: value,
                      },
                      '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                      withGroupBy(value): {
                        groupBy:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                      withGroupByMixin(value): {
                        groupBy+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
                      withGroupInterval(value): {
                        groupInterval: value,
                      },
                      '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
                      withGroupWait(value): {
                        groupWait: value,
                      },
                      '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                      withMatcher(value): {
                        matcher:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                      withMatcherMixin(value): {
                        matcher+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      matcher+:
                        {
                          '#': { help: '', name: 'matcher' },
                          '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                          withLabel(value): {
                            label: value,
                          },
                          '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                          withMatch(value): {
                            match: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingRef(value): {
                        muteTimingRef:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingRefMixin(value): {
                        muteTimingRef+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      muteTimingRef+:
                        {
                          '#': { help: '', name: 'muteTimingRef' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                          withName(value): {
                            name: value,
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicy(value): {
                            policy: value,
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicyMixin(value): {
                            policy+: value,
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                policy+: {
                                  resolution: value,
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                policy+: {
                                  resolve: value,
                                },
                              },
                            },
                        },
                      '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingSelector(value): {
                        muteTimingSelector: value,
                      },
                      '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingSelectorMixin(value): {
                        muteTimingSelector+: value,
                      },
                      muteTimingSelector+:
                        {
                          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                          withMatchControllerRef(value=true): {
                            muteTimingSelector+: {
                              matchControllerRef: value,
                            },
                          },
                          '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabels(value): {
                            muteTimingSelector+: {
                              matchLabels: value,
                            },
                          },
                          '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabelsMixin(value): {
                            muteTimingSelector+: {
                              matchLabels+: value,
                            },
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicy(value): {
                            muteTimingSelector+: {
                              policy: value,
                            },
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicyMixin(value): {
                            muteTimingSelector+: {
                              policy+: value,
                            },
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                muteTimingSelector+: {
                                  policy+: {
                                    resolution: value,
                                  },
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                muteTimingSelector+: {
                                  policy+: {
                                    resolve: value,
                                  },
                                },
                              },
                            },
                        },
                      '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                      withMuteTimings(value): {
                        muteTimings:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                      withMuteTimingsMixin(value): {
                        muteTimings+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                      withPolicy(value): {
                        policy:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                      withPolicyMixin(value): {
                        policy+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      policy+:
                        {
                          '#': { help: '', name: 'policy' },
                          '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                          withActiveTimings(value): {
                            activeTimings:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                          withActiveTimingsMixin(value): {
                            activeTimings+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
                          withContactPoint(value): {
                            contactPoint: value,
                          },
                          '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
                          withContinue(value=true): {
                            continue: value,
                          },
                          '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                          withGroupBy(value): {
                            groupBy:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                          withGroupByMixin(value): {
                            groupBy+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
                          withGroupInterval(value): {
                            groupInterval: value,
                          },
                          '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
                          withGroupWait(value): {
                            groupWait: value,
                          },
                          '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                          withMatcher(value): {
                            matcher:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                          withMatcherMixin(value): {
                            matcher+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          matcher+:
                            {
                              '#': { help: '', name: 'matcher' },
                              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                              withLabel(value): {
                                label: value,
                              },
                              '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                              withMatch(value): {
                                match: value,
                              },
                              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                              withValue(value): {
                                value: value,
                              },
                            },
                          '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                          withMuteTimings(value): {
                            muteTimings:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                          withMuteTimingsMixin(value): {
                            muteTimings+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
                          withRepeatInterval(value): {
                            repeatInterval: value,
                          },
                        },
                      '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
                      withRepeatInterval(value): {
                        repeatInterval: value,
                      },
                    },
                  '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
                  withRepeatInterval(value): {
                    repeatInterval: value,
                  },
                },
              '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
              withRepeatInterval(value): {
                repeatInterval: value,
              },
            },
          '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
          withRepeatInterval(value): {
            repeatInterval: value,
          },
        },
      '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
      withRepeatInterval(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              repeatInterval: value,
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
      '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe default contact point to route all unmatched notifications to.' } },
      withContactPoint(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              contactPoint: value,
            },
          },
        },
      },
      '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              contactPointRef: value,
            },
          },
        },
      },
      '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              contactPointRef+: value,
            },
          },
        },
      },
      contactPointRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  contactPointRef+: {
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
                  contactPointRef+: {
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
                  contactPointRef+: {
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
                      contactPointRef+: {
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
                      contactPointRef+: {
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
      '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              contactPointSelector: value,
            },
          },
        },
      },
      '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
      withContactPointSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              contactPointSelector+: value,
            },
          },
        },
      },
      contactPointSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                  contactPointSelector+: {
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
                      contactPointSelector+: {
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
                      contactPointSelector+: {
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
      '#withDisableProvenance': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'Defaults to false. Defaults to `false`.' } },
      withDisableProvenance(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              disableProvenance: value,
            },
          },
        },
      },
      '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping.' } },
      withGroupBy(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              groupBy:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping.' } },
      withGroupByMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              groupBy+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
      withGroupInterval(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              groupInterval: value,
            },
          },
        },
      },
      '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
      withGroupWait(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              groupWait: value,
            },
          },
        },
      },
      '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Organization ID. If not set, the Org ID defined in the provider block will be used.\nThe Organization ID. If not set, the Org ID defined in the provider block will be used.' } },
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
      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
      withPolicy(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              policy:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
      withPolicyMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              policy+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      policy+:
        {
          '#': { help: '', name: 'policy' },
          '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
          withActiveTimings(value): {
            activeTimings:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
          withActiveTimingsMixin(value): {
            activeTimings+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
          withContactPoint(value): {
            contactPoint: value,
          },
          '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointRef(value): {
            contactPointRef: value,
          },
          '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointRefMixin(value): {
            contactPointRef+: value,
          },
          contactPointRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                contactPointRef+: {
                  name: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                contactPointRef+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                contactPointRef+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    contactPointRef+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    contactPointRef+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointSelector(value): {
            contactPointSelector: value,
          },
          '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
          withContactPointSelectorMixin(value): {
            contactPointSelector+: value,
          },
          contactPointSelector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                contactPointSelector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                contactPointSelector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                contactPointSelector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                contactPointSelector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                contactPointSelector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    contactPointSelector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    contactPointSelector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
          withContinue(value=true): {
            continue: value,
          },
          '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
          withGroupBy(value): {
            groupBy:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
          withGroupByMixin(value): {
            groupBy+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
          withGroupInterval(value): {
            groupInterval: value,
          },
          '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
          withGroupWait(value): {
            groupWait: value,
          },
          '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
          withMatcher(value): {
            matcher:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
          withMatcherMixin(value): {
            matcher+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          matcher+:
            {
              '#': { help: '', name: 'matcher' },
              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
              withLabel(value): {
                label: value,
              },
              '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
              withMatch(value): {
                match: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
              withValue(value): {
                value: value,
              },
            },
          '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingRef(value): {
            muteTimingRef:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingRefMixin(value): {
            muteTimingRef+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          muteTimingRef+:
            {
              '#': { help: '', name: 'muteTimingRef' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                name: value,
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                policy: value,
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                policy+: value,
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    policy+: {
                      resolution: value,
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    policy+: {
                      resolve: value,
                    },
                  },
                },
            },
          '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingSelector(value): {
            muteTimingSelector: value,
          },
          '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
          withMuteTimingSelectorMixin(value): {
            muteTimingSelector+: value,
          },
          muteTimingSelector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                muteTimingSelector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                muteTimingSelector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                muteTimingSelector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                muteTimingSelector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                muteTimingSelector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    muteTimingSelector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    muteTimingSelector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
          withMuteTimings(value): {
            muteTimings:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
          withMuteTimingsMixin(value): {
            muteTimings+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
          withPolicy(value): {
            policy:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
          withPolicyMixin(value): {
            policy+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          policy+:
            {
              '#': { help: '', name: 'policy' },
              '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
              withActiveTimings(value): {
                activeTimings:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
              withActiveTimingsMixin(value): {
                activeTimings+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
              withContactPoint(value): {
                contactPoint: value,
              },
              '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointRef(value): {
                contactPointRef: value,
              },
              '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointRefMixin(value): {
                contactPointRef+: value,
              },
              contactPointRef+:
                {
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                  withName(value): {
                    contactPointRef+: {
                      name: value,
                    },
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicy(value): {
                    contactPointRef+: {
                      policy: value,
                    },
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicyMixin(value): {
                    contactPointRef+: {
                      policy+: value,
                    },
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        contactPointRef+: {
                          policy+: {
                            resolution: value,
                          },
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        contactPointRef+: {
                          policy+: {
                            resolve: value,
                          },
                        },
                      },
                    },
                },
              '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointSelector(value): {
                contactPointSelector: value,
              },
              '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
              withContactPointSelectorMixin(value): {
                contactPointSelector+: value,
              },
              contactPointSelector+:
                {
                  '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                  withMatchControllerRef(value=true): {
                    contactPointSelector+: {
                      matchControllerRef: value,
                    },
                  },
                  '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabels(value): {
                    contactPointSelector+: {
                      matchLabels: value,
                    },
                  },
                  '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabelsMixin(value): {
                    contactPointSelector+: {
                      matchLabels+: value,
                    },
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicy(value): {
                    contactPointSelector+: {
                      policy: value,
                    },
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicyMixin(value): {
                    contactPointSelector+: {
                      policy+: value,
                    },
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        contactPointSelector+: {
                          policy+: {
                            resolution: value,
                          },
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        contactPointSelector+: {
                          policy+: {
                            resolve: value,
                          },
                        },
                      },
                    },
                },
              '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
              withContinue(value=true): {
                continue: value,
              },
              '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
              withGroupBy(value): {
                groupBy:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
              withGroupByMixin(value): {
                groupBy+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
              withGroupInterval(value): {
                groupInterval: value,
              },
              '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
              withGroupWait(value): {
                groupWait: value,
              },
              '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
              withMatcher(value): {
                matcher:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
              withMatcherMixin(value): {
                matcher+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              matcher+:
                {
                  '#': { help: '', name: 'matcher' },
                  '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                  withLabel(value): {
                    label: value,
                  },
                  '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                  withMatch(value): {
                    match: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                  withValue(value): {
                    value: value,
                  },
                },
              '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingRef(value): {
                muteTimingRef:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingRefMixin(value): {
                muteTimingRef+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              muteTimingRef+:
                {
                  '#': { help: '', name: 'muteTimingRef' },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                  withName(value): {
                    name: value,
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicy(value): {
                    policy: value,
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                  withPolicyMixin(value): {
                    policy+: value,
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        policy+: {
                          resolution: value,
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        policy+: {
                          resolve: value,
                        },
                      },
                    },
                },
              '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingSelector(value): {
                muteTimingSelector: value,
              },
              '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
              withMuteTimingSelectorMixin(value): {
                muteTimingSelector+: value,
              },
              muteTimingSelector+:
                {
                  '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                  withMatchControllerRef(value=true): {
                    muteTimingSelector+: {
                      matchControllerRef: value,
                    },
                  },
                  '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabels(value): {
                    muteTimingSelector+: {
                      matchLabels: value,
                    },
                  },
                  '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                  withMatchLabelsMixin(value): {
                    muteTimingSelector+: {
                      matchLabels+: value,
                    },
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicy(value): {
                    muteTimingSelector+: {
                      policy: value,
                    },
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                  withPolicyMixin(value): {
                    muteTimingSelector+: {
                      policy+: value,
                    },
                  },
                  policy+:
                    {
                      '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                      withResolution(value='Required'): {
                        muteTimingSelector+: {
                          policy+: {
                            resolution: value,
                          },
                        },
                      },
                      '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                      withResolve(value): {
                        muteTimingSelector+: {
                          policy+: {
                            resolve: value,
                          },
                        },
                      },
                    },
                },
              '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
              withMuteTimings(value): {
                muteTimings:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
              withMuteTimingsMixin(value): {
                muteTimings+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
              withPolicy(value): {
                policy:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
              withPolicyMixin(value): {
                policy+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              policy+:
                {
                  '#': { help: '', name: 'policy' },
                  '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                  withActiveTimings(value): {
                    activeTimings:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                  withActiveTimingsMixin(value): {
                    activeTimings+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
                  withContactPoint(value): {
                    contactPoint: value,
                  },
                  '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointRef(value): {
                    contactPointRef: value,
                  },
                  '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointRefMixin(value): {
                    contactPointRef+: value,
                  },
                  contactPointRef+:
                    {
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                      withName(value): {
                        contactPointRef+: {
                          name: value,
                        },
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicy(value): {
                        contactPointRef+: {
                          policy: value,
                        },
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicyMixin(value): {
                        contactPointRef+: {
                          policy+: value,
                        },
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            contactPointRef+: {
                              policy+: {
                                resolution: value,
                              },
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            contactPointRef+: {
                              policy+: {
                                resolve: value,
                              },
                            },
                          },
                        },
                    },
                  '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointSelector(value): {
                    contactPointSelector: value,
                  },
                  '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                  withContactPointSelectorMixin(value): {
                    contactPointSelector+: value,
                  },
                  contactPointSelector+:
                    {
                      '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                      withMatchControllerRef(value=true): {
                        contactPointSelector+: {
                          matchControllerRef: value,
                        },
                      },
                      '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabels(value): {
                        contactPointSelector+: {
                          matchLabels: value,
                        },
                      },
                      '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabelsMixin(value): {
                        contactPointSelector+: {
                          matchLabels+: value,
                        },
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicy(value): {
                        contactPointSelector+: {
                          policy: value,
                        },
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicyMixin(value): {
                        contactPointSelector+: {
                          policy+: value,
                        },
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            contactPointSelector+: {
                              policy+: {
                                resolution: value,
                              },
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            contactPointSelector+: {
                              policy+: {
                                resolve: value,
                              },
                            },
                          },
                        },
                    },
                  '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
                  withContinue(value=true): {
                    continue: value,
                  },
                  '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                  withGroupBy(value): {
                    groupBy:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                  withGroupByMixin(value): {
                    groupBy+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
                  withGroupInterval(value): {
                    groupInterval: value,
                  },
                  '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
                  withGroupWait(value): {
                    groupWait: value,
                  },
                  '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                  withMatcher(value): {
                    matcher:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                  withMatcherMixin(value): {
                    matcher+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  matcher+:
                    {
                      '#': { help: '', name: 'matcher' },
                      '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                      withLabel(value): {
                        label: value,
                      },
                      '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                      withMatch(value): {
                        match: value,
                      },
                      '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                      withValue(value): {
                        value: value,
                      },
                    },
                  '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingRef(value): {
                    muteTimingRef:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingRefMixin(value): {
                    muteTimingRef+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  muteTimingRef+:
                    {
                      '#': { help: '', name: 'muteTimingRef' },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                      withName(value): {
                        name: value,
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicy(value): {
                        policy: value,
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                      withPolicyMixin(value): {
                        policy+: value,
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            policy+: {
                              resolution: value,
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            policy+: {
                              resolve: value,
                            },
                          },
                        },
                    },
                  '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingSelector(value): {
                    muteTimingSelector: value,
                  },
                  '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                  withMuteTimingSelectorMixin(value): {
                    muteTimingSelector+: value,
                  },
                  muteTimingSelector+:
                    {
                      '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                      withMatchControllerRef(value=true): {
                        muteTimingSelector+: {
                          matchControllerRef: value,
                        },
                      },
                      '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabels(value): {
                        muteTimingSelector+: {
                          matchLabels: value,
                        },
                      },
                      '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                      withMatchLabelsMixin(value): {
                        muteTimingSelector+: {
                          matchLabels+: value,
                        },
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicy(value): {
                        muteTimingSelector+: {
                          policy: value,
                        },
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                      withPolicyMixin(value): {
                        muteTimingSelector+: {
                          policy+: value,
                        },
                      },
                      policy+:
                        {
                          '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                          withResolution(value='Required'): {
                            muteTimingSelector+: {
                              policy+: {
                                resolution: value,
                              },
                            },
                          },
                          '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                          withResolve(value): {
                            muteTimingSelector+: {
                              policy+: {
                                resolve: value,
                              },
                            },
                          },
                        },
                    },
                  '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                  withMuteTimings(value): {
                    muteTimings:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                  withMuteTimingsMixin(value): {
                    muteTimings+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                  withPolicy(value): {
                    policy:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                  withPolicyMixin(value): {
                    policy+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  policy+:
                    {
                      '#': { help: '', name: 'policy' },
                      '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                      withActiveTimings(value): {
                        activeTimings:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                      withActiveTimingsMixin(value): {
                        activeTimings+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
                      withContactPoint(value): {
                        contactPoint: value,
                      },
                      '#withContactPointRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointRef(value): {
                        contactPointRef: value,
                      },
                      '#withContactPointRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointRefMixin(value): {
                        contactPointRef+: value,
                      },
                      contactPointRef+:
                        {
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                          withName(value): {
                            contactPointRef+: {
                              name: value,
                            },
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicy(value): {
                            contactPointRef+: {
                              policy: value,
                            },
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicyMixin(value): {
                            contactPointRef+: {
                              policy+: value,
                            },
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                contactPointRef+: {
                                  policy+: {
                                    resolution: value,
                                  },
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                contactPointRef+: {
                                  policy+: {
                                    resolve: value,
                                  },
                                },
                              },
                            },
                        },
                      '#withContactPointSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointSelector(value): {
                        contactPointSelector: value,
                      },
                      '#withContactPointSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a ContactPoint in alerting to populate contactPoint.' } },
                      withContactPointSelectorMixin(value): {
                        contactPointSelector+: value,
                      },
                      contactPointSelector+:
                        {
                          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                          withMatchControllerRef(value=true): {
                            contactPointSelector+: {
                              matchControllerRef: value,
                            },
                          },
                          '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabels(value): {
                            contactPointSelector+: {
                              matchLabels: value,
                            },
                          },
                          '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabelsMixin(value): {
                            contactPointSelector+: {
                              matchLabels+: value,
                            },
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicy(value): {
                            contactPointSelector+: {
                              policy: value,
                            },
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicyMixin(value): {
                            contactPointSelector+: {
                              policy+: value,
                            },
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                contactPointSelector+: {
                                  policy+: {
                                    resolution: value,
                                  },
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                contactPointSelector+: {
                                  policy+: {
                                    resolve: value,
                                  },
                                },
                              },
                            },
                        },
                      '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
                      withContinue(value=true): {
                        continue: value,
                      },
                      '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                      withGroupBy(value): {
                        groupBy:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                      withGroupByMixin(value): {
                        groupBy+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
                      withGroupInterval(value): {
                        groupInterval: value,
                      },
                      '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
                      withGroupWait(value): {
                        groupWait: value,
                      },
                      '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                      withMatcher(value): {
                        matcher:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                      withMatcherMixin(value): {
                        matcher+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      matcher+:
                        {
                          '#': { help: '', name: 'matcher' },
                          '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                          withLabel(value): {
                            label: value,
                          },
                          '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                          withMatch(value): {
                            match: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withMuteTimingRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingRef(value): {
                        muteTimingRef:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withMuteTimingRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'References to MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingRefMixin(value): {
                        muteTimingRef+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      muteTimingRef+:
                        {
                          '#': { help: '', name: 'muteTimingRef' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
                          withName(value): {
                            name: value,
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicy(value): {
                            policy: value,
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
                          withPolicyMixin(value): {
                            policy+: value,
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                policy+: {
                                  resolution: value,
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                policy+: {
                                  resolve: value,
                                },
                              },
                            },
                        },
                      '#withMuteTimingSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingSelector(value): {
                        muteTimingSelector: value,
                      },
                      '#withMuteTimingSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a list of MuteTiming in alerting to populate muteTimings.' } },
                      withMuteTimingSelectorMixin(value): {
                        muteTimingSelector+: value,
                      },
                      muteTimingSelector+:
                        {
                          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
                          withMatchControllerRef(value=true): {
                            muteTimingSelector+: {
                              matchControllerRef: value,
                            },
                          },
                          '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabels(value): {
                            muteTimingSelector+: {
                              matchLabels: value,
                            },
                          },
                          '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
                          withMatchLabelsMixin(value): {
                            muteTimingSelector+: {
                              matchLabels+: value,
                            },
                          },
                          '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicy(value): {
                            muteTimingSelector+: {
                              policy: value,
                            },
                          },
                          '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
                          withPolicyMixin(value): {
                            muteTimingSelector+: {
                              policy+: value,
                            },
                          },
                          policy+:
                            {
                              '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                              withResolution(value='Required'): {
                                muteTimingSelector+: {
                                  policy+: {
                                    resolution: value,
                                  },
                                },
                              },
                              '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                              withResolve(value): {
                                muteTimingSelector+: {
                                  policy+: {
                                    resolve: value,
                                  },
                                },
                              },
                            },
                        },
                      '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                      withMuteTimings(value): {
                        muteTimings:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                      withMuteTimingsMixin(value): {
                        muteTimings+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                      withPolicy(value): {
                        policy:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Routing rules for specific label sets. (see below for nested schema)\nRouting rules for specific label sets.' } },
                      withPolicyMixin(value): {
                        policy+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      policy+:
                        {
                          '#': { help: '', name: 'policy' },
                          '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                          withActiveTimings(value): {
                            activeTimings:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later\nA list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later' } },
                          withActiveTimingsMixin(value): {
                            activeTimings+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The default contact point to route all unmatched notifications to.\nThe contact point to route notifications that match this rule to.' } },
                          withContactPoint(value): {
                            contactPoint: value,
                          },
                          '#withContinue': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.\nWhether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it." } },
                          withContinue(value=true): {
                            continue: value,
                          },
                          '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                          withGroupBy(value): {
                            groupBy:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.' } },
                          withGroupByMixin(value): {
                            groupBy+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.\nMinimum time interval between two notifications for the same group. Default is 5 minutes.' } },
                          withGroupInterval(value): {
                            groupInterval: value,
                          },
                          '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.\nTime to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.' } },
                          withGroupWait(value): {
                            groupWait: value,
                          },
                          '#withMatcher': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                          withMatcher(value): {
                            matcher:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withMatcherMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)\nDescribes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.' } },
                          withMatcherMixin(value): {
                            matcher+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          matcher+:
                            {
                              '#': { help: '', name: 'matcher' },
                              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the label to match against.\nThe name of the label to match against.' } },
                              withLabel(value): {
                                label: value,
                              },
                              '#withMatch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The operator to apply when matching values of the given label. Allowed operators are = for equality, != for negated equality, =~ for regex equality, and !~ for negated regex equality.\nThe operator to apply when matching values of the given label. Allowed operators are `=` for equality, `!=` for negated equality, `=~` for regex equality, and `!~` for negated regex equality.' } },
                              withMatch(value): {
                                match: value,
                              },
                              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The label value to match against.\nThe label value to match against.' } },
                              withValue(value): {
                                value: value,
                              },
                            },
                          '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                          withMuteTimings(value): {
                            muteTimings:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.\nA list of time intervals to apply to alerts that match this policy to mute them for the specified time.' } },
                          withMuteTimingsMixin(value): {
                            muteTimings+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                          '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
                          withRepeatInterval(value): {
                            repeatInterval: value,
                          },
                        },
                      '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
                      withRepeatInterval(value): {
                        repeatInterval: value,
                      },
                    },
                  '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
                  withRepeatInterval(value): {
                    repeatInterval: value,
                  },
                },
              '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
              withRepeatInterval(value): {
                repeatInterval: value,
              },
            },
          '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
          withRepeatInterval(value): {
            repeatInterval: value,
          },
        },
      '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sending a notification if an alert is still firing. Default is 4 hours.\nMinimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.' } },
      withRepeatInterval(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              repeatInterval: value,
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
