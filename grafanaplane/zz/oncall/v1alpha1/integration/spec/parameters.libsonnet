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
      '#withDefaultRoute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The Default route for all alerts from the given integration (see below for nested schema)\nThe Default route for all alerts from the given integration' } },
      withDefaultRoute(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              defaultRoute:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDefaultRouteMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The Default route for all alerts from the given integration (see below for nested schema)\nThe Default route for all alerts from the given integration' } },
      withDefaultRouteMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              defaultRoute+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      defaultRoute+:
        {
          '#': { help: '', name: 'defaultRoute' },
          '#withEscalationChainId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the escalation chain.\nThe ID of the escalation chain.' } },
          withEscalationChainId(value): {
            escalationChainId: value,
          },
          '#withEscalationChainRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainRef(value): {
            escalationChainRef: value,
          },
          '#withEscalationChainRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainRefMixin(value): {
            escalationChainRef+: value,
          },
          escalationChainRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                escalationChainRef+: {
                  name: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                escalationChainRef+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                escalationChainRef+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    escalationChainRef+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    escalationChainRef+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withEscalationChainSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainSelector(value): {
            escalationChainSelector: value,
          },
          '#withEscalationChainSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainSelectorMixin(value): {
            escalationChainSelector+: value,
          },
          escalationChainSelector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                escalationChainSelector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                escalationChainSelector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                escalationChainSelector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                escalationChainSelector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                escalationChainSelector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    escalationChainSelector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    escalationChainSelector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withMsteams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nMS teams-specific settings for a route.' } },
          withMsteams(value): {
            msteams:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMsteamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nMS teams-specific settings for a route.' } },
          withMsteamsMixin(value): {
            msteams+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          msteams+:
            {
              '#': { help: '', name: 'msteams' },
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Enable notification in MS teams. Defaults to true.\nEnable notification in MS teams. Defaults to `true`.' } },
              withEnabled(value=true): {
                enabled: value,
              },
              '#withId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of this resource.\nMS teams channel id. Alerts will be directed to this channel in Microsoft teams.' } },
              withId(value): {
                id: value,
              },
            },
          '#withSlack': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nSlack-specific settings for a route.' } },
          withSlack(value): {
            slack:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSlackMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nSlack-specific settings for a route.' } },
          withSlackMixin(value): {
            slack+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          slack+:
            {
              '#': { help: '', name: 'slack' },
              '#withChannelId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Slack channel id. Alerts will be directed to this channel in Slack.\nSlack channel id. Alerts will be directed to this channel in Slack.' } },
              withChannelId(value): {
                channelId: value,
              },
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Enable notification in MS teams. Defaults to true.\nEnable notification in Slack. Defaults to `true`.' } },
              withEnabled(value=true): {
                enabled: value,
              },
            },
          '#withTelegram': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTelegram-specific settings for a route.' } },
          withTelegram(value): {
            telegram:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTelegramMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTelegram-specific settings for a route.' } },
          withTelegramMixin(value): {
            telegram+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          telegram+:
            {
              '#': { help: '', name: 'telegram' },
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Enable notification in MS teams. Defaults to true.\nEnable notification in Telegram. Defaults to `true`.' } },
              withEnabled(value=true): {
                enabled: value,
              },
              '#withId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of this resource.\nTelegram channel id. Alerts will be directed to this channel in Telegram.' } },
              withId(value): {
                id: value,
              },
            },
        },
      '#withDynamicLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withDynamicLabels(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dynamicLabels:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDynamicLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withDynamicLabelsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dynamicLabels+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withLabels(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              labels:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withLabelsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              labels+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the service integration.\nThe name of the service integration.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withTeamId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the OnCall team (using the grafana_oncall_team datasource).\nThe ID of the OnCall team (using the `grafana_oncall_team` datasource).' } },
      withTeamId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teamId: value,
            },
          },
        },
      },
      '#withTemplates': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Jinja2 templates for Alert payload. An empty templates block will be ignored. (see below for nested schema)\nJinja2 templates for Alert payload. An empty templates block will be ignored.' } },
      withTemplates(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              templates:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withTemplatesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Jinja2 templates for Alert payload. An empty templates block will be ignored. (see below for nested schema)\nJinja2 templates for Alert payload. An empty templates block will be ignored.' } },
      withTemplatesMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              templates+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      templates+:
        {
          '#': { help: '', name: 'templates' },
          '#withAcknowledgeSignal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for sending a signal to acknowledge the Incident.\nTemplate for sending a signal to acknowledge the Incident.' } },
          withAcknowledgeSignal(value): {
            acknowledgeSignal: value,
          },
          '#withEmail': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Email. (see below for nested schema)\nTemplates for Email.' } },
          withEmail(value): {
            email:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withEmailMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Email. (see below for nested schema)\nTemplates for Email.' } },
          withEmailMixin(value): {
            email+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          email+:
            {
              '#': { help: '', name: 'email' },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withGroupingKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for the key by which alerts are grouped.\nTemplate for the key by which alerts are grouped.' } },
          withGroupingKey(value): {
            groupingKey: value,
          },
          '#withMicrosoftTeams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Microsoft Teams. NOTE: Microsoft Teams templates are only available on Grafana Cloud. (see below for nested schema)\nTemplates for Microsoft Teams. **NOTE**: Microsoft Teams templates are only available on Grafana Cloud.' } },
          withMicrosoftTeams(value): {
            microsoftTeams:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMicrosoftTeamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Microsoft Teams. NOTE: Microsoft Teams templates are only available on Grafana Cloud. (see below for nested schema)\nTemplates for Microsoft Teams. **NOTE**: Microsoft Teams templates are only available on Grafana Cloud.' } },
          withMicrosoftTeamsMixin(value): {
            microsoftTeams+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          microsoftTeams+:
            {
              '#': { help: '', name: 'microsoftTeams' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withMobileApp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Mobile app push notifications. (see below for nested schema)\nTemplates for Mobile app push notifications.' } },
          withMobileApp(value): {
            mobileApp:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMobileAppMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Mobile app push notifications. (see below for nested schema)\nTemplates for Mobile app push notifications.' } },
          withMobileAppMixin(value): {
            mobileApp+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          mobileApp+:
            {
              '#': { help: '', name: 'mobileApp' },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withPhoneCall': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Phone Call. (see below for nested schema)\nTemplates for Phone Call.' } },
          withPhoneCall(value): {
            phoneCall:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPhoneCallMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Phone Call. (see below for nested schema)\nTemplates for Phone Call.' } },
          withPhoneCallMixin(value): {
            phoneCall+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          phoneCall+:
            {
              '#': { help: '', name: 'phoneCall' },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withResolveSignal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for sending a signal to resolve the Incident.\nTemplate for sending a signal to resolve the Incident.' } },
          withResolveSignal(value): {
            resolveSignal: value,
          },
          '#withSlack': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Slack.' } },
          withSlack(value): {
            slack:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSlackMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Slack.' } },
          withSlackMixin(value): {
            slack+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          slack+:
            {
              '#': { help: '', name: 'slack' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withSms': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for SMS. (see below for nested schema)\nTemplates for SMS.' } },
          withSms(value): {
            sms:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSmsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for SMS. (see below for nested schema)\nTemplates for SMS.' } },
          withSmsMixin(value): {
            sms+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          sms+:
            {
              '#': { help: '', name: 'sms' },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withSourceLink': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for a source link.\nTemplate for a source link.' } },
          withSourceLink(value): {
            sourceLink: value,
          },
          '#withTelegram': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Telegram.' } },
          withTelegram(value): {
            telegram:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTelegramMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Telegram.' } },
          withTelegramMixin(value): {
            telegram+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          telegram+:
            {
              '#': { help: '', name: 'telegram' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withWeb': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Web. (see below for nested schema)\nTemplates for Web.' } },
          withWeb(value): {
            web:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withWebMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Web. (see below for nested schema)\nTemplates for Web.' } },
          withWebMixin(value): {
            web+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          web+:
            {
              '#': { help: '', name: 'web' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
        },
      '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of integration. Can be grafana, grafana_alerting, webhook, alertmanager, kapacitor, fabric, newrelic, datadog, pagerduty, pingdom, elastalert, amazon_sns, curler, sentry, formatted_webhook, heartbeat, demo, manual, stackdriver, uptimerobot, sentry_platform, zabbix, prtg, slack_channel, inbound_email, direct_paging, jira, zendesk.\nThe type of integration. Can be grafana, grafana_alerting, webhook, alertmanager, kapacitor, fabric, newrelic, datadog, pagerduty, pingdom, elastalert, amazon_sns, curler, sentry, formatted_webhook, heartbeat, demo, manual, stackdriver, uptimerobot, sentry_platform, zabbix, prtg, slack_channel, inbound_email, direct_paging, jira, zendesk.' } },
      withType(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              type: value,
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
      '#withDefaultRoute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The Default route for all alerts from the given integration (see below for nested schema)\nThe Default route for all alerts from the given integration' } },
      withDefaultRoute(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              defaultRoute:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDefaultRouteMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The Default route for all alerts from the given integration (see below for nested schema)\nThe Default route for all alerts from the given integration' } },
      withDefaultRouteMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              defaultRoute+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      defaultRoute+:
        {
          '#': { help: '', name: 'defaultRoute' },
          '#withEscalationChainId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the escalation chain.\nThe ID of the escalation chain.' } },
          withEscalationChainId(value): {
            escalationChainId: value,
          },
          '#withEscalationChainRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainRef(value): {
            escalationChainRef: value,
          },
          '#withEscalationChainRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Reference to a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainRefMixin(value): {
            escalationChainRef+: value,
          },
          escalationChainRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the referenced object.' } },
              withName(value): {
                escalationChainRef+: {
                  name: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicy(value): {
                escalationChainRef+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for referencing.' } },
              withPolicyMixin(value): {
                escalationChainRef+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    escalationChainRef+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    escalationChainRef+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withEscalationChainSelector': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainSelector(value): {
            escalationChainSelector: value,
          },
          '#withEscalationChainSelectorMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Selector for a EscalationChain in oncall to populate escalationChainId.' } },
          withEscalationChainSelectorMixin(value): {
            escalationChainSelector+: value,
          },
          escalationChainSelector+:
            {
              '#withMatchControllerRef': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'MatchControllerRef ensures an object with the same controller reference\nas the selecting object is selected.' } },
              withMatchControllerRef(value=true): {
                escalationChainSelector+: {
                  matchControllerRef: value,
                },
              },
              '#withMatchLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabels(value): {
                escalationChainSelector+: {
                  matchLabels: value,
                },
              },
              '#withMatchLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'MatchLabels ensures an object with matching labels is selected.' } },
              withMatchLabelsMixin(value): {
                escalationChainSelector+: {
                  matchLabels+: value,
                },
              },
              '#withPolicy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicy(value): {
                escalationChainSelector+: {
                  policy: value,
                },
              },
              '#withPolicyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'Policies for selection.' } },
              withPolicyMixin(value): {
                escalationChainSelector+: {
                  policy+: value,
                },
              },
              policy+:
                {
                  '#withResolution': { 'function': { args: [{ default: 'Required', enums: ['Required', 'Optional'], name: 'value', type: ['string'] }], help: "Resolution specifies whether resolution of this reference is required.\nThe default is 'Required', which means the reconcile will fail if the\nreference cannot be resolved. 'Optional' means this reference will be\na no-op if it cannot be resolved." } },
                  withResolution(value='Required'): {
                    escalationChainSelector+: {
                      policy+: {
                        resolution: value,
                      },
                    },
                  },
                  '#withResolve': { 'function': { args: [{ default: null, enums: ['Always', 'IfNotPresent'], name: 'value', type: ['string'] }], help: "Resolve specifies when this reference should be resolved. The default\nis 'IfNotPresent', which will attempt to resolve the reference only when\nthe corresponding field is not present. Use 'Always' to resolve the\nreference on every reconcile." } },
                  withResolve(value): {
                    escalationChainSelector+: {
                      policy+: {
                        resolve: value,
                      },
                    },
                  },
                },
            },
          '#withMsteams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nMS teams-specific settings for a route.' } },
          withMsteams(value): {
            msteams:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMsteamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nMS teams-specific settings for a route.' } },
          withMsteamsMixin(value): {
            msteams+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          msteams+:
            {
              '#': { help: '', name: 'msteams' },
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Enable notification in MS teams. Defaults to true.\nEnable notification in MS teams. Defaults to `true`.' } },
              withEnabled(value=true): {
                enabled: value,
              },
              '#withId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of this resource.\nMS teams channel id. Alerts will be directed to this channel in Microsoft teams.' } },
              withId(value): {
                id: value,
              },
            },
          '#withSlack': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nSlack-specific settings for a route.' } },
          withSlack(value): {
            slack:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSlackMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nSlack-specific settings for a route.' } },
          withSlackMixin(value): {
            slack+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          slack+:
            {
              '#': { help: '', name: 'slack' },
              '#withChannelId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Slack channel id. Alerts will be directed to this channel in Slack.\nSlack channel id. Alerts will be directed to this channel in Slack.' } },
              withChannelId(value): {
                channelId: value,
              },
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Enable notification in MS teams. Defaults to true.\nEnable notification in Slack. Defaults to `true`.' } },
              withEnabled(value=true): {
                enabled: value,
              },
            },
          '#withTelegram': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTelegram-specific settings for a route.' } },
          withTelegram(value): {
            telegram:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTelegramMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTelegram-specific settings for a route.' } },
          withTelegramMixin(value): {
            telegram+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          telegram+:
            {
              '#': { help: '', name: 'telegram' },
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Enable notification in MS teams. Defaults to true.\nEnable notification in Telegram. Defaults to `true`.' } },
              withEnabled(value=true): {
                enabled: value,
              },
              '#withId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of this resource.\nTelegram channel id. Alerts will be directed to this channel in Telegram.' } },
              withId(value): {
                id: value,
              },
            },
        },
      '#withDynamicLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withDynamicLabels(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dynamicLabels:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDynamicLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for dynamic labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withDynamicLabelsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dynamicLabels+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withLabels(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              labels:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the grafana_oncall_label datasource).\nA list of string-to-string mappings for static labels. Each map must include one key named "key" and one key named "value" (using the `grafana_oncall_label` datasource).' } },
      withLabelsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              labels+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the service integration.\nThe name of the service integration.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withTeamId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the OnCall team (using the grafana_oncall_team datasource).\nThe ID of the OnCall team (using the `grafana_oncall_team` datasource).' } },
      withTeamId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teamId: value,
            },
          },
        },
      },
      '#withTemplates': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Jinja2 templates for Alert payload. An empty templates block will be ignored. (see below for nested schema)\nJinja2 templates for Alert payload. An empty templates block will be ignored.' } },
      withTemplates(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              templates:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withTemplatesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Jinja2 templates for Alert payload. An empty templates block will be ignored. (see below for nested schema)\nJinja2 templates for Alert payload. An empty templates block will be ignored.' } },
      withTemplatesMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              templates+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      templates+:
        {
          '#': { help: '', name: 'templates' },
          '#withAcknowledgeSignal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for sending a signal to acknowledge the Incident.\nTemplate for sending a signal to acknowledge the Incident.' } },
          withAcknowledgeSignal(value): {
            acknowledgeSignal: value,
          },
          '#withEmail': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Email. (see below for nested schema)\nTemplates for Email.' } },
          withEmail(value): {
            email:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withEmailMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Email. (see below for nested schema)\nTemplates for Email.' } },
          withEmailMixin(value): {
            email+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          email+:
            {
              '#': { help: '', name: 'email' },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withGroupingKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for the key by which alerts are grouped.\nTemplate for the key by which alerts are grouped.' } },
          withGroupingKey(value): {
            groupingKey: value,
          },
          '#withMicrosoftTeams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Microsoft Teams. NOTE: Microsoft Teams templates are only available on Grafana Cloud. (see below for nested schema)\nTemplates for Microsoft Teams. **NOTE**: Microsoft Teams templates are only available on Grafana Cloud.' } },
          withMicrosoftTeams(value): {
            microsoftTeams:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMicrosoftTeamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Microsoft Teams. NOTE: Microsoft Teams templates are only available on Grafana Cloud. (see below for nested schema)\nTemplates for Microsoft Teams. **NOTE**: Microsoft Teams templates are only available on Grafana Cloud.' } },
          withMicrosoftTeamsMixin(value): {
            microsoftTeams+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          microsoftTeams+:
            {
              '#': { help: '', name: 'microsoftTeams' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withMobileApp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Mobile app push notifications. (see below for nested schema)\nTemplates for Mobile app push notifications.' } },
          withMobileApp(value): {
            mobileApp:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMobileAppMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Mobile app push notifications. (see below for nested schema)\nTemplates for Mobile app push notifications.' } },
          withMobileAppMixin(value): {
            mobileApp+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          mobileApp+:
            {
              '#': { help: '', name: 'mobileApp' },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withPhoneCall': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Phone Call. (see below for nested schema)\nTemplates for Phone Call.' } },
          withPhoneCall(value): {
            phoneCall:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPhoneCallMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Phone Call. (see below for nested schema)\nTemplates for Phone Call.' } },
          withPhoneCallMixin(value): {
            phoneCall+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          phoneCall+:
            {
              '#': { help: '', name: 'phoneCall' },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withResolveSignal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for sending a signal to resolve the Incident.\nTemplate for sending a signal to resolve the Incident.' } },
          withResolveSignal(value): {
            resolveSignal: value,
          },
          '#withSlack': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Slack.' } },
          withSlack(value): {
            slack:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSlackMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Slack.' } },
          withSlackMixin(value): {
            slack+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          slack+:
            {
              '#': { help: '', name: 'slack' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withSms': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for SMS. (see below for nested schema)\nTemplates for SMS.' } },
          withSms(value): {
            sms:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withSmsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for SMS. (see below for nested schema)\nTemplates for SMS.' } },
          withSmsMixin(value): {
            sms+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          sms+:
            {
              '#': { help: '', name: 'sms' },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withSourceLink': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for a source link.\nTemplate for a source link.' } },
          withSourceLink(value): {
            sourceLink: value,
          },
          '#withTelegram': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Telegram.' } },
          withTelegram(value): {
            telegram:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTelegramMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'specific settings for a route. (see below for nested schema)\nTemplates for Telegram.' } },
          withTelegramMixin(value): {
            telegram+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          telegram+:
            {
              '#': { help: '', name: 'telegram' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
          '#withWeb': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Web. (see below for nested schema)\nTemplates for Web.' } },
          withWeb(value): {
            web:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withWebMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Max: 1) Templates for Web. (see below for nested schema)\nTemplates for Web.' } },
          withWebMixin(value): {
            web+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          web+:
            {
              '#': { help: '', name: 'web' },
              '#withImageUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert image url.\nTemplate for Alert image url.' } },
              withImageUrl(value): {
                imageUrl: value,
              },
              '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert message.\nTemplate for Alert message.' } },
              withMessage(value): {
                message: value,
              },
              '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Template for Alert title.\nTemplate for Alert title.' } },
              withTitle(value): {
                title: value,
              },
            },
        },
      '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of integration. Can be grafana, grafana_alerting, webhook, alertmanager, kapacitor, fabric, newrelic, datadog, pagerduty, pingdom, elastalert, amazon_sns, curler, sentry, formatted_webhook, heartbeat, demo, manual, stackdriver, uptimerobot, sentry_platform, zabbix, prtg, slack_channel, inbound_email, direct_paging, jira, zendesk.\nThe type of integration. Can be grafana, grafana_alerting, webhook, alertmanager, kapacitor, fabric, newrelic, datadog, pagerduty, pingdom, elastalert, amazon_sns, curler, sentry, formatted_webhook, heartbeat, demo, manual, stackdriver, uptimerobot, sentry_platform, zabbix, prtg, slack_channel, inbound_email, direct_paging, jira, zendesk.' } },
      withType(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              type: value,
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
