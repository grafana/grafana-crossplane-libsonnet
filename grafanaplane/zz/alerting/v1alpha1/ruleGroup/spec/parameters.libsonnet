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
      '#withFolderRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Folder in oss to populate folderUid.' } },
      withFolderRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              folderRef: value,
            },
          },
        },
      },
      '#withFolderRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Folder in oss to populate folderUid.' } },
      withFolderRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              folderRef+: value,
            },
          },
        },
      },
      folderRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  folderRef+: {
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
                  folderRef+: {
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
                  folderRef+: {
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
                      folderRef+: {
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
                      folderRef+: {
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
      '#withFolderSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Folder in oss to populate folderUid.' } },
      withFolderSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              folderSelector: value,
            },
          },
        },
      },
      '#withFolderSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Folder in oss to populate folderUid.' } },
      withFolderSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              folderSelector+: value,
            },
          },
        },
      },
      folderSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  folderSelector+: {
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
                  folderSelector+: {
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
                  folderSelector+: {
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
                  folderSelector+: {
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
                  folderSelector+: {
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
                      folderSelector+: {
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
                      folderSelector+: {
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
      '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The UID of the folder that the group belongs to.\nThe UID of the folder that the group belongs to.' } },
      withFolderUid(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              folderUid: value,
            },
          },
        },
      },
      '#withIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The interval, in seconds, at which all rules in the group are evaluated. If a group contains many rules, the rules are evaluated sequentially.\nThe interval, in seconds, at which all rules in the group are evaluated. If a group contains many rules, the rules are evaluated sequentially.' } },
      withIntervalSeconds(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              intervalSeconds: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the rule group.\nThe name of the rule group.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
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
      '#withRule': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The rules within the group. (see below for nested schema)\nThe rules within the group.' } },
      withRule(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              rule:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withRuleMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The rules within the group. (see below for nested schema)\nThe rules within the group.' } },
      withRuleMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              rule+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      rule+:
        {
          '#': { help: '', name: 'rule' },
          '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs of metadata to attach to the alert rule. They add additional information, such as a summary or runbook_url, to help identify and investigate alerts. The dashboardUId and panelId annotations, which link alerts to a panel, must be set together. Defaults to map[].\nKey-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts. The `dashboardUId` and `panelId` annotations, which link alerts to a panel, must be set together. Defaults to `map[]`.' } },
          withAnnotations(value): {
            annotations: value,
          },
          '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs of metadata to attach to the alert rule. They add additional information, such as a summary or runbook_url, to help identify and investigate alerts. The dashboardUId and panelId annotations, which link alerts to a panel, must be set together. Defaults to map[].\nKey-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts. The `dashboardUId` and `panelId` annotations, which link alerts to a panel, must be set together. Defaults to `map[]`.' } },
          withAnnotationsMixin(value): {
            annotations+: value,
          },
          '#withCondition': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ref_id of the query node in the data field to use as the alert condition.\nThe `ref_id` of the query node in the `data` field to use as the alert condition.' } },
          withCondition(value): {
            condition: value,
          },
          '#withData': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) A sequence of stages that describe the contents of the rule. (see below for nested schema)\nA sequence of stages that describe the contents of the rule.' } },
          withData(value): {
            data:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) A sequence of stages that describe the contents of the rule. (see below for nested schema)\nA sequence of stages that describe the contents of the rule.' } },
          withDataMixin(value): {
            data+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          data+:
            {
              '#': { help: '', name: 'data' },
              '#withDatasourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '100" if this stage is an expression stage.\nThe UID of the datasource being queried, or "-100" if this stage is an expression stage.' } },
              withDatasourceUid(value): {
                datasourceUid: value,
              },
              '#withModel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Custom JSON data to send to the specified datasource when querying.\nCustom JSON data to send to the specified datasource when querying.' } },
              withModel(value): {
                model: value,
              },
              '#withQueryType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) An optional identifier for the type of query being executed. Defaults to “.\nAn optional identifier for the type of query being executed. Defaults to “.' } },
              withQueryType(value): {
                queryType: value,
              },
              '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A unique string to identify this query stage within a rule.\nA unique string to identify this query stage within a rule.' } },
              withRefId(value): {
                refId: value,
              },
              '#withRelativeTimeRange': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The time range, relative to when the query is executed, across which to query. (see below for nested schema)\nThe time range, relative to when the query is executed, across which to query.' } },
              withRelativeTimeRange(value): {
                relativeTimeRange:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withRelativeTimeRangeMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The time range, relative to when the query is executed, across which to query. (see below for nested schema)\nThe time range, relative to when the query is executed, across which to query.' } },
              withRelativeTimeRangeMixin(value): {
                relativeTimeRange+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              relativeTimeRange+:
                {
                  '#': { help: '', name: 'relativeTimeRange' },
                  '#withFrom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The number of seconds in the past, relative to when the rule is evaluated, at which the time range begins.\nThe number of seconds in the past, relative to when the rule is evaluated, at which the time range begins.' } },
                  withFrom(value): {
                    from: value,
                  },
                  '#withTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The number of seconds in the past, relative to when the rule is evaluated, at which the time range ends.\nThe number of seconds in the past, relative to when the rule is evaluated, at which the time range ends.' } },
                  withTo(value): {
                    to: value,
                  },
                },
            },
          '#withExecErrState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting.  Defaults to Alerting if not set.\nDescribes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting.  Defaults to Alerting if not set." } },
          withExecErrState(value): {
            execErrState: value,
          },
          '#withFor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending. Defaults to 0.\nThe amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending. Defaults to `0`.' } },
          withFor(value): {
            'for': value,
          },
          '#withIsPaused': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Sets whether the alert should be paused or not. Defaults to false.\nSets whether the alert should be paused or not. Defaults to `false`.' } },
          withIsPaused(value=true): {
            isPaused: value,
          },
          '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to map[].\nKey-value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to `map[]`.' } },
          withLabels(value): {
            labels: value,
          },
          '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to map[].\nKey-value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to `map[]`.' } },
          withLabelsMixin(value): {
            labels+: value,
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the rule group.\nThe name of the alert rule.' } },
          withName(value): {
            name: value,
          },
          '#withNoDataState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting. Defaults to NoData if not set.\nDescribes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting. Defaults to NoData if not set." } },
          withNoDataState(value): {
            noDataState: value,
          },
          '#withNotificationSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled. (see below for nested schema)\nNotification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled." } },
          withNotificationSettings(value): {
            notificationSettings:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withNotificationSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled. (see below for nested schema)\nNotification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled." } },
          withNotificationSettingsMixin(value): {
            notificationSettings+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          notificationSettings+:
            {
              '#': { help: '', name: 'notificationSettings' },
              '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The contact point to route notifications that match this rule to.\nThe contact point to route notifications that match this rule to.' } },
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
              '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included." } },
              withGroupBy(value): {
                groupBy:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included." } },
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
              '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of mute timing names to apply to alerts that match this policy.\nA list of mute timing names to apply to alerts that match this policy.' } },
              withMuteTimings(value): {
                muteTimings:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of mute timing names to apply to alerts that match this policy.\nA list of mute timing names to apply to alerts that match this policy.' } },
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
          '#withRecord': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Settings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled. (see below for nested schema)\nSettings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled." } },
          withRecord(value): {
            record:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withRecordMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Settings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled. (see below for nested schema)\nSettings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled." } },
          withRecordMixin(value): {
            record+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          record+:
            {
              '#': { help: '', name: 'record' },
              '#withFrom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) The number of seconds in the past, relative to when the rule is evaluated, at which the time range begins.\nThe ref id of the query node in the data field to use as the source of the metric.' } },
              withFrom(value): {
                from: value,
              },
              '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the metric to write to.\nThe name of the metric to write to.' } },
              withMetric(value): {
                metric: value,
              },
            },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique identifier of the alert rule.\nThe unique identifier of the alert rule.' } },
          withUid(value): {
            uid: value,
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
      '#withFolderRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Folder in oss to populate folderUid.' } },
      withFolderRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              folderRef: value,
            },
          },
        },
      },
      '#withFolderRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a Folder in oss to populate folderUid.' } },
      withFolderRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              folderRef+: value,
            },
          },
        },
      },
      folderRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  folderRef+: {
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
                  folderRef+: {
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
                  folderRef+: {
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
                      folderRef+: {
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
                      folderRef+: {
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
      '#withFolderSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Folder in oss to populate folderUid.' } },
      withFolderSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              folderSelector: value,
            },
          },
        },
      },
      '#withFolderSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a Folder in oss to populate folderUid.' } },
      withFolderSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              folderSelector+: value,
            },
          },
        },
      },
      folderSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  folderSelector+: {
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
                  folderSelector+: {
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
                  folderSelector+: {
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
                  folderSelector+: {
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
                  folderSelector+: {
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
                      folderSelector+: {
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
                      folderSelector+: {
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
      '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The UID of the folder that the group belongs to.\nThe UID of the folder that the group belongs to.' } },
      withFolderUid(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              folderUid: value,
            },
          },
        },
      },
      '#withIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The interval, in seconds, at which all rules in the group are evaluated. If a group contains many rules, the rules are evaluated sequentially.\nThe interval, in seconds, at which all rules in the group are evaluated. If a group contains many rules, the rules are evaluated sequentially.' } },
      withIntervalSeconds(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              intervalSeconds: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the rule group.\nThe name of the rule group.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
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
      '#withRule': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The rules within the group. (see below for nested schema)\nThe rules within the group.' } },
      withRule(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              rule:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withRuleMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The rules within the group. (see below for nested schema)\nThe rules within the group.' } },
      withRuleMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              rule+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      rule+:
        {
          '#': { help: '', name: 'rule' },
          '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs of metadata to attach to the alert rule. They add additional information, such as a summary or runbook_url, to help identify and investigate alerts. The dashboardUId and panelId annotations, which link alerts to a panel, must be set together. Defaults to map[].\nKey-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts. The `dashboardUId` and `panelId` annotations, which link alerts to a panel, must be set together. Defaults to `map[]`.' } },
          withAnnotations(value): {
            annotations: value,
          },
          '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs of metadata to attach to the alert rule. They add additional information, such as a summary or runbook_url, to help identify and investigate alerts. The dashboardUId and panelId annotations, which link alerts to a panel, must be set together. Defaults to map[].\nKey-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts. The `dashboardUId` and `panelId` annotations, which link alerts to a panel, must be set together. Defaults to `map[]`.' } },
          withAnnotationsMixin(value): {
            annotations+: value,
          },
          '#withCondition': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ref_id of the query node in the data field to use as the alert condition.\nThe `ref_id` of the query node in the `data` field to use as the alert condition.' } },
          withCondition(value): {
            condition: value,
          },
          '#withData': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) A sequence of stages that describe the contents of the rule. (see below for nested schema)\nA sequence of stages that describe the contents of the rule.' } },
          withData(value): {
            data:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) A sequence of stages that describe the contents of the rule. (see below for nested schema)\nA sequence of stages that describe the contents of the rule.' } },
          withDataMixin(value): {
            data+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          data+:
            {
              '#': { help: '', name: 'data' },
              '#withDatasourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '100" if this stage is an expression stage.\nThe UID of the datasource being queried, or "-100" if this stage is an expression stage.' } },
              withDatasourceUid(value): {
                datasourceUid: value,
              },
              '#withModel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Custom JSON data to send to the specified datasource when querying.\nCustom JSON data to send to the specified datasource when querying.' } },
              withModel(value): {
                model: value,
              },
              '#withQueryType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) An optional identifier for the type of query being executed. Defaults to “.\nAn optional identifier for the type of query being executed. Defaults to “.' } },
              withQueryType(value): {
                queryType: value,
              },
              '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A unique string to identify this query stage within a rule.\nA unique string to identify this query stage within a rule.' } },
              withRefId(value): {
                refId: value,
              },
              '#withRelativeTimeRange': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The time range, relative to when the query is executed, across which to query. (see below for nested schema)\nThe time range, relative to when the query is executed, across which to query.' } },
              withRelativeTimeRange(value): {
                relativeTimeRange:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withRelativeTimeRangeMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The time range, relative to when the query is executed, across which to query. (see below for nested schema)\nThe time range, relative to when the query is executed, across which to query.' } },
              withRelativeTimeRangeMixin(value): {
                relativeTimeRange+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              relativeTimeRange+:
                {
                  '#': { help: '', name: 'relativeTimeRange' },
                  '#withFrom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The number of seconds in the past, relative to when the rule is evaluated, at which the time range begins.\nThe number of seconds in the past, relative to when the rule is evaluated, at which the time range begins.' } },
                  withFrom(value): {
                    from: value,
                  },
                  '#withTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The number of seconds in the past, relative to when the rule is evaluated, at which the time range ends.\nThe number of seconds in the past, relative to when the rule is evaluated, at which the time range ends.' } },
                  withTo(value): {
                    to: value,
                  },
                },
            },
          '#withExecErrState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting.  Defaults to Alerting if not set.\nDescribes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting.  Defaults to Alerting if not set." } },
          withExecErrState(value): {
            execErrState: value,
          },
          '#withFor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending. Defaults to 0.\nThe amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending. Defaults to `0`.' } },
          withFor(value): {
            'for': value,
          },
          '#withIsPaused': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Sets whether the alert should be paused or not. Defaults to false.\nSets whether the alert should be paused or not. Defaults to `false`.' } },
          withIsPaused(value=true): {
            isPaused: value,
          },
          '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to map[].\nKey-value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to `map[]`.' } },
          withLabels(value): {
            labels: value,
          },
          '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to map[].\nKey-value pairs to attach to the alert rule that can be used in matching, grouping, and routing. Defaults to `map[]`.' } },
          withLabelsMixin(value): {
            labels+: value,
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the rule group.\nThe name of the alert rule.' } },
          withName(value): {
            name: value,
          },
          '#withNoDataState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting. Defaults to NoData if not set.\nDescribes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting. Defaults to NoData if not set." } },
          withNoDataState(value): {
            noDataState: value,
          },
          '#withNotificationSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled. (see below for nested schema)\nNotification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled." } },
          withNotificationSettings(value): {
            notificationSettings:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withNotificationSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Notification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled. (see below for nested schema)\nNotification settings for the rule. If specified, it overrides the notification policies. Available since Grafana 10.4, requires feature flag 'alertingSimplifiedRouting' to be enabled." } },
          withNotificationSettingsMixin(value): {
            notificationSettings+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          notificationSettings+:
            {
              '#': { help: '', name: 'notificationSettings' },
              '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The contact point to route notifications that match this rule to.\nThe contact point to route notifications that match this rule to.' } },
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
              '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included." } },
              withGroupBy(value): {
                groupBy:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.\nA list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included." } },
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
              '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of mute timing names to apply to alerts that match this policy.\nA list of mute timing names to apply to alerts that match this policy.' } },
              withMuteTimings(value): {
                muteTimings:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A list of mute timing names to apply to alerts that match this policy.\nA list of mute timing names to apply to alerts that match this policy.' } },
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
          '#withRecord': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Settings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled. (see below for nested schema)\nSettings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled." } },
          withRecord(value): {
            record:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withRecordMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block List, Max: 1) Settings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled. (see below for nested schema)\nSettings for a recording rule. Available since Grafana 11.2, requires feature flag 'grafanaManagedRecordingRules' to be enabled." } },
          withRecordMixin(value): {
            record+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          record+:
            {
              '#': { help: '', name: 'record' },
              '#withFrom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) The number of seconds in the past, relative to when the rule is evaluated, at which the time range begins.\nThe ref id of the query node in the data field to use as the source of the metric.' } },
              withFrom(value): {
                from: value,
              },
              '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the metric to write to.\nThe name of the metric to write to.' } },
              withMetric(value): {
                metric: value,
              },
            },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique identifier of the alert rule.\nThe unique identifier of the alert rule.' } },
          withUid(value): {
            uid: value,
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
