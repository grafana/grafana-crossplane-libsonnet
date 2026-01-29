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
      '#withIntervals': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time intervals at which to mute notifications. Use an empty block to mute all the time. (see below for nested schema)\nThe time intervals at which to mute notifications. Use an empty block to mute all the time.' } },
      withIntervals(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              intervals:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIntervalsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time intervals at which to mute notifications. Use an empty block to mute all the time. (see below for nested schema)\nThe time intervals at which to mute notifications. Use an empty block to mute all the time.' } },
      withIntervalsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              intervals+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      intervals+:
        {
          '#': { help: '', name: 'intervals' },
          '#withDaysOfMonth': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".\nAn inclusive range of days, 1-31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".' } },
          withDaysOfMonth(value): {
            daysOfMonth:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDaysOfMonthMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".\nAn inclusive range of days, 1-31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".' } },
          withDaysOfMonthMixin(value): {
            daysOfMonth+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withLocation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Provides the time zone for the time interval. Must be a location in the IANA time zone database, e.g "America/New_York"\nProvides the time zone for the time interval. Must be a location in the IANA time zone database, e.g "America/New_York"' } },
          withLocation(value): {
            location: value,
          },
          '#withMonths': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".\nAn inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".' } },
          withMonths(value): {
            months:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMonthsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".\nAn inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".' } },
          withMonthsMixin(value): {
            months+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTimes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time ranges, represented in minutes, during which to mute in a given day. (see below for nested schema)\nThe time ranges, represented in minutes, during which to mute in a given day.' } },
          withTimes(value): {
            times:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTimesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time ranges, represented in minutes, during which to mute in a given day. (see below for nested schema)\nThe time ranges, represented in minutes, during which to mute in a given day.' } },
          withTimesMixin(value): {
            times+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          times+:
            {
              '#': { help: '', name: 'times' },
              '#withEnd': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The time, in hh:mm format, of when the interval should end exclusively.\nThe time, in hh:mm format, of when the interval should end exclusively.' } },
              withEnd(value): {
                end: value,
              },
              '#withStart': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The time, in hh:mm format, of when the interval should begin inclusively.\nThe time, in hh:mm format, of when the interval should begin inclusively.' } },
              withStart(value): {
                start: value,
              },
            },
          '#withWeekdays': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".\nAn inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".' } },
          withWeekdays(value): {
            weekdays:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withWeekdaysMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".\nAn inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".' } },
          withWeekdaysMixin(value): {
            weekdays+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withYears': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A positive inclusive range of years, e.g. "2030" or "2025:2026".\nA positive inclusive range of years, e.g. "2030" or "2025:2026".' } },
          withYears(value): {
            years:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withYearsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A positive inclusive range of years, e.g. "2030" or "2025:2026".\nA positive inclusive range of years, e.g. "2030" or "2025:2026".' } },
          withYearsMixin(value): {
            years+:
              (if std.isArray(value)
               then value
               else [value]),
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the mute timing.\nThe name of the mute timing.' } },
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
      '#withIntervals': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time intervals at which to mute notifications. Use an empty block to mute all the time. (see below for nested schema)\nThe time intervals at which to mute notifications. Use an empty block to mute all the time.' } },
      withIntervals(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              intervals:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withIntervalsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time intervals at which to mute notifications. Use an empty block to mute all the time. (see below for nested schema)\nThe time intervals at which to mute notifications. Use an empty block to mute all the time.' } },
      withIntervalsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              intervals+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      intervals+:
        {
          '#': { help: '', name: 'intervals' },
          '#withDaysOfMonth': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".\nAn inclusive range of days, 1-31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".' } },
          withDaysOfMonth(value): {
            daysOfMonth:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDaysOfMonthMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".\nAn inclusive range of days, 1-31, within a month, e.g. "1" or "14:16". Negative values can be used to represent days counting from the end of a month, e.g. "-1".' } },
          withDaysOfMonthMixin(value): {
            daysOfMonth+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withLocation': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Provides the time zone for the time interval. Must be a location in the IANA time zone database, e.g "America/New_York"\nProvides the time zone for the time interval. Must be a location in the IANA time zone database, e.g "America/New_York"' } },
          withLocation(value): {
            location: value,
          },
          '#withMonths': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".\nAn inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".' } },
          withMonths(value): {
            months:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMonthsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".\nAn inclusive range of months, either numerical or full calendar month, e.g. "1:3", "december", or "may:august".' } },
          withMonthsMixin(value): {
            months+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTimes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time ranges, represented in minutes, during which to mute in a given day. (see below for nested schema)\nThe time ranges, represented in minutes, during which to mute in a given day.' } },
          withTimes(value): {
            times:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTimesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) The time ranges, represented in minutes, during which to mute in a given day. (see below for nested schema)\nThe time ranges, represented in minutes, during which to mute in a given day.' } },
          withTimesMixin(value): {
            times+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          times+:
            {
              '#': { help: '', name: 'times' },
              '#withEnd': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The time, in hh:mm format, of when the interval should end exclusively.\nThe time, in hh:mm format, of when the interval should end exclusively.' } },
              withEnd(value): {
                end: value,
              },
              '#withStart': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The time, in hh:mm format, of when the interval should begin inclusively.\nThe time, in hh:mm format, of when the interval should begin inclusively.' } },
              withStart(value): {
                start: value,
              },
            },
          '#withWeekdays': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".\nAn inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".' } },
          withWeekdays(value): {
            weekdays:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withWeekdaysMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".\nAn inclusive range of weekdays, e.g. "monday" or "tuesday:thursday".' } },
          withWeekdaysMixin(value): {
            weekdays+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withYears': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A positive inclusive range of years, e.g. "2030" or "2025:2026".\nA positive inclusive range of years, e.g. "2030" or "2025:2026".' } },
          withYears(value): {
            years:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withYearsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) A positive inclusive range of years, e.g. "2030" or "2025:2026".\nA positive inclusive range of years, e.g. "2030" or "2025:2026".' } },
          withYearsMixin(value): {
            years+:
              (if std.isArray(value)
               then value
               else [value]),
          },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the mute timing.\nThe name of the mute timing.' } },
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
