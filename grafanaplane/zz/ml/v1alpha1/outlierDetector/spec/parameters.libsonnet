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
      '#withAlgorithm': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'The algorithm to use and its configuration. See https://grafana.com/docs/grafana-cloud/machine-learning/outlier-detection/ for details.' } },
      withAlgorithm(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              algorithm:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAlgorithmMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'The algorithm to use and its configuration. See https://grafana.com/docs/grafana-cloud/machine-learning/outlier-detection/ for details.' } },
      withAlgorithmMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              algorithm+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      algorithm+:
        {
          '#': { help: '', name: 'algorithm' },
          '#withConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'For DBSCAN only, specify the configuration map' } },
          withConfig(value): {
            config:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'For DBSCAN only, specify the configuration map' } },
          withConfigMixin(value): {
            config+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          config+:
            {
              '#': { help: '', name: 'config' },
              '#withEpsilon': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Specify the epsilon parameter (positive float)' } },
              withEpsilon(value): {
                epsilon: value,
              },
            },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "The name of the algorithm to use ('mad' or 'dbscan')." } },
          withName(value): {
            name: value,
          },
          '#withSensitivity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Specify the sensitivity of the detector (in range [0,1]).' } },
          withSensitivity(value): {
            sensitivity: value,
          },
        },
      '#withDataSourceRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate datasourceUid.' } },
      withDataSourceRef(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dataSourceRef: value,
            },
          },
        },
      },
      '#withDataSourceRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate datasourceUid.' } },
      withDataSourceRefMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dataSourceRef+: value,
            },
          },
        },
      },
      dataSourceRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  dataSourceRef+: {
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
                  dataSourceRef+: {
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
                  dataSourceRef+: {
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
                      dataSourceRef+: {
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
                      dataSourceRef+: {
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
      '#withDataSourceSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate datasourceUid.' } },
      withDataSourceSelector(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dataSourceSelector: value,
            },
          },
        },
      },
      '#withDataSourceSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate datasourceUid.' } },
      withDataSourceSelectorMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dataSourceSelector+: value,
            },
          },
        },
      },
      dataSourceSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                      dataSourceSelector+: {
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
                      dataSourceSelector+: {
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
      '#withDatasourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The type of datasource being queried. Currently allowed values are prometheus, grafana-prometheus-datasource, grafana-amazonprometheus-datasource, loki, grafana-loki-datasource, graphite, grafana-graphite-datasource, grafana-datadog-datasource, postgres, grafana-postgresql-datasource, doitintl-bigquery-datasource, grafana-bigquery-datasource, grafana-snowflake-datasource, influxdb, grafana-influxdb-datasource, grafana-splunk-datasource, elasticsearch, grafana-elasticsearch-datasource, and grafana-mongodb-datasource.' } },
      withDatasourceType(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              datasourceType: value,
            },
          },
        },
      },
      '#withDatasourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The uid of the datasource to query.' } },
      withDatasourceUid(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              datasourceUid: value,
            },
          },
        },
      },
      '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A description of the outlier detector.' } },
      withDescription(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              description: value,
            },
          },
        },
      },
      '#withInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'The data interval in seconds to monitor. Defaults to `300`.' } },
      withInterval(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              interval: value,
            },
          },
        },
      },
      '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The metric used to query the outlier detector results.' } },
      withMetric(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              metric: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The name of the outlier detector.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withQueryParams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'An object representing the query params to query Grafana with.' } },
      withQueryParams(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              queryParams: value,
            },
          },
        },
      },
      '#withQueryParamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'An object representing the query params to query Grafana with.' } },
      withQueryParamsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              queryParams+: value,
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
      '#withAlgorithm': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'The algorithm to use and its configuration. See https://grafana.com/docs/grafana-cloud/machine-learning/outlier-detection/ for details.' } },
      withAlgorithm(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              algorithm:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAlgorithmMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'The algorithm to use and its configuration. See https://grafana.com/docs/grafana-cloud/machine-learning/outlier-detection/ for details.' } },
      withAlgorithmMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              algorithm+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      algorithm+:
        {
          '#': { help: '', name: 'algorithm' },
          '#withConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'For DBSCAN only, specify the configuration map' } },
          withConfig(value): {
            config:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'For DBSCAN only, specify the configuration map' } },
          withConfigMixin(value): {
            config+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          config+:
            {
              '#': { help: '', name: 'config' },
              '#withEpsilon': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Specify the epsilon parameter (positive float)' } },
              withEpsilon(value): {
                epsilon: value,
              },
            },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "The name of the algorithm to use ('mad' or 'dbscan')." } },
          withName(value): {
            name: value,
          },
          '#withSensitivity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Specify the sensitivity of the detector (in range [0,1]).' } },
          withSensitivity(value): {
            sensitivity: value,
          },
        },
      '#withDataSourceRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate datasourceUid.' } },
      withDataSourceRef(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dataSourceRef: value,
            },
          },
        },
      },
      '#withDataSourceRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a DataSource in oss to populate datasourceUid.' } },
      withDataSourceRefMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dataSourceRef+: value,
            },
          },
        },
      },
      dataSourceRef+:
        {
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
          withName(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  dataSourceRef+: {
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
                  dataSourceRef+: {
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
                  dataSourceRef+: {
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
                      dataSourceRef+: {
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
                      dataSourceRef+: {
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
      '#withDataSourceSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate datasourceUid.' } },
      withDataSourceSelector(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dataSourceSelector: value,
            },
          },
        },
      },
      '#withDataSourceSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a DataSource in oss to populate datasourceUid.' } },
      withDataSourceSelectorMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dataSourceSelector+: value,
            },
          },
        },
      },
      dataSourceSelector+:
        {
          '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
          withMatchControllerRef(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                  dataSourceSelector+: {
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
                      dataSourceSelector+: {
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
                      dataSourceSelector+: {
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
      '#withDatasourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The type of datasource being queried. Currently allowed values are prometheus, grafana-prometheus-datasource, grafana-amazonprometheus-datasource, loki, grafana-loki-datasource, graphite, grafana-graphite-datasource, grafana-datadog-datasource, postgres, grafana-postgresql-datasource, doitintl-bigquery-datasource, grafana-bigquery-datasource, grafana-snowflake-datasource, influxdb, grafana-influxdb-datasource, grafana-splunk-datasource, elasticsearch, grafana-elasticsearch-datasource, and grafana-mongodb-datasource.' } },
      withDatasourceType(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              datasourceType: value,
            },
          },
        },
      },
      '#withDatasourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The uid of the datasource to query.' } },
      withDatasourceUid(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              datasourceUid: value,
            },
          },
        },
      },
      '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'A description of the outlier detector.' } },
      withDescription(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              description: value,
            },
          },
        },
      },
      '#withInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'The data interval in seconds to monitor. Defaults to `300`.' } },
      withInterval(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              interval: value,
            },
          },
        },
      },
      '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The metric used to query the outlier detector results.' } },
      withMetric(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              metric: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The name of the outlier detector.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withQueryParams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'An object representing the query params to query Grafana with.' } },
      withQueryParams(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              queryParams: value,
            },
          },
        },
      },
      '#withQueryParamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'An object representing the query params to query Grafana with.' } },
      withQueryParamsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              queryParams+: value,
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
