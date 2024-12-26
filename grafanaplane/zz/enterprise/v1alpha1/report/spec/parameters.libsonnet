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
      '#withDashboards': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) List of dashboards to render into the report (see below for nested schema)\nList of dashboards to render into the report' } },
      withDashboards(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dashboards:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDashboardsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) List of dashboards to render into the report (see below for nested schema)\nList of dashboards to render into the report' } },
      withDashboardsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dashboards+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      dashboards+:
        {
          '#': { help: '', name: 'dashboards' },
          '#withReportVariables': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Add report variables to the dashboard. Values should be separated by commas.\nAdd report variables to the dashboard. Values should be separated by commas.' } },
          withReportVariables(value): {
            reportVariables: value,
          },
          '#withReportVariablesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Add report variables to the dashboard. Values should be separated by commas.\nAdd report variables to the dashboard. Values should be separated by commas.' } },
          withReportVariablesMixin(value): {
            reportVariables+: value,
          },
          '#withTimeRange': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Time range of the report. (see below for nested schema)\nTime range of the report.' } },
          withTimeRange(value): {
            timeRange:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTimeRangeMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Time range of the report. (see below for nested schema)\nTime range of the report.' } },
          withTimeRangeMixin(value): {
            timeRange+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          timeRange+:
            {
              '#': { help: '', name: 'timeRange' },
              '#withFrom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Start of the time range.\nStart of the time range.' } },
              withFrom(value): {
                from: value,
              },
              '#withTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) End of the time range.\nEnd of the time range.' } },
              withTo(value): {
                to: value,
              },
            },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Dashboard uid.\nDashboard uid.' } },
          withUid(value): {
            uid: value,
          },
        },
      '#withFormats': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Specifies what kind of attachment to generate for the report. Allowed values: pdf, csv, image.\nSpecifies what kind of attachment to generate for the report. Allowed values: `pdf`, `csv`, `image`.' } },
      withFormats(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              formats:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withFormatsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Specifies what kind of attachment to generate for the report. Allowed values: pdf, csv, image.\nSpecifies what kind of attachment to generate for the report. Allowed values: `pdf`, `csv`, `image`.' } },
      withFormatsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              formats+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIncludeDashboardLink': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to include a link to the dashboard in the report. Defaults to true.\nWhether to include a link to the dashboard in the report. Defaults to `true`.' } },
      withIncludeDashboardLink(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              includeDashboardLink: value,
            },
          },
        },
      },
      '#withIncludeTableCsv': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to include a CSV file of table panel data. Defaults to false.\nWhether to include a CSV file of table panel data. Defaults to `false`.' } },
      withIncludeTableCsv(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              includeTableCsv: value,
            },
          },
        },
      },
      '#withLayout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Layout of the report. Allowed values: simple, grid. Defaults to grid.\nLayout of the report. Allowed values: `simple`, `grid`. Defaults to `grid`.' } },
      withLayout(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              layout: value,
            },
          },
        },
      },
      '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Message to be sent in the report.\nMessage to be sent in the report.' } },
      withMessage(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              message: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the report.\nName of the report.' } },
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
      '#withOrientation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Orientation of the report. Allowed values: landscape, portrait. Defaults to landscape.\nOrientation of the report. Allowed values: `landscape`, `portrait`. Defaults to `landscape`.' } },
      withOrientation(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              orientation: value,
            },
          },
        },
      },
      '#withRecipients': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) List of recipients of the report.\nList of recipients of the report.' } },
      withRecipients(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              recipients:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withRecipientsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) List of recipients of the report.\nList of recipients of the report.' } },
      withRecipientsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              recipients+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withReplyTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'to email address of the report.\nReply-to email address of the report.' } },
      withReplyTo(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              replyTo: value,
            },
          },
        },
      },
      '#withSchedule': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Schedule of the report. (see below for nested schema)\nSchedule of the report.' } },
      withSchedule(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              schedule:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withScheduleMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Schedule of the report. (see below for nested schema)\nSchedule of the report.' } },
      withScheduleMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              schedule+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      schedule+:
        {
          '#': { help: '', name: 'schedule' },
          '#withCustomInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Custom interval of the report.\nNote: This field is only available when frequency is set to custom.\nCustom interval of the report.\n**Note:** This field is only available when frequency is set to `custom`.' } },
          withCustomInterval(value): {
            customInterval: value,
          },
          '#withEndTime': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '01-02T15:04:05 format if you want to set a custom timezone\nEnd time of the report. If empty, the report will be sent indefinitely (according to frequency). Note that times will be saved as UTC in Grafana. Use 2006-01-02T15:04:05 format if you want to set a custom timezone' } },
          withEndTime(value): {
            endTime: value,
          },
          '#withFrequency': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Frequency of the report. Allowed values: never, once, hourly, daily, weekly, monthly, custom.\nFrequency of the report. Allowed values: `never`, `once`, `hourly`, `daily`, `weekly`, `monthly`, `custom`.' } },
          withFrequency(value): {
            frequency: value,
          },
          '#withLastDayOfMonth': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Send the report on the last day of the month Defaults to false.\nSend the report on the last day of the month Defaults to `false`.' } },
          withLastDayOfMonth(value=true): {
            lastDayOfMonth: value,
          },
          '#withStartTime': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '01-02T15:04:05 format if you want to set a custom timezone\nStart time of the report. If empty, the start date will be set to the creation time. Note that times will be saved as UTC in Grafana. Use 2006-01-02T15:04:05 format if you want to set a custom timezone' } },
          withStartTime(value): {
            startTime: value,
          },
          '#withTimezone': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Set the report time zone. Defaults to GMT.\nSet the report time zone. Defaults to `GMT`.' } },
          withTimezone(value): {
            timezone: value,
          },
          '#withWorkdaysOnly': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to send the report only on work days. Defaults to false.\nWhether to send the report only on work days. Defaults to `false`.' } },
          withWorkdaysOnly(value=true): {
            workdaysOnly: value,
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
      '#withDashboards': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) List of dashboards to render into the report (see below for nested schema)\nList of dashboards to render into the report' } },
      withDashboards(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dashboards:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDashboardsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) List of dashboards to render into the report (see below for nested schema)\nList of dashboards to render into the report' } },
      withDashboardsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dashboards+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      dashboards+:
        {
          '#': { help: '', name: 'dashboards' },
          '#withReportVariables': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Add report variables to the dashboard. Values should be separated by commas.\nAdd report variables to the dashboard. Values should be separated by commas.' } },
          withReportVariables(value): {
            reportVariables: value,
          },
          '#withReportVariablesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Add report variables to the dashboard. Values should be separated by commas.\nAdd report variables to the dashboard. Values should be separated by commas.' } },
          withReportVariablesMixin(value): {
            reportVariables+: value,
          },
          '#withTimeRange': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Time range of the report. (see below for nested schema)\nTime range of the report.' } },
          withTimeRange(value): {
            timeRange:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTimeRangeMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Time range of the report. (see below for nested schema)\nTime range of the report.' } },
          withTimeRangeMixin(value): {
            timeRange+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          timeRange+:
            {
              '#': { help: '', name: 'timeRange' },
              '#withFrom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Start of the time range.\nStart of the time range.' } },
              withFrom(value): {
                from: value,
              },
              '#withTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) End of the time range.\nEnd of the time range.' } },
              withTo(value): {
                to: value,
              },
            },
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Dashboard uid.\nDashboard uid.' } },
          withUid(value): {
            uid: value,
          },
        },
      '#withFormats': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Specifies what kind of attachment to generate for the report. Allowed values: pdf, csv, image.\nSpecifies what kind of attachment to generate for the report. Allowed values: `pdf`, `csv`, `image`.' } },
      withFormats(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              formats:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withFormatsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Specifies what kind of attachment to generate for the report. Allowed values: pdf, csv, image.\nSpecifies what kind of attachment to generate for the report. Allowed values: `pdf`, `csv`, `image`.' } },
      withFormatsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              formats+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIncludeDashboardLink': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to include a link to the dashboard in the report. Defaults to true.\nWhether to include a link to the dashboard in the report. Defaults to `true`.' } },
      withIncludeDashboardLink(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              includeDashboardLink: value,
            },
          },
        },
      },
      '#withIncludeTableCsv': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to include a CSV file of table panel data. Defaults to false.\nWhether to include a CSV file of table panel data. Defaults to `false`.' } },
      withIncludeTableCsv(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              includeTableCsv: value,
            },
          },
        },
      },
      '#withLayout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Layout of the report. Allowed values: simple, grid. Defaults to grid.\nLayout of the report. Allowed values: `simple`, `grid`. Defaults to `grid`.' } },
      withLayout(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              layout: value,
            },
          },
        },
      },
      '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Message to be sent in the report.\nMessage to be sent in the report.' } },
      withMessage(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              message: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the report.\nName of the report.' } },
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
      '#withOrientation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Orientation of the report. Allowed values: landscape, portrait. Defaults to landscape.\nOrientation of the report. Allowed values: `landscape`, `portrait`. Defaults to `landscape`.' } },
      withOrientation(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              orientation: value,
            },
          },
        },
      },
      '#withRecipients': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) List of recipients of the report.\nList of recipients of the report.' } },
      withRecipients(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              recipients:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withRecipientsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) List of recipients of the report.\nList of recipients of the report.' } },
      withRecipientsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              recipients+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withReplyTo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'to email address of the report.\nReply-to email address of the report.' } },
      withReplyTo(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              replyTo: value,
            },
          },
        },
      },
      '#withSchedule': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Schedule of the report. (see below for nested schema)\nSchedule of the report.' } },
      withSchedule(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              schedule:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withScheduleMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) Schedule of the report. (see below for nested schema)\nSchedule of the report.' } },
      withScheduleMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              schedule+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      schedule+:
        {
          '#': { help: '', name: 'schedule' },
          '#withCustomInterval': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Custom interval of the report.\nNote: This field is only available when frequency is set to custom.\nCustom interval of the report.\n**Note:** This field is only available when frequency is set to `custom`.' } },
          withCustomInterval(value): {
            customInterval: value,
          },
          '#withEndTime': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '01-02T15:04:05 format if you want to set a custom timezone\nEnd time of the report. If empty, the report will be sent indefinitely (according to frequency). Note that times will be saved as UTC in Grafana. Use 2006-01-02T15:04:05 format if you want to set a custom timezone' } },
          withEndTime(value): {
            endTime: value,
          },
          '#withFrequency': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Frequency of the report. Allowed values: never, once, hourly, daily, weekly, monthly, custom.\nFrequency of the report. Allowed values: `never`, `once`, `hourly`, `daily`, `weekly`, `monthly`, `custom`.' } },
          withFrequency(value): {
            frequency: value,
          },
          '#withLastDayOfMonth': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Send the report on the last day of the month Defaults to false.\nSend the report on the last day of the month Defaults to `false`.' } },
          withLastDayOfMonth(value=true): {
            lastDayOfMonth: value,
          },
          '#withStartTime': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '01-02T15:04:05 format if you want to set a custom timezone\nStart time of the report. If empty, the start date will be set to the creation time. Note that times will be saved as UTC in Grafana. Use 2006-01-02T15:04:05 format if you want to set a custom timezone' } },
          withStartTime(value): {
            startTime: value,
          },
          '#withTimezone': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Set the report time zone. Defaults to GMT.\nSet the report time zone. Defaults to `GMT`.' } },
          withTimezone(value): {
            timezone: value,
          },
          '#withWorkdaysOnly': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to send the report only on work days. Defaults to false.\nWhether to send the report only on work days. Defaults to `false`.' } },
          withWorkdaysOnly(value=true): {
            workdaysOnly: value,
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
