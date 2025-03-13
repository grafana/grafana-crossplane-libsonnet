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
      '#withAutoDiscoveryConfiguration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of auto discovery configurations. (see below for nested schema)\nThe list of auto discovery configurations.' } },
      withAutoDiscoveryConfiguration(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              autoDiscoveryConfiguration:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAutoDiscoveryConfigurationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of auto discovery configurations. (see below for nested schema)\nThe list of auto discovery configurations.' } },
      withAutoDiscoveryConfigurationMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              autoDiscoveryConfiguration+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      autoDiscoveryConfiguration+:
        {
          '#': { help: '', name: 'autoDiscoveryConfiguration' },
          '#withResourceTypeConfigurations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) The list of resource type configurations. (see below for nested schema)\nThe list of resource type configurations.' } },
          withResourceTypeConfigurations(value): {
            resourceTypeConfigurations:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withResourceTypeConfigurationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) The list of resource type configurations. (see below for nested schema)\nThe list of resource type configurations.' } },
          withResourceTypeConfigurationsMixin(value): {
            resourceTypeConfigurations+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          resourceTypeConfigurations+:
            {
              '#': { help: '', name: 'resourceTypeConfigurations' },
              '#withMetricConfiguration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) (see below for nested schema)' } },
              withMetricConfiguration(value): {
                metricConfiguration:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMetricConfigurationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) (see below for nested schema)' } },
              withMetricConfigurationMixin(value): {
                metricConfiguration+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              metricConfiguration+:
                {
                  '#': { help: '', name: 'metricConfiguration' },
                  '#withAggregations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withAggregations(value): {
                    aggregations:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withAggregationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withAggregationsMixin(value): {
                    aggregations+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withDimensions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withDimensions(value): {
                    dimensions:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withDimensionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withDimensionsMixin(value): {
                    dimensions+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Azure Credential.' } },
                  withName(value): {
                    name: value,
                  },
                },
              '#withResourceTypeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
              withResourceTypeName(value): {
                resourceTypeName: value,
              },
            },
          '#withSubscriptionId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The subscription ID of the Azure account.\nThe subscription ID of the Azure account.' } },
          withSubscriptionId(value): {
            subscriptionId: value,
          },
        },
      '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The client ID of the Azure Credential.\nThe client ID of the Azure Credential.' } },
      withClientId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              clientId: value,
            },
          },
        },
      },
      '#withClientSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of the Azure Credential.\nThe client secret of the Azure Credential.' } },
      withClientSecretSecretRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              clientSecretSecretRef: value,
            },
          },
        },
      },
      '#withClientSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of the Azure Credential.\nThe client secret of the Azure Credential.' } },
      withClientSecretSecretRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              clientSecretSecretRef+: value,
            },
          },
        },
      },
      clientSecretSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  clientSecretSecretRef+: {
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
                  clientSecretSecretRef+: {
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
                  clientSecretSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Azure Credential.\nThe name of the Azure Credential.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withResourceDiscoveryTagFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of tag filters to apply to resources. (see below for nested schema)\nThe list of tag filters to apply to resources.' } },
      withResourceDiscoveryTagFilter(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              resourceDiscoveryTagFilter:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withResourceDiscoveryTagFilterMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of tag filters to apply to resources. (see below for nested schema)\nThe list of tag filters to apply to resources.' } },
      withResourceDiscoveryTagFilterMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              resourceDiscoveryTagFilter+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      resourceDiscoveryTagFilter+:
        {
          '#': { help: '', name: 'resourceDiscoveryTagFilter' },
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The key of the tag filter.\nThe key of the tag filter.' } },
          withKey(value): {
            key: value,
          },
          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the tag filter.\nThe value of the tag filter.' } },
          withValue(value): {
            value: value,
          },
        },
      '#withResourceTagsToAddToMetrics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The list of resource tags to add to metrics.\nThe list of resource tags to add to metrics.' } },
      withResourceTagsToAddToMetrics(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              resourceTagsToAddToMetrics:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withResourceTagsToAddToMetricsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The list of resource tags to add to metrics.\nThe list of resource tags to add to metrics.' } },
      withResourceTagsToAddToMetricsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              resourceTagsToAddToMetrics+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The StackID of the Grafana Cloud instance.\nThe StackID of the Grafana Cloud instance.' } },
      withStackId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              stackId: value,
            },
          },
        },
      },
      '#withTenantId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The tenant ID of the Azure Credential.\nThe tenant ID of the Azure Credential.' } },
      withTenantId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              tenantId: value,
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
      '#withAutoDiscoveryConfiguration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of auto discovery configurations. (see below for nested schema)\nThe list of auto discovery configurations.' } },
      withAutoDiscoveryConfiguration(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              autoDiscoveryConfiguration:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAutoDiscoveryConfigurationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of auto discovery configurations. (see below for nested schema)\nThe list of auto discovery configurations.' } },
      withAutoDiscoveryConfigurationMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              autoDiscoveryConfiguration+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      autoDiscoveryConfiguration+:
        {
          '#': { help: '', name: 'autoDiscoveryConfiguration' },
          '#withResourceTypeConfigurations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) The list of resource type configurations. (see below for nested schema)\nThe list of resource type configurations.' } },
          withResourceTypeConfigurations(value): {
            resourceTypeConfigurations:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withResourceTypeConfigurationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) The list of resource type configurations. (see below for nested schema)\nThe list of resource type configurations.' } },
          withResourceTypeConfigurationsMixin(value): {
            resourceTypeConfigurations+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          resourceTypeConfigurations+:
            {
              '#': { help: '', name: 'resourceTypeConfigurations' },
              '#withMetricConfiguration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) (see below for nested schema)' } },
              withMetricConfiguration(value): {
                metricConfiguration:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withMetricConfigurationMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of Object) (see below for nested schema)' } },
              withMetricConfigurationMixin(value): {
                metricConfiguration+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              metricConfiguration+:
                {
                  '#': { help: '', name: 'metricConfiguration' },
                  '#withAggregations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withAggregations(value): {
                    aggregations:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withAggregationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withAggregationsMixin(value): {
                    aggregations+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withDimensions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withDimensions(value): {
                    dimensions:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withDimensionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String)' } },
                  withDimensionsMixin(value): {
                    dimensions+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Azure Credential.' } },
                  withName(value): {
                    name: value,
                  },
                },
              '#withResourceTypeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
              withResourceTypeName(value): {
                resourceTypeName: value,
              },
            },
          '#withSubscriptionId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The subscription ID of the Azure account.\nThe subscription ID of the Azure account.' } },
          withSubscriptionId(value): {
            subscriptionId: value,
          },
        },
      '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The client ID of the Azure Credential.\nThe client ID of the Azure Credential.' } },
      withClientId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              clientId: value,
            },
          },
        },
      },
      '#withClientSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of the Azure Credential.\nThe client secret of the Azure Credential.' } },
      withClientSecretSecretRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              clientSecretSecretRef: value,
            },
          },
        },
      },
      '#withClientSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of the Azure Credential.\nThe client secret of the Azure Credential.' } },
      withClientSecretSecretRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              clientSecretSecretRef+: value,
            },
          },
        },
      },
      clientSecretSecretRef+:
        {
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
          withKey(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  clientSecretSecretRef+: {
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
                  clientSecretSecretRef+: {
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
                  clientSecretSecretRef+: {
                    namespace: value,
                  },
                },
              },
            },
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Azure Credential.\nThe name of the Azure Credential.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withResourceDiscoveryTagFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of tag filters to apply to resources. (see below for nested schema)\nThe list of tag filters to apply to resources.' } },
      withResourceDiscoveryTagFilter(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              resourceDiscoveryTagFilter:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withResourceDiscoveryTagFilterMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The list of tag filters to apply to resources. (see below for nested schema)\nThe list of tag filters to apply to resources.' } },
      withResourceDiscoveryTagFilterMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              resourceDiscoveryTagFilter+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      resourceDiscoveryTagFilter+:
        {
          '#': { help: '', name: 'resourceDiscoveryTagFilter' },
          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The key of the tag filter.\nThe key of the tag filter.' } },
          withKey(value): {
            key: value,
          },
          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the tag filter.\nThe value of the tag filter.' } },
          withValue(value): {
            value: value,
          },
        },
      '#withResourceTagsToAddToMetrics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The list of resource tags to add to metrics.\nThe list of resource tags to add to metrics.' } },
      withResourceTagsToAddToMetrics(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              resourceTagsToAddToMetrics:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withResourceTagsToAddToMetricsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The list of resource tags to add to metrics.\nThe list of resource tags to add to metrics.' } },
      withResourceTagsToAddToMetricsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              resourceTagsToAddToMetrics+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The StackID of the Grafana Cloud instance.\nThe StackID of the Grafana Cloud instance.' } },
      withStackId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              stackId: value,
            },
          },
        },
      },
      '#withTenantId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The tenant ID of the Azure Credential.\nThe tenant ID of the Azure Credential.' } },
      withTenantId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              tenantId: value,
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
