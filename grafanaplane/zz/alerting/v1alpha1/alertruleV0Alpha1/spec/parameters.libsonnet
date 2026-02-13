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
          '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts.' } },
          withAnnotations(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    annotations: value,
                  },
                },
              },
            },
          },
          '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts.' } },
          withAnnotationsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    annotations+: value,
                  },
                },
              },
            },
          },
          '#withExecErrState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting." } },
          withExecErrState(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    execErrState: value,
                  },
                },
              },
            },
          },
          '#withExpressions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.' } },
          withExpressions(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    expressions: value,
                  },
                },
              },
            },
          },
          '#withExpressionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.' } },
          withExpressionsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    expressions+: value,
                  },
                },
              },
            },
          },
          '#withFor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending.' } },
          withFor(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    'for': value,
                  },
                },
              },
            },
          },
          '#withKeepFiringFor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "The amount of time for which the rule will considered to be Recovering after initially Firing. Before this time has elapsed, the rule will continue to fire once it's been triggered." } },
          withKeepFiringFor(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    keepFiringFor: value,
                  },
                },
              },
            },
          },
          '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing.' } },
          withLabels(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    labels: value,
                  },
                },
              },
            },
          },
          '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing.' } },
          withLabelsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    labels+: value,
                  },
                },
              },
            },
          },
          '#withMissingSeriesEvalsToResolve': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'The number of missing series evaluations that must occur before the rule is considered to be resolved.' } },
          withMissingSeriesEvalsToResolve(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    missingSeriesEvalsToResolve: value,
                  },
                },
              },
            },
          },
          '#withNoDataState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting." } },
          withNoDataState(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    noDataState: value,
                  },
                },
              },
            },
          },
          '#withNotificationSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Notification settings for the rule. If specified, it overrides the notification policies.' } },
          withNotificationSettings(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    notificationSettings: value,
                  },
                },
              },
            },
          },
          '#withNotificationSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Notification settings for the rule. If specified, it overrides the notification policies.' } },
          withNotificationSettingsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    notificationSettings+: value,
                  },
                },
              },
            },
          },
          notificationSettings+:
            {
              '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time.' } },
              withActiveTimings(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          activeTimings:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time.' } },
              withActiveTimingsMixin(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          activeTimings+:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The contact point to route notifications that match this rule to.' } },
              withContactPoint(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          contactPoint: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of alert labels to group alerts into notifications by.' } },
              withGroupBy(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupBy:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of alert labels to group alerts into notifications by.' } },
              withGroupByMixin(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupBy+:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Minimum time interval between two notifications for the same group.' } },
              withGroupInterval(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupInterval: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Time to wait to buffer alerts of the same group before sending a notification.' } },
              withGroupWait(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupWait: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of mute timing names to apply to alerts that match this policy.' } },
              withMuteTimings(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          muteTimings:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of mute timing names to apply to alerts that match this policy.' } },
              withMuteTimingsMixin(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          muteTimings+:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Minimum time interval for re-sending a notification if an alert is still firing.' } },
              withRepeatInterval(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        notificationSettings+: {
                          repeatInterval: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withPanelRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "Reference to a panel that this alert rule is associated with. Should be an object with 'dashboard_uid' (string) and 'panel_id' (number) fields." } },
          withPanelRef(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    panelRef: value,
                  },
                },
              },
            },
          },
          '#withPanelRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "Reference to a panel that this alert rule is associated with. Should be an object with 'dashboard_uid' (string) and 'panel_id' (number) fields." } },
          withPanelRefMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    panelRef+: value,
                  },
                },
              },
            },
          },
          '#withPaused': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'Sets whether the rule should be paused or not.' } },
          withPaused(value=true): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    paused: value,
                  },
                },
              },
            },
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The title of the alert rule.' } },
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
          '#withTrigger': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The trigger configuration for the alert rule.' } },
          withTrigger(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    trigger: value,
                  },
                },
              },
            },
          },
          '#withTriggerMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The trigger configuration for the alert rule.' } },
          withTriggerMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    trigger+: value,
                  },
                },
              },
            },
          },
          trigger+:
            {
              '#withInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The interval at which the alert rule should be evaluated.' } },
              withInterval(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        trigger+: {
                          interval: value,
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
          '#withAnnotations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts.' } },
          withAnnotations(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    annotations: value,
                  },
                },
              },
            },
          },
          '#withAnnotationsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs of metadata to attach to the alert rule. They add additional information, such as a `summary` or `runbook_url`, to help identify and investigate alerts.' } },
          withAnnotationsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    annotations+: value,
                  },
                },
              },
            },
          },
          '#withExecErrState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Describes what state to enter when the rule's query is invalid and the rule cannot be executed. Options are OK, Error, KeepLast, and Alerting." } },
          withExecErrState(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    execErrState: value,
                  },
                },
              },
            },
          },
          '#withExpressions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.' } },
          withExpressions(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    expressions: value,
                  },
                },
              },
            },
          },
          '#withExpressionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'A sequence of stages that describe the contents of the rule. Each value is a JSON string representing an expression object.' } },
          withExpressionsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    expressions+: value,
                  },
                },
              },
            },
          },
          '#withFor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The amount of time for which the rule must be breached for the rule to be considered to be Firing. Before this time has elapsed, the rule is only considered to be Pending.' } },
          withFor(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    'for': value,
                  },
                },
              },
            },
          },
          '#withKeepFiringFor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "The amount of time for which the rule will considered to be Recovering after initially Firing. Before this time has elapsed, the rule will continue to fire once it's been triggered." } },
          withKeepFiringFor(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    keepFiringFor: value,
                  },
                },
              },
            },
          },
          '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing.' } },
          withLabels(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    labels: value,
                  },
                },
              },
            },
          },
          '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Key-value pairs to attach to the alert rule that can be used in matching, grouping, and routing.' } },
          withLabelsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    labels+: value,
                  },
                },
              },
            },
          },
          '#withMissingSeriesEvalsToResolve': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'The number of missing series evaluations that must occur before the rule is considered to be resolved.' } },
          withMissingSeriesEvalsToResolve(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    missingSeriesEvalsToResolve: value,
                  },
                },
              },
            },
          },
          '#withNoDataState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Describes what state to enter when the rule's query returns No Data. Options are OK, NoData, KeepLast, and Alerting." } },
          withNoDataState(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    noDataState: value,
                  },
                },
              },
            },
          },
          '#withNotificationSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Notification settings for the rule. If specified, it overrides the notification policies.' } },
          withNotificationSettings(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    notificationSettings: value,
                  },
                },
              },
            },
          },
          '#withNotificationSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Notification settings for the rule. If specified, it overrides the notification policies.' } },
          withNotificationSettingsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    notificationSettings+: value,
                  },
                },
              },
            },
          },
          notificationSettings+:
            {
              '#withActiveTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time.' } },
              withActiveTimings(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          activeTimings:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withActiveTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time.' } },
              withActiveTimingsMixin(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          activeTimings+:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withContactPoint': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The contact point to route notifications that match this rule to.' } },
              withContactPoint(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          contactPoint: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupBy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of alert labels to group alerts into notifications by.' } },
              withGroupBy(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupBy:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupByMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of alert labels to group alerts into notifications by.' } },
              withGroupByMixin(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupBy+:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Minimum time interval between two notifications for the same group.' } },
              withGroupInterval(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupInterval: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withGroupWait': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Time to wait to buffer alerts of the same group before sending a notification.' } },
              withGroupWait(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          groupWait: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withMuteTimings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of mute timing names to apply to alerts that match this policy.' } },
              withMuteTimings(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          muteTimings:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withMuteTimingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'A list of mute timing names to apply to alerts that match this policy.' } },
              withMuteTimingsMixin(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          muteTimings+:
                            (if std.isArray(value)
                             then value
                             else [value]),
                        },
                      },
                    },
                  },
                },
              },
              '#withRepeatInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Minimum time interval for re-sending a notification if an alert is still firing.' } },
              withRepeatInterval(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        notificationSettings+: {
                          repeatInterval: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withPanelRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "Reference to a panel that this alert rule is associated with. Should be an object with 'dashboard_uid' (string) and 'panel_id' (number) fields." } },
          withPanelRef(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    panelRef: value,
                  },
                },
              },
            },
          },
          '#withPanelRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "Reference to a panel that this alert rule is associated with. Should be an object with 'dashboard_uid' (string) and 'panel_id' (number) fields." } },
          withPanelRefMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    panelRef+: value,
                  },
                },
              },
            },
          },
          '#withPaused': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'Sets whether the rule should be paused or not.' } },
          withPaused(value=true): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    paused: value,
                  },
                },
              },
            },
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The title of the alert rule.' } },
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
          '#withTrigger': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The trigger configuration for the alert rule.' } },
          withTrigger(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    trigger: value,
                  },
                },
              },
            },
          },
          '#withTriggerMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'The trigger configuration for the alert rule.' } },
          withTriggerMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    trigger+: value,
                  },
                },
              },
            },
          },
          trigger+:
            {
              '#withInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The interval at which the alert rule should be evaluated.' } },
              withInterval(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        trigger+: {
                          interval: value,
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
