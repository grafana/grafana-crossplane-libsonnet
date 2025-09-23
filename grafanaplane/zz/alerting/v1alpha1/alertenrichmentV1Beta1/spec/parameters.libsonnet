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
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The metadata of the resource.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The metadata of the resource.' } },
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
          '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The UID of the folder to save the resource in.' } },
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
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The unique identifier of the resource.' } },
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
      '#withOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Options for applying the resource.' } },
      withOptions(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              options: value,
            },
          },
        },
      },
      '#withOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Options for applying the resource.' } },
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
          '#withOverwrite': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.' } },
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
      '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The spec of the resource.' } },
      withSpec(value): {
        parameters+: {
          forProvider+: {
            spec: value,
          },
        },
      },
      '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The spec of the resource.' } },
      withSpecMixin(value): {
        parameters+: {
          forProvider+: {
            spec+: value,
          },
        },
      },
      spec+:
        {
          '#withAlertRuleUids': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'UIDs of alert rules this enrichment applies to. If empty, applies to all alert rules.' } },
          withAlertRuleUids(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    alertRuleUids:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withAlertRuleUidsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'UIDs of alert rules this enrichment applies to. If empty, applies to all alert rules.' } },
          withAlertRuleUidsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    alertRuleUids+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withAnnotationMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Annotation matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, annotation key to match), 'value' (string, annotation value to compare against, supports regex for =~/!~ operators)." } },
          withAnnotationMatchers(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    annotationMatchers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withAnnotationMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Annotation matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, annotation key to match), 'value' (string, annotation value to compare against, supports regex for =~/!~ operators)." } },
          withAnnotationMatchersMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    annotationMatchers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          annotationMatchers+:
            {
              '#': { help: '', name: 'annotationMatchers' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withName(value): {
                name: value,
              },
              '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withType(value): {
                type: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withValue(value): {
                value: value,
              },
            },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Description of the alert enrichment.' } },
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
          '#withLabelMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Label matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, label key to match), 'value' (string, label value to compare against, supports regex for =~/!~ operators)." } },
          withLabelMatchers(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    labelMatchers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withLabelMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Label matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, label key to match), 'value' (string, label value to compare against, supports regex for =~/!~ operators)." } },
          withLabelMatchersMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    labelMatchers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          labelMatchers+:
            {
              '#': { help: '', name: 'labelMatchers' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withName(value): {
                name: value,
              },
              '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withType(value): {
                type: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withValue(value): {
                value: value,
              },
            },
          '#withReceivers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Receiver names to match. If empty, applies to all receivers.' } },
          withReceivers(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    receivers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withReceiversMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Receiver names to match. If empty, applies to all receivers.' } },
          withReceiversMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    receivers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withStep': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Enrichment step. Can be repeated multiple times to define a sequence of steps. Each step must contain exactly one enrichment block.' } },
          withStep(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    step:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withStepMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Enrichment step. Can be repeated multiple times to define a sequence of steps. Each step must contain exactly one enrichment block.' } },
          withStepMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    step+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          step+:
            {
              '#': { help: '', name: 'step' },
              '#withAsserts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
              withAsserts(value): {
                asserts: value,
              },
              '#withAssertsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
              withAssertsMixin(value): {
                asserts+: value,
              },
              asserts+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    asserts+: {
                      timeout: value,
                    },
                  },
                },
              '#withAssign': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
              withAssign(value): {
                assign: value,
              },
              '#withAssignMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
              withAssignMixin(value): {
                assign+: value,
              },
              assign+:
                {
                  '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                  withAnnotations(value): {
                    assign+: {
                      annotations: value,
                    },
                  },
                  '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                  withAnnotationsMixin(value): {
                    assign+: {
                      annotations+: value,
                    },
                  },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    assign+: {
                      timeout: value,
                    },
                  },
                },
              '#withAssistantInvestigations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
              withAssistantInvestigations(value): {
                assistantInvestigations: value,
              },
              '#withAssistantInvestigationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
              withAssistantInvestigationsMixin(value): {
                assistantInvestigations+: value,
              },
              assistantInvestigations+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    assistantInvestigations+: {
                      timeout: value,
                    },
                  },
                },
              '#withConditional': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Conditional step with if/then/else.' } },
              withConditional(value): {
                conditional: value,
              },
              '#withConditionalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Conditional step with if/then/else.' } },
              withConditionalMixin(value): {
                conditional+: value,
              },
              conditional+:
                {
                  '#withElse': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is false.' } },
                  withElse(value): {
                    conditional+: {
                      'else': value,
                    },
                  },
                  '#withElseMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is false.' } },
                  withElseMixin(value): {
                    conditional+: {
                      'else'+: value,
                    },
                  },
                  'else'+:
                    {
                      '#withStep': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStep(value): {
                        conditional+: {
                          'else'+: {
                            step:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withStepMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStepMixin(value): {
                        conditional+: {
                          'else'+: {
                            step+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      step+:
                        {
                          '#': { help: '', name: 'step' },
                          '#withAsserts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAsserts(value): {
                            asserts: value,
                          },
                          '#withAssertsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAssertsMixin(value): {
                            asserts+: value,
                          },
                          asserts+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                asserts+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssign': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssign(value): {
                            assign: value,
                          },
                          '#withAssignMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssignMixin(value): {
                            assign+: value,
                          },
                          assign+:
                            {
                              '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotations(value): {
                                assign+: {
                                  annotations: value,
                                },
                              },
                              '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotationsMixin(value): {
                                assign+: {
                                  annotations+: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assign+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssistantInvestigations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigations(value): {
                            assistantInvestigations: value,
                          },
                          '#withAssistantInvestigationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigationsMixin(value): {
                            assistantInvestigations+: value,
                          },
                          assistantInvestigations+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assistantInvestigations+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withDataSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSource(value): {
                            dataSource: value,
                          },
                          '#withDataSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSourceMixin(value): {
                            dataSource+: value,
                          },
                          dataSource+:
                            {
                              '#withLogsQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQuery(value): {
                                dataSource+: {
                                  logsQuery: value,
                                },
                              },
                              '#withLogsQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQueryMixin(value): {
                                dataSource+: {
                                  logsQuery+: value,
                                },
                              },
                              logsQuery+:
                                {
                                  '#withDataSourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Data source type (e.g., 'loki')." } },
                                  withDataSourceType(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceType: value,
                                      },
                                    },
                                  },
                                  '#withDataSourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the data source to query.' } },
                                  withDataSourceUid(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceUid: value,
                                      },
                                    },
                                  },
                                  '#withExpr': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Log query expression to execute.' } },
                                  withExpr(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        expr: value,
                                      },
                                    },
                                  },
                                  '#withMaxLines': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Maximum number of log lines to include. Defaults to 3.' } },
                                  withMaxLines(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        maxLines: value,
                                      },
                                    },
                                  },
                                },
                              '#withRawQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQuery(value): {
                                dataSource+: {
                                  rawQuery: value,
                                },
                              },
                              '#withRawQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQueryMixin(value): {
                                dataSource+: {
                                  rawQuery+: value,
                                },
                              },
                              rawQuery+:
                                {
                                  '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Reference ID for correlating queries.' } },
                                  withRefId(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        refId: value,
                                      },
                                    },
                                  },
                                  '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Raw request payload for the data source query.' } },
                                  withRequest(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        request: value,
                                      },
                                    },
                                  },
                                },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                dataSource+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExplain': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplain(value): {
                            explain: value,
                          },
                          '#withExplainMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplainMixin(value): {
                            explain+: value,
                          },
                          explain+:
                            {
                              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Annotation name to set the explanation in. Defaults to 'ai_explanation'." } },
                              withAnnotation(value): {
                                explain+: {
                                  annotation: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                explain+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExternal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternal(value): {
                            external: value,
                          },
                          '#withExternalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternalMixin(value): {
                            external+: value,
                          },
                          external+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                external+: {
                                  timeout: value,
                                },
                              },
                              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'HTTP endpoint URL to call for enrichment' } },
                              withUrl(value): {
                                external+: {
                                  url: value,
                                },
                              },
                            },
                          '#withSift': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSift(value): {
                            sift: value,
                          },
                          '#withSiftMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSiftMixin(value): {
                            sift+: value,
                          },
                          sift+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                sift+: {
                                  timeout: value,
                                },
                              },
                            },
                        },
                    },
                  '#withIf': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Condition to evaluate.' } },
                  withIf(value): {
                    conditional+: {
                      'if': value,
                    },
                  },
                  '#withIfMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Condition to evaluate.' } },
                  withIfMixin(value): {
                    conditional+: {
                      'if'+: value,
                    },
                  },
                  'if'+:
                    {
                      '#withAnnotationMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Annotation matchers for the condition.' } },
                      withAnnotationMatchers(value): {
                        conditional+: {
                          'if'+: {
                            annotationMatchers:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withAnnotationMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Annotation matchers for the condition.' } },
                      withAnnotationMatchersMixin(value): {
                        conditional+: {
                          'if'+: {
                            annotationMatchers+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      annotationMatchers+:
                        {
                          '#': { help: '', name: 'annotationMatchers' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withName(value): {
                            name: value,
                          },
                          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withType(value): {
                            type: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withDataSourceCondition': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Data source condition.' } },
                      withDataSourceCondition(value): {
                        conditional+: {
                          'if'+: {
                            dataSourceCondition: value,
                          },
                        },
                      },
                      '#withDataSourceConditionMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Data source condition.' } },
                      withDataSourceConditionMixin(value): {
                        conditional+: {
                          'if'+: {
                            dataSourceCondition+: value,
                          },
                        },
                      },
                      dataSourceCondition+:
                        {
                          '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Data source request payload.' } },
                          withRequest(value): {
                            conditional+: {
                              'if'+: {
                                dataSourceCondition+: {
                                  request: value,
                                },
                              },
                            },
                          },
                        },
                      '#withLabelMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Label matchers for the condition.' } },
                      withLabelMatchers(value): {
                        conditional+: {
                          'if'+: {
                            labelMatchers:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withLabelMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Label matchers for the condition.' } },
                      withLabelMatchersMixin(value): {
                        conditional+: {
                          'if'+: {
                            labelMatchers+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      labelMatchers+:
                        {
                          '#': { help: '', name: 'labelMatchers' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withName(value): {
                            name: value,
                          },
                          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withType(value): {
                            type: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                    },
                  '#withThen': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is true.' } },
                  withThen(value): {
                    conditional+: {
                      'then': value,
                    },
                  },
                  '#withThenMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is true.' } },
                  withThenMixin(value): {
                    conditional+: {
                      'then'+: value,
                    },
                  },
                  'then'+:
                    {
                      '#withStep': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStep(value): {
                        conditional+: {
                          'then'+: {
                            step:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withStepMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStepMixin(value): {
                        conditional+: {
                          'then'+: {
                            step+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      step+:
                        {
                          '#': { help: '', name: 'step' },
                          '#withAsserts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAsserts(value): {
                            asserts: value,
                          },
                          '#withAssertsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAssertsMixin(value): {
                            asserts+: value,
                          },
                          asserts+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                asserts+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssign': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssign(value): {
                            assign: value,
                          },
                          '#withAssignMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssignMixin(value): {
                            assign+: value,
                          },
                          assign+:
                            {
                              '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotations(value): {
                                assign+: {
                                  annotations: value,
                                },
                              },
                              '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotationsMixin(value): {
                                assign+: {
                                  annotations+: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assign+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssistantInvestigations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigations(value): {
                            assistantInvestigations: value,
                          },
                          '#withAssistantInvestigationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigationsMixin(value): {
                            assistantInvestigations+: value,
                          },
                          assistantInvestigations+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assistantInvestigations+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withDataSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSource(value): {
                            dataSource: value,
                          },
                          '#withDataSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSourceMixin(value): {
                            dataSource+: value,
                          },
                          dataSource+:
                            {
                              '#withLogsQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQuery(value): {
                                dataSource+: {
                                  logsQuery: value,
                                },
                              },
                              '#withLogsQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQueryMixin(value): {
                                dataSource+: {
                                  logsQuery+: value,
                                },
                              },
                              logsQuery+:
                                {
                                  '#withDataSourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Data source type (e.g., 'loki')." } },
                                  withDataSourceType(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceType: value,
                                      },
                                    },
                                  },
                                  '#withDataSourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the data source to query.' } },
                                  withDataSourceUid(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceUid: value,
                                      },
                                    },
                                  },
                                  '#withExpr': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Log query expression to execute.' } },
                                  withExpr(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        expr: value,
                                      },
                                    },
                                  },
                                  '#withMaxLines': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Maximum number of log lines to include. Defaults to 3.' } },
                                  withMaxLines(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        maxLines: value,
                                      },
                                    },
                                  },
                                },
                              '#withRawQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQuery(value): {
                                dataSource+: {
                                  rawQuery: value,
                                },
                              },
                              '#withRawQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQueryMixin(value): {
                                dataSource+: {
                                  rawQuery+: value,
                                },
                              },
                              rawQuery+:
                                {
                                  '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Reference ID for correlating queries.' } },
                                  withRefId(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        refId: value,
                                      },
                                    },
                                  },
                                  '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Raw request payload for the data source query.' } },
                                  withRequest(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        request: value,
                                      },
                                    },
                                  },
                                },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                dataSource+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExplain': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplain(value): {
                            explain: value,
                          },
                          '#withExplainMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplainMixin(value): {
                            explain+: value,
                          },
                          explain+:
                            {
                              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Annotation name to set the explanation in. Defaults to 'ai_explanation'." } },
                              withAnnotation(value): {
                                explain+: {
                                  annotation: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                explain+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExternal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternal(value): {
                            external: value,
                          },
                          '#withExternalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternalMixin(value): {
                            external+: value,
                          },
                          external+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                external+: {
                                  timeout: value,
                                },
                              },
                              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'HTTP endpoint URL to call for enrichment' } },
                              withUrl(value): {
                                external+: {
                                  url: value,
                                },
                              },
                            },
                          '#withSift': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSift(value): {
                            sift: value,
                          },
                          '#withSiftMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSiftMixin(value): {
                            sift+: value,
                          },
                          sift+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                sift+: {
                                  timeout: value,
                                },
                              },
                            },
                        },
                    },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    conditional+: {
                      timeout: value,
                    },
                  },
                },
              '#withDataSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
              withDataSource(value): {
                dataSource: value,
              },
              '#withDataSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
              withDataSourceMixin(value): {
                dataSource+: value,
              },
              dataSource+:
                {
                  '#withLogsQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                  withLogsQuery(value): {
                    dataSource+: {
                      logsQuery: value,
                    },
                  },
                  '#withLogsQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                  withLogsQueryMixin(value): {
                    dataSource+: {
                      logsQuery+: value,
                    },
                  },
                  logsQuery+:
                    {
                      '#withDataSourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Data source type (e.g., 'loki')." } },
                      withDataSourceType(value): {
                        dataSource+: {
                          logsQuery+: {
                            dataSourceType: value,
                          },
                        },
                      },
                      '#withDataSourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the data source to query.' } },
                      withDataSourceUid(value): {
                        dataSource+: {
                          logsQuery+: {
                            dataSourceUid: value,
                          },
                        },
                      },
                      '#withExpr': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Log query expression to execute.' } },
                      withExpr(value): {
                        dataSource+: {
                          logsQuery+: {
                            expr: value,
                          },
                        },
                      },
                      '#withMaxLines': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Maximum number of log lines to include. Defaults to 3.' } },
                      withMaxLines(value): {
                        dataSource+: {
                          logsQuery+: {
                            maxLines: value,
                          },
                        },
                      },
                    },
                  '#withRawQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                  withRawQuery(value): {
                    dataSource+: {
                      rawQuery: value,
                    },
                  },
                  '#withRawQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                  withRawQueryMixin(value): {
                    dataSource+: {
                      rawQuery+: value,
                    },
                  },
                  rawQuery+:
                    {
                      '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Reference ID for correlating queries.' } },
                      withRefId(value): {
                        dataSource+: {
                          rawQuery+: {
                            refId: value,
                          },
                        },
                      },
                      '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Raw request payload for the data source query.' } },
                      withRequest(value): {
                        dataSource+: {
                          rawQuery+: {
                            request: value,
                          },
                        },
                      },
                    },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    dataSource+: {
                      timeout: value,
                    },
                  },
                },
              '#withExplain': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
              withExplain(value): {
                explain: value,
              },
              '#withExplainMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
              withExplainMixin(value): {
                explain+: value,
              },
              explain+:
                {
                  '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Annotation name to set the explanation in. Defaults to 'ai_explanation'." } },
                  withAnnotation(value): {
                    explain+: {
                      annotation: value,
                    },
                  },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    explain+: {
                      timeout: value,
                    },
                  },
                },
              '#withExternal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
              withExternal(value): {
                external: value,
              },
              '#withExternalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
              withExternalMixin(value): {
                external+: value,
              },
              external+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    external+: {
                      timeout: value,
                    },
                  },
                  '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'HTTP endpoint URL to call for enrichment' } },
                  withUrl(value): {
                    external+: {
                      url: value,
                    },
                  },
                },
              '#withSift': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
              withSift(value): {
                sift: value,
              },
              '#withSiftMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
              withSiftMixin(value): {
                sift+: value,
              },
              sift+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    sift+: {
                      timeout: value,
                    },
                  },
                },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The title of the alert enrichment.' } },
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
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The metadata of the resource.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The metadata of the resource.' } },
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
          '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The UID of the folder to save the resource in.' } },
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
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The unique identifier of the resource.' } },
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
      '#withOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Options for applying the resource.' } },
      withOptions(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              options: value,
            },
          },
        },
      },
      '#withOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Options for applying the resource.' } },
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
          '#withOverwrite': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.' } },
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
      '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The spec of the resource.' } },
      withSpec(value): {
        parameters+: {
          initProvider+: {
            spec: value,
          },
        },
      },
      '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The spec of the resource.' } },
      withSpecMixin(value): {
        parameters+: {
          initProvider+: {
            spec+: value,
          },
        },
      },
      spec+:
        {
          '#withAlertRuleUids': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'UIDs of alert rules this enrichment applies to. If empty, applies to all alert rules.' } },
          withAlertRuleUids(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    alertRuleUids:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withAlertRuleUidsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'UIDs of alert rules this enrichment applies to. If empty, applies to all alert rules.' } },
          withAlertRuleUidsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    alertRuleUids+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withAnnotationMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Annotation matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, annotation key to match), 'value' (string, annotation value to compare against, supports regex for =~/!~ operators)." } },
          withAnnotationMatchers(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    annotationMatchers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withAnnotationMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Annotation matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, annotation key to match), 'value' (string, annotation value to compare against, supports regex for =~/!~ operators)." } },
          withAnnotationMatchersMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    annotationMatchers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          annotationMatchers+:
            {
              '#': { help: '', name: 'annotationMatchers' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withName(value): {
                name: value,
              },
              '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withType(value): {
                type: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withValue(value): {
                value: value,
              },
            },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Description of the alert enrichment.' } },
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
          '#withLabelMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Label matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, label key to match), 'value' (string, label value to compare against, supports regex for =~/!~ operators)." } },
          withLabelMatchers(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    labelMatchers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withLabelMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "Label matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, label key to match), 'value' (string, label value to compare against, supports regex for =~/!~ operators)." } },
          withLabelMatchersMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    labelMatchers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          labelMatchers+:
            {
              '#': { help: '', name: 'labelMatchers' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withName(value): {
                name: value,
              },
              '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withType(value): {
                type: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
              withValue(value): {
                value: value,
              },
            },
          '#withReceivers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Receiver names to match. If empty, applies to all receivers.' } },
          withReceivers(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    receivers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withReceiversMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Receiver names to match. If empty, applies to all receivers.' } },
          withReceiversMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    receivers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withStep': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Enrichment step. Can be repeated multiple times to define a sequence of steps. Each step must contain exactly one enrichment block.' } },
          withStep(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    step:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withStepMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Enrichment step. Can be repeated multiple times to define a sequence of steps. Each step must contain exactly one enrichment block.' } },
          withStepMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    step+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          step+:
            {
              '#': { help: '', name: 'step' },
              '#withAsserts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
              withAsserts(value): {
                asserts: value,
              },
              '#withAssertsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
              withAssertsMixin(value): {
                asserts+: value,
              },
              asserts+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    asserts+: {
                      timeout: value,
                    },
                  },
                },
              '#withAssign': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
              withAssign(value): {
                assign: value,
              },
              '#withAssignMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
              withAssignMixin(value): {
                assign+: value,
              },
              assign+:
                {
                  '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                  withAnnotations(value): {
                    assign+: {
                      annotations: value,
                    },
                  },
                  '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                  withAnnotationsMixin(value): {
                    assign+: {
                      annotations+: value,
                    },
                  },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    assign+: {
                      timeout: value,
                    },
                  },
                },
              '#withAssistantInvestigations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
              withAssistantInvestigations(value): {
                assistantInvestigations: value,
              },
              '#withAssistantInvestigationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
              withAssistantInvestigationsMixin(value): {
                assistantInvestigations+: value,
              },
              assistantInvestigations+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    assistantInvestigations+: {
                      timeout: value,
                    },
                  },
                },
              '#withConditional': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Conditional step with if/then/else.' } },
              withConditional(value): {
                conditional: value,
              },
              '#withConditionalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Conditional step with if/then/else.' } },
              withConditionalMixin(value): {
                conditional+: value,
              },
              conditional+:
                {
                  '#withElse': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is false.' } },
                  withElse(value): {
                    conditional+: {
                      'else': value,
                    },
                  },
                  '#withElseMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is false.' } },
                  withElseMixin(value): {
                    conditional+: {
                      'else'+: value,
                    },
                  },
                  'else'+:
                    {
                      '#withStep': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStep(value): {
                        conditional+: {
                          'else'+: {
                            step:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withStepMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStepMixin(value): {
                        conditional+: {
                          'else'+: {
                            step+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      step+:
                        {
                          '#': { help: '', name: 'step' },
                          '#withAsserts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAsserts(value): {
                            asserts: value,
                          },
                          '#withAssertsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAssertsMixin(value): {
                            asserts+: value,
                          },
                          asserts+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                asserts+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssign': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssign(value): {
                            assign: value,
                          },
                          '#withAssignMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssignMixin(value): {
                            assign+: value,
                          },
                          assign+:
                            {
                              '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotations(value): {
                                assign+: {
                                  annotations: value,
                                },
                              },
                              '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotationsMixin(value): {
                                assign+: {
                                  annotations+: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assign+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssistantInvestigations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigations(value): {
                            assistantInvestigations: value,
                          },
                          '#withAssistantInvestigationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigationsMixin(value): {
                            assistantInvestigations+: value,
                          },
                          assistantInvestigations+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assistantInvestigations+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withDataSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSource(value): {
                            dataSource: value,
                          },
                          '#withDataSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSourceMixin(value): {
                            dataSource+: value,
                          },
                          dataSource+:
                            {
                              '#withLogsQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQuery(value): {
                                dataSource+: {
                                  logsQuery: value,
                                },
                              },
                              '#withLogsQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQueryMixin(value): {
                                dataSource+: {
                                  logsQuery+: value,
                                },
                              },
                              logsQuery+:
                                {
                                  '#withDataSourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Data source type (e.g., 'loki')." } },
                                  withDataSourceType(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceType: value,
                                      },
                                    },
                                  },
                                  '#withDataSourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the data source to query.' } },
                                  withDataSourceUid(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceUid: value,
                                      },
                                    },
                                  },
                                  '#withExpr': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Log query expression to execute.' } },
                                  withExpr(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        expr: value,
                                      },
                                    },
                                  },
                                  '#withMaxLines': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Maximum number of log lines to include. Defaults to 3.' } },
                                  withMaxLines(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        maxLines: value,
                                      },
                                    },
                                  },
                                },
                              '#withRawQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQuery(value): {
                                dataSource+: {
                                  rawQuery: value,
                                },
                              },
                              '#withRawQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQueryMixin(value): {
                                dataSource+: {
                                  rawQuery+: value,
                                },
                              },
                              rawQuery+:
                                {
                                  '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Reference ID for correlating queries.' } },
                                  withRefId(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        refId: value,
                                      },
                                    },
                                  },
                                  '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Raw request payload for the data source query.' } },
                                  withRequest(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        request: value,
                                      },
                                    },
                                  },
                                },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                dataSource+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExplain': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplain(value): {
                            explain: value,
                          },
                          '#withExplainMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplainMixin(value): {
                            explain+: value,
                          },
                          explain+:
                            {
                              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Annotation name to set the explanation in. Defaults to 'ai_explanation'." } },
                              withAnnotation(value): {
                                explain+: {
                                  annotation: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                explain+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExternal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternal(value): {
                            external: value,
                          },
                          '#withExternalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternalMixin(value): {
                            external+: value,
                          },
                          external+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                external+: {
                                  timeout: value,
                                },
                              },
                              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'HTTP endpoint URL to call for enrichment' } },
                              withUrl(value): {
                                external+: {
                                  url: value,
                                },
                              },
                            },
                          '#withSift': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSift(value): {
                            sift: value,
                          },
                          '#withSiftMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSiftMixin(value): {
                            sift+: value,
                          },
                          sift+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                sift+: {
                                  timeout: value,
                                },
                              },
                            },
                        },
                    },
                  '#withIf': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Condition to evaluate.' } },
                  withIf(value): {
                    conditional+: {
                      'if': value,
                    },
                  },
                  '#withIfMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Condition to evaluate.' } },
                  withIfMixin(value): {
                    conditional+: {
                      'if'+: value,
                    },
                  },
                  'if'+:
                    {
                      '#withAnnotationMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Annotation matchers for the condition.' } },
                      withAnnotationMatchers(value): {
                        conditional+: {
                          'if'+: {
                            annotationMatchers:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withAnnotationMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Annotation matchers for the condition.' } },
                      withAnnotationMatchersMixin(value): {
                        conditional+: {
                          'if'+: {
                            annotationMatchers+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      annotationMatchers+:
                        {
                          '#': { help: '', name: 'annotationMatchers' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withName(value): {
                            name: value,
                          },
                          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withType(value): {
                            type: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withDataSourceCondition': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Data source condition.' } },
                      withDataSourceCondition(value): {
                        conditional+: {
                          'if'+: {
                            dataSourceCondition: value,
                          },
                        },
                      },
                      '#withDataSourceConditionMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Data source condition.' } },
                      withDataSourceConditionMixin(value): {
                        conditional+: {
                          'if'+: {
                            dataSourceCondition+: value,
                          },
                        },
                      },
                      dataSourceCondition+:
                        {
                          '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Data source request payload.' } },
                          withRequest(value): {
                            conditional+: {
                              'if'+: {
                                dataSourceCondition+: {
                                  request: value,
                                },
                              },
                            },
                          },
                        },
                      '#withLabelMatchers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Label matchers for the condition.' } },
                      withLabelMatchers(value): {
                        conditional+: {
                          'if'+: {
                            labelMatchers:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withLabelMatchersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Label matchers for the condition.' } },
                      withLabelMatchersMixin(value): {
                        conditional+: {
                          'if'+: {
                            labelMatchers+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      labelMatchers+:
                        {
                          '#': { help: '', name: 'labelMatchers' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withName(value): {
                            name: value,
                          },
                          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withType(value): {
                            type: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                    },
                  '#withThen': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is true.' } },
                  withThen(value): {
                    conditional+: {
                      'then': value,
                    },
                  },
                  '#withThenMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Steps when condition is true.' } },
                  withThenMixin(value): {
                    conditional+: {
                      'then'+: value,
                    },
                  },
                  'then'+:
                    {
                      '#withStep': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStep(value): {
                        conditional+: {
                          'then'+: {
                            step:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      '#withStepMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '' } },
                      withStepMixin(value): {
                        conditional+: {
                          'then'+: {
                            step+:
                              (if std.isArray(value)
                               then value
                               else [value]),
                          },
                        },
                      },
                      step+:
                        {
                          '#': { help: '', name: 'step' },
                          '#withAsserts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAsserts(value): {
                            asserts: value,
                          },
                          '#withAssertsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Integrate with Grafana Asserts for enrichment.' } },
                          withAssertsMixin(value): {
                            asserts+: value,
                          },
                          asserts+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                asserts+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssign': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssign(value): {
                            assign: value,
                          },
                          '#withAssignMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Assign annotations to an alert.' } },
                          withAssignMixin(value): {
                            assign+: value,
                          },
                          assign+:
                            {
                              '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotations(value): {
                                assign+: {
                                  annotations: value,
                                },
                              },
                              '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Map of annotation names to values to set on matching alerts.' } },
                              withAnnotationsMixin(value): {
                                assign+: {
                                  annotations+: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assign+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withAssistantInvestigations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigations(value): {
                            assistantInvestigations: value,
                          },
                          '#withAssistantInvestigationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Use AI assistant to investigate alerts and add insights.' } },
                          withAssistantInvestigationsMixin(value): {
                            assistantInvestigations+: value,
                          },
                          assistantInvestigations+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                assistantInvestigations+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withDataSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSource(value): {
                            dataSource: value,
                          },
                          '#withDataSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
                          withDataSourceMixin(value): {
                            dataSource+: value,
                          },
                          dataSource+:
                            {
                              '#withLogsQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQuery(value): {
                                dataSource+: {
                                  logsQuery: value,
                                },
                              },
                              '#withLogsQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                              withLogsQueryMixin(value): {
                                dataSource+: {
                                  logsQuery+: value,
                                },
                              },
                              logsQuery+:
                                {
                                  '#withDataSourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Data source type (e.g., 'loki')." } },
                                  withDataSourceType(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceType: value,
                                      },
                                    },
                                  },
                                  '#withDataSourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the data source to query.' } },
                                  withDataSourceUid(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        dataSourceUid: value,
                                      },
                                    },
                                  },
                                  '#withExpr': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Log query expression to execute.' } },
                                  withExpr(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        expr: value,
                                      },
                                    },
                                  },
                                  '#withMaxLines': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Maximum number of log lines to include. Defaults to 3.' } },
                                  withMaxLines(value): {
                                    dataSource+: {
                                      logsQuery+: {
                                        maxLines: value,
                                      },
                                    },
                                  },
                                },
                              '#withRawQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQuery(value): {
                                dataSource+: {
                                  rawQuery: value,
                                },
                              },
                              '#withRawQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                              withRawQueryMixin(value): {
                                dataSource+: {
                                  rawQuery+: value,
                                },
                              },
                              rawQuery+:
                                {
                                  '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Reference ID for correlating queries.' } },
                                  withRefId(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        refId: value,
                                      },
                                    },
                                  },
                                  '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Raw request payload for the data source query.' } },
                                  withRequest(value): {
                                    dataSource+: {
                                      rawQuery+: {
                                        request: value,
                                      },
                                    },
                                  },
                                },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                dataSource+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExplain': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplain(value): {
                            explain: value,
                          },
                          '#withExplainMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
                          withExplainMixin(value): {
                            explain+: value,
                          },
                          explain+:
                            {
                              '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Annotation name to set the explanation in. Defaults to 'ai_explanation'." } },
                              withAnnotation(value): {
                                explain+: {
                                  annotation: value,
                                },
                              },
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                explain+: {
                                  timeout: value,
                                },
                              },
                            },
                          '#withExternal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternal(value): {
                            external: value,
                          },
                          '#withExternalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
                          withExternalMixin(value): {
                            external+: value,
                          },
                          external+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                external+: {
                                  timeout: value,
                                },
                              },
                              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'HTTP endpoint URL to call for enrichment' } },
                              withUrl(value): {
                                external+: {
                                  url: value,
                                },
                              },
                            },
                          '#withSift': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSift(value): {
                            sift: value,
                          },
                          '#withSiftMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
                          withSiftMixin(value): {
                            sift+: value,
                          },
                          sift+:
                            {
                              '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                              withTimeout(value): {
                                sift+: {
                                  timeout: value,
                                },
                              },
                            },
                        },
                    },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    conditional+: {
                      timeout: value,
                    },
                  },
                },
              '#withDataSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
              withDataSource(value): {
                dataSource: value,
              },
              '#withDataSourceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Query Grafana data sources and add results to alerts.' } },
              withDataSourceMixin(value): {
                dataSource+: value,
              },
              dataSource+:
                {
                  '#withLogsQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                  withLogsQuery(value): {
                    dataSource+: {
                      logsQuery: value,
                    },
                  },
                  '#withLogsQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Logs query configuration for querying log data sources.' } },
                  withLogsQueryMixin(value): {
                    dataSource+: {
                      logsQuery+: value,
                    },
                  },
                  logsQuery+:
                    {
                      '#withDataSourceType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Data source type (e.g., 'loki')." } },
                      withDataSourceType(value): {
                        dataSource+: {
                          logsQuery+: {
                            dataSourceType: value,
                          },
                        },
                      },
                      '#withDataSourceUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'UID of the data source to query.' } },
                      withDataSourceUid(value): {
                        dataSource+: {
                          logsQuery+: {
                            dataSourceUid: value,
                          },
                        },
                      },
                      '#withExpr': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Log query expression to execute.' } },
                      withExpr(value): {
                        dataSource+: {
                          logsQuery+: {
                            expr: value,
                          },
                        },
                      },
                      '#withMaxLines': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'Maximum number of log lines to include. Defaults to 3.' } },
                      withMaxLines(value): {
                        dataSource+: {
                          logsQuery+: {
                            maxLines: value,
                          },
                        },
                      },
                    },
                  '#withRawQuery': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                  withRawQuery(value): {
                    dataSource+: {
                      rawQuery: value,
                    },
                  },
                  '#withRawQueryMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Raw query configuration for advanced data source queries.' } },
                  withRawQueryMixin(value): {
                    dataSource+: {
                      rawQuery+: value,
                    },
                  },
                  rawQuery+:
                    {
                      '#withRefId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Reference ID for correlating queries.' } },
                      withRefId(value): {
                        dataSource+: {
                          rawQuery+: {
                            refId: value,
                          },
                        },
                      },
                      '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Raw request payload for the data source query.' } },
                      withRequest(value): {
                        dataSource+: {
                          rawQuery+: {
                            request: value,
                          },
                        },
                      },
                    },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    dataSource+: {
                      timeout: value,
                    },
                  },
                },
              '#withExplain': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
              withExplain(value): {
                explain: value,
              },
              '#withExplainMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Generate AI explanation and store in an annotation.' } },
              withExplainMixin(value): {
                explain+: value,
              },
              explain+:
                {
                  '#withAnnotation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Annotation name to set the explanation in. Defaults to 'ai_explanation'." } },
                  withAnnotation(value): {
                    explain+: {
                      annotation: value,
                    },
                  },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    explain+: {
                      timeout: value,
                    },
                  },
                },
              '#withExternal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
              withExternal(value): {
                external: value,
              },
              '#withExternalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Call an external HTTP service for enrichment.' } },
              withExternalMixin(value): {
                external+: value,
              },
              external+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    external+: {
                      timeout: value,
                    },
                  },
                  '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'HTTP endpoint URL to call for enrichment' } },
                  withUrl(value): {
                    external+: {
                      url: value,
                    },
                  },
                },
              '#withSift': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
              withSift(value): {
                sift: value,
              },
              '#withSiftMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Analyze alerts for patterns and insights.' } },
              withSiftMixin(value): {
                sift+: value,
              },
              sift+:
                {
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Maximum execution time (e.g., '30s', '1m')" } },
                  withTimeout(value): {
                    sift+: {
                      timeout: value,
                    },
                  },
                },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The title of the alert enrichment.' } },
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
