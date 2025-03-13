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
      '#withAlerting': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating. (see below for nested schema)\nConfigures the alerting rules that will be generated for each\ntime window associated with the SLO. Grafana SLOs can generate\nalerts when the short-term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating.' } },
      withAlerting(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              alerting:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAlertingMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating. (see below for nested schema)\nConfigures the alerting rules that will be generated for each\ntime window associated with the SLO. Grafana SLOs can generate\nalerts when the short-term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating.' } },
      withAlertingMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              alerting+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      alerting+:
        {
          '#': { help: '', name: 'alerting' },
          '#withAdvancedOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Advanced Options for Alert Rules (see below for nested schema)\nAdvanced Options for Alert Rules' } },
          withAdvancedOptions(value): {
            advancedOptions:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withAdvancedOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Advanced Options for Alert Rules (see below for nested schema)\nAdvanced Options for Alert Rules' } },
          withAdvancedOptionsMixin(value): {
            advancedOptions+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          advancedOptions+:
            {
              '#': { help: '', name: 'advancedOptions' },
              '#withMinFailures': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Minimum number of failed events to trigger an alert\nMinimum number of failed events to trigger an alert' } },
              withMinFailures(value): {
                minFailures: value,
              },
            },
          '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations will be attached to all alerts generated by any of these rules.' } },
          withAnnotation(value): {
            annotation:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withAnnotationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations will be attached to all alerts generated by any of these rules.' } },
          withAnnotationMixin(value): {
            annotation+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          annotation+:
            {
              '#': { help: '', name: 'annotation' },
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
              withKey(value): {
                key: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
              withValue(value): {
                value: value,
              },
            },
          '#withFastburn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Fast Burn alerts (see below for nested schema)\nAlerting Rules generated for Fast Burn alerts' } },
          withFastburn(value): {
            fastburn:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withFastburnMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Fast Burn alerts (see below for nested schema)\nAlerting Rules generated for Fast Burn alerts' } },
          withFastburnMixin(value): {
            fastburn+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          fastburn+:
            {
              '#': { help: '', name: 'fastburn' },
              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Fast Burn alerts.' } },
              withAnnotation(value): {
                annotation:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withAnnotationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Fast Burn alerts.' } },
              withAnnotationMixin(value): {
                annotation+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              annotation+:
                {
                  '#': { help: '', name: 'annotation' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Fast Burn alerts.' } },
              withLabel(value): {
                label:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Fast Burn alerts.' } },
              withLabelMixin(value): {
                label+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              label+:
                {
                  '#': { help: '', name: 'label' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
            },
          '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels will be attached to all alerts generated by any of these rules.' } },
          withLabel(value): {
            label:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels will be attached to all alerts generated by any of these rules.' } },
          withLabelMixin(value): {
            label+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          label+:
            {
              '#': { help: '', name: 'label' },
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
              withKey(value): {
                key: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
              withValue(value): {
                value: value,
              },
            },
          '#withSlowburn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Slow Burn alerts (see below for nested schema)\nAlerting Rules generated for Slow Burn alerts' } },
          withSlowburn(value): {
            slowburn:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSlowburnMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Slow Burn alerts (see below for nested schema)\nAlerting Rules generated for Slow Burn alerts' } },
          withSlowburnMixin(value): {
            slowburn+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          slowburn+:
            {
              '#': { help: '', name: 'slowburn' },
              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Slow Burn alerts.' } },
              withAnnotation(value): {
                annotation:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withAnnotationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Slow Burn alerts.' } },
              withAnnotationMixin(value): {
                annotation+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              annotation+:
                {
                  '#': { help: '', name: 'annotation' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Slow Burn alerts.' } },
              withLabel(value): {
                label:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Slow Burn alerts.' } },
              withLabelMixin(value): {
                label+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              label+:
                {
                  '#': { help: '', name: 'label' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
            },
        },
      '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'text field that can provide more context to an SLO.\nDescription is a free-text field that can provide more context to an SLO.' } },
      withDescription(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              description: value,
            },
          },
        },
      },
      '#withDestinationDatasource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Destination Datasource sets the datasource defined for an SLO (see below for nested schema)\nDestination Datasource sets the datasource defined for an SLO' } },
      withDestinationDatasource(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              destinationDatasource:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDestinationDatasourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Destination Datasource sets the datasource defined for an SLO (see below for nested schema)\nDestination Datasource sets the datasource defined for an SLO' } },
      withDestinationDatasourceMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              destinationDatasource+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      destinationDatasource+:
        {
          '#': { help: '', name: 'destinationDatasource' },
          '#withRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate uid.' } },
          withRef(value): {
            ref: value,
          },
          '#withRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate uid.' } },
          withRefMixin(value): {
            ref+: value,
          },
          ref+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                ref+: {
                  name: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                ref+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                ref+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    ref+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    ref+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate uid.' } },
          withSelector(value): {
            selector: value,
          },
          '#withSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate uid.' } },
          withSelectorMixin(value): {
            selector+: value,
          },
          selector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                selector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                selector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                selector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                selector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                selector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    selector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    selector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) UID for the Datasource\nUID for the Datasource' } },
          withUid(value): {
            uid: value,
          },
        },
      '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) UID for the SLO folder\nUID for the SLO folder' } },
      withFolderUid(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              folderUid: value,
            },
          },
        },
      },
      '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nAdditional labels that will be attached to all metrics generated from the query. These labels are useful for grouping SLOs in dashboard views that you create by hand. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
      withLabel(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              label:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nAdditional labels that will be attached to all metrics generated from the query. These labels are useful for grouping SLOs in dashboard views that you create by hand. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
      withLabelMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              label+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      label+:
        {
          '#': { help: '', name: 'label' },
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
          withKey(value): {
            key: value,
          },
          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
          withValue(value): {
            value: value,
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name should be a short description of your indicator. Consider names like "API Availability"\nName should be a short description of your indicator. Consider names like "API Availability"' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withObjectives': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Over each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget. (see below for nested schema)\nOver each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget.' } },
      withObjectives(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              objectives:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withObjectivesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Over each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget. (see below for nested schema)\nOver each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget.' } },
      withObjectivesMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              objectives+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      objectives+:
        {
          '#': { help: '', name: 'objectives' },
          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nValue between 0 and 1. If the value of the query is above the objective, the SLO is met.' } },
          withValue(value): {
            value: value,
          },
          '#withWindow': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'parsable time duration string like 24h, 60m. This is the time window the objective is measured over.\nA Prometheus-parsable time duration string like 24h, 60m. This is the time window the objective is measured over.' } },
          withWindow(value): {
            window: value,
          },
        },
      '#withQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Query describes the indicator that will be measured against the objective. Freeform Query types are currently supported. (see below for nested schema)\nQuery describes the indicator that will be measured against the objective. Freeform Query types are currently supported.' } },
      withQuery(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              query:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Query describes the indicator that will be measured against the objective. Freeform Query types are currently supported. (see below for nested schema)\nQuery describes the indicator that will be measured against the objective. Freeform Query types are currently supported.' } },
      withQueryMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              query+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      query+:
        {
          '#': { help: '', name: 'query' },
          '#withFreeform': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withFreeform(value): {
            freeform:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withFreeformMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withFreeformMixin(value): {
            freeform+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          freeform+:
            {
              '#': { help: '', name: 'freeform' },
              '#withQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Block List, Min: 1) Query describes the indicator that will be measured against the objective. Freeform Query types are currently supported. (see below for nested schema)\nFreeform Query Field - valid promQl' } },
              withQuery(value): {
                query: value,
              },
            },
          '#withGrafanaQueries': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Array for holding a set of grafana queries (see below for nested schema)\nArray for holding a set of grafana queries' } },
          withGrafanaQueries(value): {
            grafanaQueries:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGrafanaQueriesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Array for holding a set of grafana queries (see below for nested schema)\nArray for holding a set of grafana queries' } },
          withGrafanaQueriesMixin(value): {
            grafanaQueries+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          grafanaQueries+:
            {
              '#': { help: '', name: 'grafanaQueries' },
              '#withGrafanaQueries': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Block List, Max: 1) Array for holding a set of grafana queries (see below for nested schema)\nQuery Object - Array of Grafana Query JSON objects' } },
              withGrafanaQueries(value): {
                grafanaQueries: value,
              },
            },
          '#withRatio': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withRatio(value): {
            ratio:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withRatioMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withRatioMixin(value): {
            ratio+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          ratio+:
            {
              '#': { help: '', name: 'ratio' },
              '#withGroupByLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"\nDefines Group By Labels used for per-label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
              withGroupByLabels(value): {
                groupByLabels:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupByLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"\nDefines Group By Labels used for per-label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
              withGroupByLabelsMixin(value): {
                groupByLabels+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withSuccessMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Counter metric for success events (numerator)\nCounter metric for success events (numerator)' } },
              withSuccessMetric(value): {
                successMetric: value,
              },
              '#withTotalMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Metric for total events (denominator)\nMetric for total events (denominator)' } },
              withTotalMetric(value): {
                totalMetric: value,
              },
            },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Query type must be one of: "freeform", "query", "ratio", "grafana_queries" or "threshold"\nQuery type must be one of: "freeform", "query", "ratio", "grafana_queries" or "threshold"' } },
          withType(value): {
            type: value,
          },
        },
      '#withSearchExpression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of a search expression in Grafana Asserts. This is used in the SLO UI to open the Asserts RCA workbench and in alerts to link to the RCA workbench.\nThe name of a search expression in Grafana Asserts. This is used in the SLO UI to open the Asserts RCA workbench and in alerts to link to the RCA workbench.' } },
      withSearchExpression(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              searchExpression: value,
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
      '#withAlerting': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating. (see below for nested schema)\nConfigures the alerting rules that will be generated for each\ntime window associated with the SLO. Grafana SLOs can generate\nalerts when the short-term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating.' } },
      withAlerting(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              alerting:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAlertingMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating. (see below for nested schema)\nConfigures the alerting rules that will be generated for each\ntime window associated with the SLO. Grafana SLOs can generate\nalerts when the short-term error budget burn is very high, the\nlong-term error budget burn rate is high, or when the remaining\nerror budget is below a certain threshold. Annotations and Labels support templating.' } },
      withAlertingMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              alerting+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      alerting+:
        {
          '#': { help: '', name: 'alerting' },
          '#withAdvancedOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Advanced Options for Alert Rules (see below for nested schema)\nAdvanced Options for Alert Rules' } },
          withAdvancedOptions(value): {
            advancedOptions:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withAdvancedOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Advanced Options for Alert Rules (see below for nested schema)\nAdvanced Options for Alert Rules' } },
          withAdvancedOptionsMixin(value): {
            advancedOptions+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          advancedOptions+:
            {
              '#': { help: '', name: 'advancedOptions' },
              '#withMinFailures': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Minimum number of failed events to trigger an alert\nMinimum number of failed events to trigger an alert' } },
              withMinFailures(value): {
                minFailures: value,
              },
            },
          '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations will be attached to all alerts generated by any of these rules.' } },
          withAnnotation(value): {
            annotation:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withAnnotationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations will be attached to all alerts generated by any of these rules.' } },
          withAnnotationMixin(value): {
            annotation+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          annotation+:
            {
              '#': { help: '', name: 'annotation' },
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
              withKey(value): {
                key: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
              withValue(value): {
                value: value,
              },
            },
          '#withFastburn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Fast Burn alerts (see below for nested schema)\nAlerting Rules generated for Fast Burn alerts' } },
          withFastburn(value): {
            fastburn:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withFastburnMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Fast Burn alerts (see below for nested schema)\nAlerting Rules generated for Fast Burn alerts' } },
          withFastburnMixin(value): {
            fastburn+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          fastburn+:
            {
              '#': { help: '', name: 'fastburn' },
              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Fast Burn alerts.' } },
              withAnnotation(value): {
                annotation:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withAnnotationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Fast Burn alerts.' } },
              withAnnotationMixin(value): {
                annotation+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              annotation+:
                {
                  '#': { help: '', name: 'annotation' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Fast Burn alerts.' } },
              withLabel(value): {
                label:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Fast Burn alerts.' } },
              withLabelMixin(value): {
                label+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              label+:
                {
                  '#': { help: '', name: 'label' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
            },
          '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels will be attached to all alerts generated by any of these rules.' } },
          withLabel(value): {
            label:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels will be attached to all alerts generated by any of these rules.' } },
          withLabelMixin(value): {
            label+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          label+:
            {
              '#': { help: '', name: 'label' },
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
              withKey(value): {
                key: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
              withValue(value): {
                value: value,
              },
            },
          '#withSlowburn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Slow Burn alerts (see below for nested schema)\nAlerting Rules generated for Slow Burn alerts' } },
          withSlowburn(value): {
            slowburn:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSlowburnMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Alerting Rules generated for Slow Burn alerts (see below for nested schema)\nAlerting Rules generated for Slow Burn alerts' } },
          withSlowburnMixin(value): {
            slowburn+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          slowburn+:
            {
              '#': { help: '', name: 'slowburn' },
              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Slow Burn alerts.' } },
              withAnnotation(value): {
                annotation:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withAnnotationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Annotations will be attached to all alerts generated by any of these rules. (see below for nested schema)\nAnnotations to attach only to Slow Burn alerts.' } },
              withAnnotationMixin(value): {
                annotation+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              annotation+:
                {
                  '#': { help: '', name: 'annotation' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
              '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Slow Burn alerts.' } },
              withLabel(value): {
                label:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nLabels to attach only to Slow Burn alerts.' } },
              withLabelMixin(value): {
                label+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              label+:
                {
                  '#': { help: '', name: 'label' },
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
                  withKey(value): {
                    key: value,
                  },
                  '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
                  withValue(value): {
                    value: value,
                  },
                },
            },
        },
      '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'text field that can provide more context to an SLO.\nDescription is a free-text field that can provide more context to an SLO.' } },
      withDescription(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              description: value,
            },
          },
        },
      },
      '#withDestinationDatasource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Destination Datasource sets the datasource defined for an SLO (see below for nested schema)\nDestination Datasource sets the datasource defined for an SLO' } },
      withDestinationDatasource(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              destinationDatasource:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDestinationDatasourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Destination Datasource sets the datasource defined for an SLO (see below for nested schema)\nDestination Datasource sets the datasource defined for an SLO' } },
      withDestinationDatasourceMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              destinationDatasource+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      destinationDatasource+:
        {
          '#': { help: '', name: 'destinationDatasource' },
          '#withRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate uid.' } },
          withRef(value): {
            ref: value,
          },
          '#withRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate uid.' } },
          withRefMixin(value): {
            ref+: value,
          },
          ref+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                ref+: {
                  name: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                ref+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                ref+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    ref+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    ref+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate uid.' } },
          withSelector(value): {
            selector: value,
          },
          '#withSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate uid.' } },
          withSelectorMixin(value): {
            selector+: value,
          },
          selector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                selector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                selector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                selector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                selector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                selector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    selector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    selector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) UID for the Datasource\nUID for the Datasource' } },
          withUid(value): {
            uid: value,
          },
        },
      '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) UID for the SLO folder\nUID for the SLO folder' } },
      withFolderUid(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              folderUid: value,
            },
          },
        },
      },
      '#withLabel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nAdditional labels that will be attached to all metrics generated from the query. These labels are useful for grouping SLOs in dashboard views that you create by hand. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
      withLabel(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              label:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLabelMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '"^[a-zA-Z_][a-zA-Z0-9_]*$" (see below for nested schema)\nAdditional labels that will be attached to all metrics generated from the query. These labels are useful for grouping SLOs in dashboard views that you create by hand. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
      withLabelMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              label+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      label+:
        {
          '#': { help: '', name: 'label' },
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Key for filtering and identification\nKey for filtering and identification' } },
          withKey(value): {
            key: value,
          },
          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nTemplatable value' } },
          withValue(value): {
            value: value,
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name should be a short description of your indicator. Consider names like "API Availability"\nName should be a short description of your indicator. Consider names like "API Availability"' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withObjectives': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Over each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget. (see below for nested schema)\nOver each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget.' } },
      withObjectives(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              objectives:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withObjectivesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Over each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget. (see below for nested schema)\nOver each rolling time window, the remaining error budget will be calculated, and separate alerts can be generated for each time window based on the SLO burn rate or remaining error budget.' } },
      withObjectivesMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              objectives+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      objectives+:
        {
          '#': { help: '', name: 'objectives' },
          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Value between 0 and 1. If the value of the query is above the objective, the SLO is met.\nValue between 0 and 1. If the value of the query is above the objective, the SLO is met.' } },
          withValue(value): {
            value: value,
          },
          '#withWindow': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'parsable time duration string like 24h, 60m. This is the time window the objective is measured over.\nA Prometheus-parsable time duration string like 24h, 60m. This is the time window the objective is measured over.' } },
          withWindow(value): {
            window: value,
          },
        },
      '#withQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Query describes the indicator that will be measured against the objective. Freeform Query types are currently supported. (see below for nested schema)\nQuery describes the indicator that will be measured against the objective. Freeform Query types are currently supported.' } },
      withQuery(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              query:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) Query describes the indicator that will be measured against the objective. Freeform Query types are currently supported. (see below for nested schema)\nQuery describes the indicator that will be measured against the objective. Freeform Query types are currently supported.' } },
      withQueryMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              query+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      query+:
        {
          '#': { help: '', name: 'query' },
          '#withFreeform': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withFreeform(value): {
            freeform:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withFreeformMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withFreeformMixin(value): {
            freeform+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          freeform+:
            {
              '#': { help: '', name: 'freeform' },
              '#withQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Block List, Min: 1) Query describes the indicator that will be measured against the objective. Freeform Query types are currently supported. (see below for nested schema)\nFreeform Query Field - valid promQl' } },
              withQuery(value): {
                query: value,
              },
            },
          '#withGrafanaQueries': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Array for holding a set of grafana queries (see below for nested schema)\nArray for holding a set of grafana queries' } },
          withGrafanaQueries(value): {
            grafanaQueries:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGrafanaQueriesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Array for holding a set of grafana queries (see below for nested schema)\nArray for holding a set of grafana queries' } },
          withGrafanaQueriesMixin(value): {
            grafanaQueries+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          grafanaQueries+:
            {
              '#': { help: '', name: 'grafanaQueries' },
              '#withGrafanaQueries': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(Block List, Max: 1) Array for holding a set of grafana queries (see below for nested schema)\nQuery Object - Array of Grafana Query JSON objects' } },
              withGrafanaQueries(value): {
                grafanaQueries: value,
              },
            },
          '#withRatio': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withRatio(value): {
            ratio:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withRatioMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) (see below for nested schema)' } },
          withRatioMixin(value): {
            ratio+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          ratio+:
            {
              '#': { help: '', name: 'ratio' },
              '#withGroupByLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"\nDefines Group By Labels used for per-label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
              withGroupByLabels(value): {
                groupByLabels:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withGroupByLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"\nDefines Group By Labels used for per-label alerting. These appear as variables on SLO dashboards to enable filtering and aggregation. Labels must adhere to Prometheus label name schema - "^[a-zA-Z_][a-zA-Z0-9_]*$"' } },
              withGroupByLabelsMixin(value): {
                groupByLabels+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withSuccessMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Counter metric for success events (numerator)\nCounter metric for success events (numerator)' } },
              withSuccessMetric(value): {
                successMetric: value,
              },
              '#withTotalMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Metric for total events (denominator)\nMetric for total events (denominator)' } },
              withTotalMetric(value): {
                totalMetric: value,
              },
            },
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Query type must be one of: "freeform", "query", "ratio", "grafana_queries" or "threshold"\nQuery type must be one of: "freeform", "query", "ratio", "grafana_queries" or "threshold"' } },
          withType(value): {
            type: value,
          },
        },
      '#withSearchExpression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of a search expression in Grafana Asserts. This is used in the SLO UI to open the Asserts RCA workbench and in alerts to link to the RCA workbench.\nThe name of a search expression in Grafana Asserts. This is used in the SLO UI to open the Asserts RCA workbench and in alerts to link to the RCA workbench.' } },
      withSearchExpression(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              searchExpression: value,
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
