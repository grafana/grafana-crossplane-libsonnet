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
      '#withAlertmanager': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to other Alertmanager instances. (see below for nested schema)\nA contact point that sends notifications to other Alertmanager instances.' } },
      withAlertmanager(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              alertmanager:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAlertmanagerMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to other Alertmanager instances. (see below for nested schema)\nA contact point that sends notifications to other Alertmanager instances.' } },
      withAlertmanagerMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              alertmanager+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      alertmanager+:
        {
          '#': { help: '', name: 'alertmanager' },
          '#withBasicAuthPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe password component of the basic auth credentials to use.' } },
          withBasicAuthPasswordSecretRef(value): {
            basicAuthPasswordSecretRef: value,
          },
          '#withBasicAuthPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe password component of the basic auth credentials to use.' } },
          withBasicAuthPasswordSecretRefMixin(value): {
            basicAuthPasswordSecretRef+: value,
          },
          basicAuthPasswordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                basicAuthPasswordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                basicAuthPasswordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                basicAuthPasswordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withBasicAuthUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The username component of the basic auth credentials to use.\nThe username component of the basic auth credentials to use.' } },
          withBasicAuthUser(value): {
            basicAuthUser: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL of the Alertmanager instance.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withDingding': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to DingDing. (see below for nested schema)\nA contact point that sends notifications to DingDing.' } },
      withDingding(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dingding:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDingdingMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to DingDing. (see below for nested schema)\nA contact point that sends notifications to DingDing.' } },
      withDingdingMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              dingding+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      dingding+:
        {
          '#': { help: '', name: 'dingding' },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withMessageType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "either 'link' or 'actionCard'\nThe format of message to send - either 'link' or 'actionCard'" } },
          withMessageType(value): {
            messageType: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe DingDing webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe DingDing webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
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
      '#withDiscord': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications as Discord messages (see below for nested schema)\nA contact point that sends notifications as Discord messages' } },
      withDiscord(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              discord:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDiscordMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications as Discord messages (see below for nested schema)\nA contact point that sends notifications as Discord messages' } },
      withDiscordMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              discord+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      discord+:
        {
          '#': { help: '', name: 'discord' },
          '#withAvatarUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of a custom avatar image to use. Defaults to “.\nThe URL of a custom avatar image to use. Defaults to “.' } },
          withAvatarUrl(value): {
            avatarUrl: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message. Defaults to “.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated content of the title.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe discord webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe discord webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUseDiscordUsername': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to use the bot account's plain username instead of \"Grafana.\" Defaults to false.\nWhether to use the bot account's plain username instead of \"Grafana.\" Defaults to `false`." } },
          withUseDiscordUsername(value=true): {
            useDiscordUsername: value,
          },
        },
      '#withEmail': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an email address. (see below for nested schema)\nA contact point that sends notifications to an email address.' } },
      withEmail(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              email:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withEmailMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an email address. (see below for nested schema)\nA contact point that sends notifications to an email address.' } },
      withEmailMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              email+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      email+:
        {
          '#': { help: '', name: 'email' },
          '#withAddresses': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The addresses to send emails to.\nThe addresses to send emails to.' } },
          withAddresses(value): {
            addresses:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withAddressesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The addresses to send emails to.\nThe addresses to send emails to.' } },
          withAddressesMixin(value): {
            addresses+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the email. Defaults to “.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSingleEmail': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to send a single email CC'ing all addresses, rather than a separate email to each address. Defaults to false.\nWhether to send a single email CC'ing all addresses, rather than a separate email to each address. Defaults to `false`." } },
          withSingleEmail(value=true): {
            singleEmail: value,
          },
          '#withSubject': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated subject line of the email. Defaults to “.\nThe templated subject line of the email. Defaults to “.' } },
          withSubject(value): {
            subject: value,
          },
        },
      '#withGooglechat': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Google Chat. (see below for nested schema)\nA contact point that sends notifications to Google Chat.' } },
      withGooglechat(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              googlechat:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withGooglechatMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Google Chat. (see below for nested schema)\nA contact point that sends notifications to Google Chat.' } },
      withGooglechatMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              googlechat+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      googlechat+:
        {
          '#': { help: '', name: 'googlechat' },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated content of the title.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe Google Chat webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe Google Chat webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withKafka': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that publishes notifications to Apache Kafka topics. (see below for nested schema)\nA contact point that publishes notifications to Apache Kafka topics.' } },
      withKafka(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              kafka:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withKafkaMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that publishes notifications to Apache Kafka topics. (see below for nested schema)\nA contact point that publishes notifications to Apache Kafka topics.' } },
      withKafkaMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              kafka+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      kafka+:
        {
          '#': { help: '', name: 'kafka' },
          '#withApiVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The API version to use when contacting the Kafka REST Server. Supported: v2 (default) and v3. Defaults to v2.\nThe API version to use when contacting the Kafka REST Server. Supported: v2 (default) and v3. Defaults to `v2`.' } },
          withApiVersion(value): {
            apiVersion: value,
          },
          '#withClusterId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The Id of cluster to use when contacting the Kafka REST Server. Required api_version to be 'v3'\nThe Id of cluster to use when contacting the Kafka REST Server. Required api_version to be 'v3'" } },
          withClusterId(value): {
            clusterId: value,
          },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nThe templated description of the Kafka message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDetails': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated details to include with the message.\nThe templated details to include with the message.' } },
          withDetails(value): {
            details: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password to use when making a call to the Kafka REST Proxy\nThe password to use when making a call to the Kafka REST Proxy' } },
          withPasswordSecretRef(value): {
            passwordSecretRef: value,
          },
          '#withPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password to use when making a call to the Kafka REST Proxy\nThe password to use when making a call to the Kafka REST Proxy' } },
          withPasswordSecretRefMixin(value): {
            passwordSecretRef+: value,
          },
          passwordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                passwordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                passwordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                passwordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withRestProxyUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The URL of the Kafka REST proxy to send requests to.\nThe URL of the Kafka REST proxy to send requests to.' } },
          withRestProxyUrlSecretRef(value): {
            restProxyUrlSecretRef: value,
          },
          '#withRestProxyUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The URL of the Kafka REST proxy to send requests to.\nThe URL of the Kafka REST proxy to send requests to.' } },
          withRestProxyUrlSecretRefMixin(value): {
            restProxyUrlSecretRef+: value,
          },
          restProxyUrlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                restProxyUrlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                restProxyUrlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                restProxyUrlSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTopic': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Kafka topic to publish to.\nThe name of the Kafka topic to publish to.' } },
          withTopic(value): {
            topic: value,
          },
          '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user name to use when making a call to the Kafka REST Proxy\nThe user name to use when making a call to the Kafka REST Proxy' } },
          withUsername(value): {
            username: value,
          },
        },
      '#withLine': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to LINE.me. (see below for nested schema)\nA contact point that sends notifications to LINE.me.' } },
      withLine(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              line:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLineMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to LINE.me. (see below for nested schema)\nA contact point that sends notifications to LINE.me.' } },
      withLineMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              line+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      line+:
        {
          '#': { help: '', name: 'line' },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nThe templated description of the message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the contact point.\nThe name of the contact point.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withOncall': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Call. (see below for nested schema)\nA contact point that sends notifications to Grafana On-Call.' } },
      withOncall(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              oncall:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withOncallMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Call. (see below for nested schema)\nA contact point that sends notifications to Grafana On-Call.' } },
      withOncallMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              oncall+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      oncall+:
        {
          '#': { help: '', name: 'oncall' },
          '#withAuthorizationCredentialsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRef(value): {
            authorizationCredentialsSecretRef: value,
          },
          '#withAuthorizationCredentialsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRefMixin(value): {
            authorizationCredentialsSecretRef+: value,
          },
          authorizationCredentialsSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                authorizationCredentialsSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                authorizationCredentialsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                authorizationCredentialsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAuthorizationScheme': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'attaches an auth header with this name. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this name. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationScheme(value): {
            authorizationScheme: value,
          },
          '#withBasicAuthPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRef(value): {
            basicAuthPasswordSecretRef: value,
          },
          '#withBasicAuthPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRefMixin(value): {
            basicAuthPasswordSecretRef+: value,
          },
          basicAuthPasswordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                basicAuthPasswordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                basicAuthPasswordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                basicAuthPasswordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withBasicAuthUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The username component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthUser(value): {
            basicAuthUser: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withHttpMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The HTTP method to use in the request. Defaults to POST.\nThe HTTP method to use in the request. Defaults to `POST`.' } },
          withHttpMethod(value): {
            httpMethod: value,
          },
          '#withMaxAlerts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.\nThe maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.' } },
          withMaxAlerts(value): {
            maxAlerts: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nCustom message. You can use template variables.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL to send webhook requests to.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withOpsgenie': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to OpsGenie. (see below for nested schema)\nA contact point that sends notifications to OpsGenie.' } },
      withOpsgenie(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              opsgenie:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withOpsgenieMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to OpsGenie. (see below for nested schema)\nA contact point that sends notifications to OpsGenie.' } },
      withOpsgenieMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              opsgenie+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      opsgenie+:
        {
          '#': { help: '', name: 'opsgenie' },
          '#withApiKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe OpsGenie API key to use.' } },
          withApiKeySecretRef(value): {
            apiKeySecretRef: value,
          },
          '#withApiKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe OpsGenie API key to use.' } },
          withApiKeySecretRefMixin(value): {
            apiKeySecretRef+: value,
          },
          apiKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAutoClose': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'close alerts in OpsGenie when they resolve in the Alertmanager.\nWhether to auto-close alerts in OpsGenie when they resolve in the Alertmanager.' } },
          withAutoClose(value=true): {
            autoClose: value,
          },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nA templated high-level description to use for the alert.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withOverridePriority': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow the alert priority to be configured via the value of the og_priority annotation on the alert.\nWhether to allow the alert priority to be configured via the value of the `og_priority` annotation on the alert.' } },
          withOverridePriority(value=true): {
            overridePriority: value,
          },
          '#withResponders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+. (see below for nested schema)\nTeams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+.' } },
          withResponders(value): {
            responders:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withRespondersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+. (see below for nested schema)\nTeams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+.' } },
          withRespondersMixin(value): {
            responders+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          responders+:
            {
              '#': { help: '', name: 'responders' },
              '#withId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of this resource.\nID of the responder. Must be specified if name and username are empty.' } },
              withId(value): {
                id: value,
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the contact point.\nName of the responder. Must be specified if username and id are empty.' } },
              withName(value): {
                name: value,
              },
              '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Type of the responder. Supported: team, teams, user, escalation, schedule or a template that is expanded to one of these values.\nType of the responder. Supported: team, teams, user, escalation, schedule or a template that is expanded to one of these values.' } },
              withType(value): {
                type: value,
              },
              '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user name to use when making a call to the Kafka REST Proxy\nUser name of the responder. Must be specified if name and id are empty.' } },
              withUsername(value): {
                username: value,
              },
            },
          '#withSendTagsAs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Whether to send annotations to OpsGenie as Tags, Details, or both. Supported values are tags, details, both, or empty to use the default behavior of Tags.\nWhether to send annotations to OpsGenie as Tags, Details, or both. Supported values are `tags`, `details`, `both`, or empty to use the default behavior of Tags.' } },
          withSendTagsAs(value): {
            sendTagsAs: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nAllows customization of the OpsGenie API URL.' } },
          withUrl(value): {
            url: value,
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
      '#withPagerduty': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to PagerDuty. (see below for nested schema)\nA contact point that sends notifications to PagerDuty.' } },
      withPagerduty(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              pagerduty:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withPagerdutyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to PagerDuty. (see below for nested schema)\nA contact point that sends notifications to PagerDuty.' } },
      withPagerdutyMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              pagerduty+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      pagerduty+:
        {
          '#': { help: '', name: 'pagerduty' },
          '#withClass': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The class or type of event, for example ping failure.\nThe class or type of event, for example `ping failure`.' } },
          withClass(value): {
            class: value,
          },
          '#withClient': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the monitoring client that is triggering this event.\nThe name of the monitoring client that is triggering this event.' } },
          withClient(value): {
            client: value,
          },
          '#withClientUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the monitoring client that is triggering this event.\nThe URL of the monitoring client that is triggering this event.' } },
          withClientUrl(value): {
            clientUrl: value,
          },
          '#withComponent': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The component being affected by the event.\nThe component being affected by the event.' } },
          withComponent(value): {
            component: value,
          },
          '#withDetails': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The templated details to include with the message.\nA set of arbitrary key/value pairs that provide further detail about the incident.' } },
          withDetails(value): {
            details: value,
          },
          '#withDetailsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The templated details to include with the message.\nA set of arbitrary key/value pairs that provide further detail about the incident.' } },
          withDetailsMixin(value): {
            details+: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withGroup': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The group to which the provided component belongs to.\nThe group to which the provided component belongs to.' } },
          withGroup(value): {
            group: value,
          },
          '#withIntegrationKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The PagerDuty API key.\nThe PagerDuty API key.' } },
          withIntegrationKeySecretRef(value): {
            integrationKeySecretRef: value,
          },
          '#withIntegrationKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The PagerDuty API key.\nThe PagerDuty API key.' } },
          withIntegrationKeySecretRefMixin(value): {
            integrationKeySecretRef+: value,
          },
          integrationKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                integrationKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                integrationKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                integrationKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSeverity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The PagerDuty event severity level. Default is critical.\nThe PagerDuty event severity level. Default is `critical`.' } },
          withSeverity(value): {
            severity: value,
          },
          '#withSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique location of the affected system.\nThe unique location of the affected system.' } },
          withSource(value): {
            source: value,
          },
          '#withSummary': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated summary message of the event.\nThe templated summary message of the event.' } },
          withSummary(value): {
            summary: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL to send API requests to' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withPushover': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Pushover. (see below for nested schema)\nA contact point that sends notifications to Pushover.' } },
      withPushover(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              pushover:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withPushoverMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Pushover. (see below for nested schema)\nA contact point that sends notifications to Pushover.' } },
      withPushoverMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              pushover+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      pushover+:
        {
          '#': { help: '', name: 'pushover' },
          '#withApiTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover API token.\nThe Pushover API token.' } },
          withApiTokenSecretRef(value): {
            apiTokenSecretRef: value,
          },
          '#withApiTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover API token.\nThe Pushover API token.' } },
          withApiTokenSecretRefMixin(value): {
            apiTokenSecretRef+: value,
          },
          apiTokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiTokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiTokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiTokenSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withDevice': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of devices to which the event is associated.\nComma-separated list of devices to which the event is associated.' } },
          withDevice(value): {
            device: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withExpire': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) How many seconds for which the notification will continue to be retried by Pushover.\nHow many seconds for which the notification will continue to be retried by Pushover.' } },
          withExpire(value): {
            expire: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated notification message content.' } },
          withMessage(value): {
            message: value,
          },
          '#withOkPriority': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The priority level of the resolved event.\nThe priority level of the resolved event.' } },
          withOkPriority(value): {
            okPriority: value,
          },
          '#withOkSound': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The sound associated with the resolved notification.\nThe sound associated with the resolved notification.' } },
          withOkSound(value): {
            okSound: value,
          },
          '#withPriority': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The priority level of the event.\nThe priority level of the event.' } },
          withPriority(value): {
            priority: value,
          },
          '#withRetry': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) How often, in seconds, the Pushover servers will send the same notification to the user.\nHow often, in seconds, the Pushover servers will send the same notification to the user.' } },
          withRetry(value): {
            retry: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSound': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The sound associated with the notification.\nThe sound associated with the notification.' } },
          withSound(value): {
            sound: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUploadImage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to send images in the notification or not. Default is true. Requires Grafana to be configured to send images in notifications.\nWhether to send images in the notification or not. Default is true. Requires Grafana to be configured to send images in notifications.' } },
          withUploadImage(value=true): {
            uploadImage: value,
          },
          '#withUserKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover user key.\nThe Pushover user key.' } },
          withUserKeySecretRef(value): {
            userKeySecretRef: value,
          },
          '#withUserKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover user key.\nThe Pushover user key.' } },
          withUserKeySecretRefMixin(value): {
            userKeySecretRef+: value,
          },
          userKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                userKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                userKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                userKeySecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withSensugo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to SensuGo. (see below for nested schema)\nA contact point that sends notifications to SensuGo.' } },
      withSensugo(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              sensugo:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSensugoMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to SensuGo. (see below for nested schema)\nA contact point that sends notifications to SensuGo.' } },
      withSensugoMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              sensugo+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      sensugo+:
        {
          '#': { help: '', name: 'sensugo' },
          '#withApiKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe SensuGo API key.' } },
          withApiKeySecretRef(value): {
            apiKeySecretRef: value,
          },
          '#withApiKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe SensuGo API key.' } },
          withApiKeySecretRefMixin(value): {
            apiKeySecretRef+: value,
          },
          apiKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withCheck': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The SensuGo check to which the event should be routed.\nThe SensuGo check to which the event should be routed.' } },
          withCheck(value): {
            check: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withEntity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The entity being monitored.\nThe entity being monitored.' } },
          withEntity(value): {
            entity: value,
          },
          '#withHandler': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A custom handler to execute in addition to the check.\nA custom handler to execute in addition to the check.' } },
          withHandler(value): {
            handler: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nTemplated message content describing the alert.' } },
          withMessage(value): {
            message: value,
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The namespace in which the check resides.\nThe namespace in which the check resides.' } },
          withNamespace(value): {
            namespace: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe SensuGo URL to send requests to.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withSlack': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Slack. (see below for nested schema)\nA contact point that sends notifications to Slack.' } },
      withSlack(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              slack:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSlackMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Slack. (see below for nested schema)\nA contact point that sends notifications to Slack.' } },
      withSlackMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              slack+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      slack+:
        {
          '#': { help: '', name: 'slack' },
          '#withColor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Templated color of the slack message.\nTemplated color of the slack message.' } },
          withColor(value): {
            color: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withEndpointUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Use this to override the Slack API endpoint URL to send requests to.\nUse this to override the Slack API endpoint URL to send requests to.' } },
          withEndpointUrl(value): {
            endpointUrl: value,
          },
          '#withIconEmoji': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of a Slack workspace emoji to use as the bot icon.\nThe name of a Slack workspace emoji to use as the bot icon.' } },
          withIconEmoji(value): {
            iconEmoji: value,
          },
          '#withIconUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A URL of an image to use as the bot icon.\nA URL of an image to use as the bot icon.' } },
          withIconUrl(value): {
            iconUrl: value,
          },
          '#withMentionChannel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Describes how to ping the slack channel that messages are being sent to. Options are here for an @here ping, channel for @channel, or empty for no ping.\nDescribes how to ping the slack channel that messages are being sent to. Options are `here` for an @here ping, `channel` for @channel, or empty for no ping.' } },
          withMentionChannel(value): {
            mentionChannel: value,
          },
          '#withMentionGroups': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of groups to mention in the message.\nComma-separated list of groups to mention in the message.' } },
          withMentionGroups(value): {
            mentionGroups: value,
          },
          '#withMentionUsers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of users to mention in the message.\nComma-separated list of users to mention in the message.' } },
          withMentionUsers(value): {
            mentionUsers: value,
          },
          '#withRecipient': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Channel, private group, or IM channel (can be an encoded ID or a name) to send messages to.\nChannel, private group, or IM channel (can be an encoded ID or a name) to send messages to.' } },
          withRecipient(value): {
            recipient: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withText': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Templated content of the message.\nTemplated content of the message.' } },
          withText(value): {
            text: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nA Slack API token,for sending messages directly without the webhook method.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nA Slack API token,for sending messages directly without the webhook method.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Slack webhook URL,for sending messages via the webhook method.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Slack webhook URL,for sending messages via the webhook method.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user name to use when making a call to the Kafka REST Proxy\nUsername for the bot to use.' } },
          withUsername(value): {
            username: value,
          },
        },
      '#withSns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana. (see below for nested schema)\nA contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana.' } },
      withSns(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              sns:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana. (see below for nested schema)\nA contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana.' } },
      withSnsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              sns+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      sns+:
        {
          '#': { help: '', name: 'sns' },
          '#withAccessKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS access key ID used to authenticate with Amazon SNS.\nAWS access key ID used to authenticate with Amazon SNS.' } },
          withAccessKeySecretRef(value): {
            accessKeySecretRef: value,
          },
          '#withAccessKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS access key ID used to authenticate with Amazon SNS.\nAWS access key ID used to authenticate with Amazon SNS.' } },
          withAccessKeySecretRefMixin(value): {
            accessKeySecretRef+: value,
          },
          accessKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                accessKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                accessKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                accessKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAssumeRoleArn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Amazon Resource Name (ARN) of the role to assume to send notifications to Amazon SNS.\nThe Amazon Resource Name (ARN) of the role to assume to send notifications to Amazon SNS.' } },
          withAssumeRoleArn(value): {
            assumeRoleArn: value,
          },
          '#withAuthProvider': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The authentication provider to use. Valid values are default, arn and keys. Default is default. Defaults to default.\nThe authentication provider to use. Valid values are `default`, `arn` and `keys`. Default is `default`. Defaults to `default`.' } },
          withAuthProvider(value): {
            authProvider: value,
          },
          '#withBody': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
          withBody(value): {
            body: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withExternalId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The external ID to use when assuming the role.\nThe external ID to use when assuming the role.' } },
          withExternalId(value): {
            externalId: value,
          },
          '#withMessageFormat': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The format of the message to send. Valid values are text, body and json. Default is text. Defaults to text.\nThe format of the message to send. Valid values are `text`, `body` and `json`. Default is `text`. Defaults to `text`.' } },
          withMessageFormat(value): {
            messageFormat: value,
          },
          '#withSecretKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS secret access key used to authenticate with Amazon SNS.\nAWS secret access key used to authenticate with Amazon SNS.' } },
          withSecretKeySecretRef(value): {
            secretKeySecretRef: value,
          },
          '#withSecretKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS secret access key used to authenticate with Amazon SNS.\nAWS secret access key used to authenticate with Amazon SNS.' } },
          withSecretKeySecretRefMixin(value): {
            secretKeySecretRef+: value,
          },
          secretKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                secretKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                secretKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                secretKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSubject': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated subject line of the email. Defaults to “.' } },
          withSubject(value): {
            subject: value,
          },
          '#withTopic': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Kafka topic to publish to.\nThe Amazon SNS topic to send notifications to.' } },
          withTopic(value): {
            topic: value,
          },
        },
      '#withTeams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Microsoft Teams. (see below for nested schema)\nA contact point that sends notifications to Microsoft Teams.' } },
      withTeams(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teams:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withTeamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Microsoft Teams. (see below for nested schema)\nA contact point that sends notifications to Microsoft Teams.' } },
      withTeamsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              teams+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      teams+:
        {
          '#': { help: '', name: 'teams' },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated message content to send.' } },
          withMessage(value): {
            message: value,
          },
          '#withSectionTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated subtitle for each message section.\nThe templated subtitle for each message section.' } },
          withSectionTitle(value): {
            sectionTitle: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Teams webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Teams webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withTelegram': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Telegram. (see below for nested schema)\nA contact point that sends notifications to Telegram.' } },
      withTelegram(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              telegram:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withTelegramMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Telegram. (see below for nested schema)\nA contact point that sends notifications to Telegram.' } },
      withTelegramMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              telegram+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      telegram+:
        {
          '#': { help: '', name: 'telegram' },
          '#withChatId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The chat ID to send messages to.\nThe chat ID to send messages to.' } },
          withChatId(value): {
            chatId: value,
          },
          '#withDisableNotifications': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When set users will receive a notification with no sound.\nWhen set users will receive a notification with no sound.' } },
          withDisableNotifications(value=true): {
            disableNotifications: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withDisableWebPagePreview': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When set it disables link previews for links in the message.\nWhen set it disables link previews for links in the message.' } },
          withDisableWebPagePreview(value=true): {
            disableWebPagePreview: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withMessageThreadId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the message thread to send the message to.\nThe ID of the message thread to send the message to.' } },
          withMessageThreadId(value): {
            messageThreadId: value,
          },
          '#withParseMode': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Mode for parsing entities in the message text. Supported: None, Markdown, MarkdownV2, and HTML. HTML is the default.\nMode for parsing entities in the message text. Supported: None, Markdown, MarkdownV2, and HTML. HTML is the default.' } },
          withParseMode(value): {
            parseMode: value,
          },
          '#withProtectContent': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When set it protects the contents of the message from forwarding and saving.\nWhen set it protects the contents of the message from forwarding and saving.' } },
          withProtectContent(value=true): {
            protectContent: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe Telegram bot token.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe Telegram bot token.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withThreema': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Threema. (see below for nested schema)\nA contact point that sends notifications to Threema.' } },
      withThreema(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              threema:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withThreemaMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Threema. (see below for nested schema)\nA contact point that sends notifications to Threema.' } },
      withThreemaMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              threema+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      threema+:
        {
          '#': { help: '', name: 'threema' },
          '#withApiSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Threema API key.\nThe Threema API key.' } },
          withApiSecretSecretRef(value): {
            apiSecretSecretRef: value,
          },
          '#withApiSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Threema API key.\nThe Threema API key.' } },
          withApiSecretSecretRefMixin(value): {
            apiSecretSecretRef+: value,
          },
          apiSecretSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiSecretSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiSecretSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiSecretSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nThe templated description of the message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withGatewayId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Threema gateway ID.\nThe Threema gateway ID.' } },
          withGatewayId(value): {
            gatewayId: value,
          },
          '#withRecipientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the recipient of the message.\nThe ID of the recipient of the message.' } },
          withRecipientId(value): {
            recipientId: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
        },
      '#withVictorops': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to VictorOps (now known as Splunk OnCall). (see below for nested schema)\nA contact point that sends notifications to VictorOps (now known as Splunk OnCall).' } },
      withVictorops(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              victorops:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withVictoropsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to VictorOps (now known as Splunk OnCall). (see below for nested schema)\nA contact point that sends notifications to VictorOps (now known as Splunk OnCall).' } },
      withVictoropsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              victorops+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      victorops+:
        {
          '#': { help: '', name: 'victorops' },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nTemplated description of the message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessageType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "either 'link' or 'actionCard'\nThe VictorOps alert state - typically either `CRITICAL` or `RECOVERY`." } },
          withMessageType(value): {
            messageType: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title to display.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe VictorOps webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe VictorOps webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withWebex': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Cisco Webex. (see below for nested schema)\nA contact point that sends notifications to Cisco Webex.' } },
      withWebex(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              webex:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withWebexMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Cisco Webex. (see below for nested schema)\nA contact point that sends notifications to Cisco Webex.' } },
      withWebexMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              webex+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      webex+:
        {
          '#': { help: '', name: 'webex' },
          '#withApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL to send webhook requests to.\nThe URL to send webhook requests to.' } },
          withApiUrl(value): {
            apiUrl: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated title of the message to send.' } },
          withMessage(value): {
            message: value,
          },
          '#withRoomId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) ID of the Webex Teams room where to send the messages.\nID of the Webex Teams room where to send the messages.' } },
          withRoomId(value): {
            roomId: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withWebhook': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config (see below for nested schema)\nA contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config' } },
      withWebhook(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              webhook:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withWebhookMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config (see below for nested schema)\nA contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config' } },
      withWebhookMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              webhook+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      webhook+:
        {
          '#': { help: '', name: 'webhook' },
          '#withAuthorizationCredentialsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRef(value): {
            authorizationCredentialsSecretRef: value,
          },
          '#withAuthorizationCredentialsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRefMixin(value): {
            authorizationCredentialsSecretRef+: value,
          },
          authorizationCredentialsSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                authorizationCredentialsSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                authorizationCredentialsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                authorizationCredentialsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAuthorizationScheme': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'attaches an auth header with this name. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this name. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationScheme(value): {
            authorizationScheme: value,
          },
          '#withBasicAuthPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRef(value): {
            basicAuthPasswordSecretRef: value,
          },
          '#withBasicAuthPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRefMixin(value): {
            basicAuthPasswordSecretRef+: value,
          },
          basicAuthPasswordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                basicAuthPasswordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                basicAuthPasswordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                basicAuthPasswordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withBasicAuthUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The username component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthUser(value): {
            basicAuthUser: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom headers to attach to the request.\nCustom headers to attach to the request.' } },
          withHeaders(value): {
            headers: value,
          },
          '#withHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom headers to attach to the request.\nCustom headers to attach to the request.' } },
          withHeadersMixin(value): {
            headers+: value,
          },
          '#withHmacConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) HMAC signature configuration options. (see below for nested schema)\nHMAC signature configuration options.' } },
          withHmacConfig(value): {
            hmacConfig:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withHmacConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) HMAC signature configuration options. (see below for nested schema)\nHMAC signature configuration options.' } },
          withHmacConfigMixin(value): {
            hmacConfig+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          hmacConfig+:
            {
              '#': { help: '', name: 'hmacConfig' },
              '#withHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Grafana-Alerting-Signature.\nThe header in which the HMAC signature will be included. Defaults to `X-Grafana-Alerting-Signature`.' } },
              withHeader(value): {
                header: value,
              },
              '#withSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key used to generate the HMAC signature.' } },
              withSecretSecretRef(value): {
                secretSecretRef: value,
              },
              '#withSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key used to generate the HMAC signature.' } },
              withSecretSecretRefMixin(value): {
                secretSecretRef+: value,
              },
              secretSecretRef+:
                {
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                  withKey(value): {
                    secretSecretRef+: {
                      key: value,
                    },
                  },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                  withName(value): {
                    secretSecretRef+: {
                      name: value,
                    },
                  },
                  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                  withNamespace(value): {
                    secretSecretRef+: {
                      namespace: value,
                    },
                  },
                },
              '#withTimestampHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) If set, the timestamp will be included in the HMAC signature. The value should be the name of the header to use.\nIf set, the timestamp will be included in the HMAC signature. The value should be the name of the header to use.' } },
              withTimestampHeader(value): {
                timestampHeader: value,
              },
            },
          '#withHttpConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Common HTTP client options. (see below for nested schema)\nCommon HTTP client options.' } },
          withHttpConfig(value): {
            httpConfig:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withHttpConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Common HTTP client options. (see below for nested schema)\nCommon HTTP client options.' } },
          withHttpConfigMixin(value): {
            httpConfig+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          httpConfig+:
            {
              '#': { help: '', name: 'httpConfig' },
              '#withOauth2': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) OAuth2 configuration options. (see below for nested schema)\nOAuth2 configuration options.' } },
              withOauth2(value): {
                oauth2:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withOauth2Mixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) OAuth2 configuration options. (see below for nested schema)\nOAuth2 configuration options.' } },
              withOauth2Mixin(value): {
                oauth2+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              oauth2+:
                {
                  '#': { help: '', name: 'oauth2' },
                  '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client ID to use when authenticating.\nClient ID to use when authenticating.' } },
                  withClientId(value): {
                    clientId: value,
                  },
                  '#withClientSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client secret to use when authenticating.\nClient secret to use when authenticating.' } },
                  withClientSecretSecretRef(value): {
                    clientSecretSecretRef: value,
                  },
                  '#withClientSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client secret to use when authenticating.\nClient secret to use when authenticating.' } },
                  withClientSecretSecretRefMixin(value): {
                    clientSecretSecretRef+: value,
                  },
                  clientSecretSecretRef+:
                    {
                      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                      withKey(value): {
                        clientSecretSecretRef+: {
                          key: value,
                        },
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                      withName(value): {
                        clientSecretSecretRef+: {
                          name: value,
                        },
                      },
                      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                      withNamespace(value): {
                        clientSecretSecretRef+: {
                          namespace: value,
                        },
                      },
                    },
                  '#withEndpointParams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional parameters to append to the access token request.\nOptional parameters to append to the access token request.' } },
                  withEndpointParams(value): {
                    endpointParams: value,
                  },
                  '#withEndpointParamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional parameters to append to the access token request.\nOptional parameters to append to the access token request.' } },
                  withEndpointParamsMixin(value): {
                    endpointParams+: value,
                  },
                  '#withProxyConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Optional proxy configuration for OAuth2 requests. (see below for nested schema)\nOptional proxy configuration for OAuth2 requests.' } },
                  withProxyConfig(value): {
                    proxyConfig:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withProxyConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Optional proxy configuration for OAuth2 requests. (see below for nested schema)\nOptional proxy configuration for OAuth2 requests.' } },
                  withProxyConfigMixin(value): {
                    proxyConfig+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  proxyConfig+:
                    {
                      '#': { help: '', name: 'proxyConfig' },
                      '#withNoProxy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of addresses that should not use a proxy.\nComma-separated list of addresses that should not use a proxy.' } },
                      withNoProxy(value): {
                        noProxy: value,
                      },
                      '#withProxyConnectHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional headers to send to proxies during CONNECT requests.\nOptional headers to send to proxies during CONNECT requests.' } },
                      withProxyConnectHeader(value): {
                        proxyConnectHeader: value,
                      },
                      '#withProxyConnectHeaderMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional headers to send to proxies during CONNECT requests.\nOptional headers to send to proxies during CONNECT requests.' } },
                      withProxyConnectHeaderMixin(value): {
                        proxyConnectHeader+: value,
                      },
                      '#withProxyFromEnvironment': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Use environment HTTP_PROXY, HTTPS_PROXY and NO_PROXY to determine proxies. Defaults to false.\nUse environment HTTP_PROXY, HTTPS_PROXY and NO_PROXY to determine proxies. Defaults to `false`.' } },
                      withProxyFromEnvironment(value=true): {
                        proxyFromEnvironment: value,
                      },
                      '#withProxyUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) HTTP proxy server to use to connect to the targets.\nHTTP proxy server to use to connect to the targets.' } },
                      withProxyUrl(value): {
                        proxyUrl: value,
                      },
                    },
                  '#withScopes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Optional scopes to request when obtaining an access token.\nOptional scopes to request when obtaining an access token.' } },
                  withScopes(value): {
                    scopes:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withScopesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Optional scopes to request when obtaining an access token.\nOptional scopes to request when obtaining an access token.' } },
                  withScopesMixin(value): {
                    scopes+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.\nOptional TLS configuration options for OAuth2 requests.' } },
                  withTlsConfig(value): {
                    tlsConfig:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.\nOptional TLS configuration options for OAuth2 requests.' } },
                  withTlsConfigMixin(value): {
                    tlsConfig+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  tlsConfig+:
                    {
                      '#': { help: '', name: 'tlsConfig' },
                      '#withCaCertificateSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "(String, Sensitive) Certificate in PEM format to use when verifying the server's certificate chain.\nCertificate in PEM format to use when verifying the server's certificate chain." } },
                      withCaCertificateSecretRef(value): {
                        caCertificateSecretRef: value,
                      },
                      '#withCaCertificateSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "(String, Sensitive) Certificate in PEM format to use when verifying the server's certificate chain.\nCertificate in PEM format to use when verifying the server's certificate chain." } },
                      withCaCertificateSecretRefMixin(value): {
                        caCertificateSecretRef+: value,
                      },
                      caCertificateSecretRef+:
                        {
                          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                          withKey(value): {
                            caCertificateSecretRef+: {
                              key: value,
                            },
                          },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                          withName(value): {
                            caCertificateSecretRef+: {
                              name: value,
                            },
                          },
                          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                          withNamespace(value): {
                            caCertificateSecretRef+: {
                              namespace: value,
                            },
                          },
                        },
                      '#withClientCertificateSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client certificate in PEM format to use when connecting to the server.\nClient certificate in PEM format to use when connecting to the server.' } },
                      withClientCertificateSecretRef(value): {
                        clientCertificateSecretRef: value,
                      },
                      '#withClientCertificateSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client certificate in PEM format to use when connecting to the server.\nClient certificate in PEM format to use when connecting to the server.' } },
                      withClientCertificateSecretRefMixin(value): {
                        clientCertificateSecretRef+: value,
                      },
                      clientCertificateSecretRef+:
                        {
                          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                          withKey(value): {
                            clientCertificateSecretRef+: {
                              key: value,
                            },
                          },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                          withName(value): {
                            clientCertificateSecretRef+: {
                              name: value,
                            },
                          },
                          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                          withNamespace(value): {
                            clientCertificateSecretRef+: {
                              namespace: value,
                            },
                          },
                        },
                      '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format to use when connecting to the server.\nClient key in PEM format to use when connecting to the server.' } },
                      withClientKeySecretRef(value): {
                        clientKeySecretRef: value,
                      },
                      '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format to use when connecting to the server.\nClient key in PEM format to use when connecting to the server.' } },
                      withClientKeySecretRefMixin(value): {
                        clientKeySecretRef+: value,
                      },
                      clientKeySecretRef+:
                        {
                          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                          withKey(value): {
                            clientKeySecretRef+: {
                              key: value,
                            },
                          },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                          withName(value): {
                            clientKeySecretRef+: {
                              name: value,
                            },
                          },
                          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                          withNamespace(value): {
                            clientKeySecretRef+: {
                              namespace: value,
                            },
                          },
                        },
                      '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Do not verify the server's certificate chain and host name. Defaults to false.\nDo not verify the server's certificate chain and host name. Defaults to `false`." } },
                      withInsecureSkipVerify(value=true): {
                        insecureSkipVerify: value,
                      },
                    },
                  '#withTokenUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) URL for the access token endpoint.\nURL for the access token endpoint.' } },
                  withTokenUrl(value): {
                    tokenUrl: value,
                  },
                },
            },
          '#withHttpMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The HTTP method to use in the request. Defaults to POST.\nThe HTTP method to use in the request. Defaults to `POST`.' } },
          withHttpMethod(value): {
            httpMethod: value,
          },
          '#withMaxAlerts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.\nThe maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.' } },
          withMaxAlerts(value): {
            maxAlerts: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nCustom message. You can use template variables.' } },
          withMessage(value): {
            message: value,
          },
          '#withPayload': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block Set, Max: 1) Optionally provide a templated payload. Overrides 'Message' and 'Title' field. (see below for nested schema)\nOptionally provide a templated payload. Overrides 'Message' and 'Title' field." } },
          withPayload(value): {
            payload:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPayloadMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block Set, Max: 1) Optionally provide a templated payload. Overrides 'Message' and 'Title' field. (see below for nested schema)\nOptionally provide a templated payload. Overrides 'Message' and 'Title' field." } },
          withPayloadMixin(value): {
            payload+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          payload+:
            {
              '#': { help: '', name: 'payload' },
              '#withTemplate': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Custom payload template.\nCustom payload template.' } },
              withTemplate(value): {
                template: value,
              },
              '#withVars': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optionally provide a variables to be used in the payload template. They will be available in the template as .Vars.<variable_name>.\nOptionally provide a variables to be used in the payload template. They will be available in the template as `.Vars.<variable_name>`.' } },
              withVars(value): {
                vars: value,
              },
              '#withVarsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optionally provide a variables to be used in the payload template. They will be available in the template as .Vars.<variable_name>.\nOptionally provide a variables to be used in the payload template. They will be available in the template as `.Vars.<variable_name>`.' } },
              withVarsMixin(value): {
                vars+: value,
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withTlsConfigSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.\nAllows configuring TLS for the webhook notifier.' } },
          withTlsConfigSecretRef(value): {
            tlsConfigSecretRef: value,
          },
          '#withTlsConfigSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.\nAllows configuring TLS for the webhook notifier.' } },
          withTlsConfigSecretRefMixin(value): {
            tlsConfigSecretRef+: value,
          },
          tlsConfigSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tlsConfigSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tlsConfigSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL to send webhook requests to.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withWecom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to WeCom. (see below for nested schema)\nA contact point that sends notifications to WeCom.' } },
      withWecom(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              wecom:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withWecomMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to WeCom. (see below for nested schema)\nA contact point that sends notifications to WeCom.' } },
      withWecomMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              wecom+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      wecom+:
        {
          '#': { help: '', name: 'wecom' },
          '#withAgentId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Agent ID added to the request payload when using APIAPP.\nAgent ID added to the request payload when using APIAPP.' } },
          withAgentId(value): {
            agentId: value,
          },
          '#withCorpId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Corp ID used to get token when using APIAPP.\nCorp ID used to get token when using APIAPP.' } },
          withCorpId(value): {
            corpId: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message to send.' } },
          withMessage(value): {
            message: value,
          },
          '#withMsgType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of them message. Supported: markdown, text. Default: text.\nThe type of them message. Supported: markdown, text. Default: text.' } },
          withMsgType(value): {
            msgType: value,
          },
          '#withSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key required to obtain access token when using APIAPP. See https://work.weixin.qq.com/wework_admin/frame#apps to create APIAPP.' } },
          withSecretSecretRef(value): {
            secretSecretRef: value,
          },
          '#withSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key required to obtain access token when using APIAPP. See https://work.weixin.qq.com/wework_admin/frame#apps to create APIAPP.' } },
          withSecretSecretRefMixin(value): {
            secretSecretRef+: value,
          },
          secretSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                secretSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                secretSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                secretSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].\nAdditional custom properties to attach to the notifier. Defaults to `map[]`.' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          settingsSecretRef+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                settingsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                settingsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message to send.' } },
          withTitle(value): {
            title: value,
          },
          '#withToUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The ID of user that should receive the message. Multiple entries should be separated by '|'. Default: @all.\nThe ID of user that should receive the message. Multiple entries should be separated by '|'. Default: @all." } },
          withToUser(value): {
            toUser: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe WeCom webhook URL. Required if using GroupRobot.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe WeCom webhook URL. Required if using GroupRobot.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
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
      '#withAlertmanager': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to other Alertmanager instances. (see below for nested schema)\nA contact point that sends notifications to other Alertmanager instances.' } },
      withAlertmanager(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              alertmanager:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withAlertmanagerMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to other Alertmanager instances. (see below for nested schema)\nA contact point that sends notifications to other Alertmanager instances.' } },
      withAlertmanagerMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              alertmanager+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      alertmanager+:
        {
          '#': { help: '', name: 'alertmanager' },
          '#withBasicAuthPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe password component of the basic auth credentials to use.' } },
          withBasicAuthPasswordSecretRef(value): {
            basicAuthPasswordSecretRef: value,
          },
          '#withBasicAuthPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe password component of the basic auth credentials to use.' } },
          withBasicAuthPasswordSecretRefMixin(value): {
            basicAuthPasswordSecretRef+: value,
          },
          basicAuthPasswordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                basicAuthPasswordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                basicAuthPasswordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                basicAuthPasswordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withBasicAuthUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The username component of the basic auth credentials to use.\nThe username component of the basic auth credentials to use.' } },
          withBasicAuthUser(value): {
            basicAuthUser: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL of the Alertmanager instance.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withDingding': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to DingDing. (see below for nested schema)\nA contact point that sends notifications to DingDing.' } },
      withDingding(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dingding:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDingdingMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to DingDing. (see below for nested schema)\nA contact point that sends notifications to DingDing.' } },
      withDingdingMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              dingding+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      dingding+:
        {
          '#': { help: '', name: 'dingding' },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withMessageType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "either 'link' or 'actionCard'\nThe format of message to send - either 'link' or 'actionCard'" } },
          withMessageType(value): {
            messageType: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe DingDing webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe DingDing webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
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
      '#withDiscord': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications as Discord messages (see below for nested schema)\nA contact point that sends notifications as Discord messages' } },
      withDiscord(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              discord:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withDiscordMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications as Discord messages (see below for nested schema)\nA contact point that sends notifications as Discord messages' } },
      withDiscordMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              discord+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      discord+:
        {
          '#': { help: '', name: 'discord' },
          '#withAvatarUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of a custom avatar image to use. Defaults to “.\nThe URL of a custom avatar image to use. Defaults to “.' } },
          withAvatarUrl(value): {
            avatarUrl: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message. Defaults to “.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated content of the title.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe discord webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe discord webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUseDiscordUsername': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to use the bot account's plain username instead of \"Grafana.\" Defaults to false.\nWhether to use the bot account's plain username instead of \"Grafana.\" Defaults to `false`." } },
          withUseDiscordUsername(value=true): {
            useDiscordUsername: value,
          },
        },
      '#withEmail': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an email address. (see below for nested schema)\nA contact point that sends notifications to an email address.' } },
      withEmail(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              email:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withEmailMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an email address. (see below for nested schema)\nA contact point that sends notifications to an email address.' } },
      withEmailMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              email+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      email+:
        {
          '#': { help: '', name: 'email' },
          '#withAddresses': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The addresses to send emails to.\nThe addresses to send emails to.' } },
          withAddresses(value): {
            addresses:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withAddressesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The addresses to send emails to.\nThe addresses to send emails to.' } },
          withAddressesMixin(value): {
            addresses+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the email. Defaults to “.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withSingleEmail': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Whether to send a single email CC'ing all addresses, rather than a separate email to each address. Defaults to false.\nWhether to send a single email CC'ing all addresses, rather than a separate email to each address. Defaults to `false`." } },
          withSingleEmail(value=true): {
            singleEmail: value,
          },
          '#withSubject': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated subject line of the email. Defaults to “.\nThe templated subject line of the email. Defaults to “.' } },
          withSubject(value): {
            subject: value,
          },
        },
      '#withGooglechat': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Google Chat. (see below for nested schema)\nA contact point that sends notifications to Google Chat.' } },
      withGooglechat(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              googlechat:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withGooglechatMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Google Chat. (see below for nested schema)\nA contact point that sends notifications to Google Chat.' } },
      withGooglechatMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              googlechat+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      googlechat+:
        {
          '#': { help: '', name: 'googlechat' },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated content of the title.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe Google Chat webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe Google Chat webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withKafka': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that publishes notifications to Apache Kafka topics. (see below for nested schema)\nA contact point that publishes notifications to Apache Kafka topics.' } },
      withKafka(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              kafka:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withKafkaMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that publishes notifications to Apache Kafka topics. (see below for nested schema)\nA contact point that publishes notifications to Apache Kafka topics.' } },
      withKafkaMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              kafka+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      kafka+:
        {
          '#': { help: '', name: 'kafka' },
          '#withApiVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The API version to use when contacting the Kafka REST Server. Supported: v2 (default) and v3. Defaults to v2.\nThe API version to use when contacting the Kafka REST Server. Supported: v2 (default) and v3. Defaults to `v2`.' } },
          withApiVersion(value): {
            apiVersion: value,
          },
          '#withClusterId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The Id of cluster to use when contacting the Kafka REST Server. Required api_version to be 'v3'\nThe Id of cluster to use when contacting the Kafka REST Server. Required api_version to be 'v3'" } },
          withClusterId(value): {
            clusterId: value,
          },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nThe templated description of the Kafka message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDetails': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated details to include with the message.\nThe templated details to include with the message.' } },
          withDetails(value): {
            details: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password to use when making a call to the Kafka REST Proxy\nThe password to use when making a call to the Kafka REST Proxy' } },
          withPasswordSecretRef(value): {
            passwordSecretRef: value,
          },
          '#withPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password to use when making a call to the Kafka REST Proxy\nThe password to use when making a call to the Kafka REST Proxy' } },
          withPasswordSecretRefMixin(value): {
            passwordSecretRef+: value,
          },
          passwordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                passwordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                passwordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                passwordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withRestProxyUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The URL of the Kafka REST proxy to send requests to.\nThe URL of the Kafka REST proxy to send requests to.' } },
          withRestProxyUrlSecretRef(value): {
            restProxyUrlSecretRef: value,
          },
          '#withRestProxyUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The URL of the Kafka REST proxy to send requests to.\nThe URL of the Kafka REST proxy to send requests to.' } },
          withRestProxyUrlSecretRefMixin(value): {
            restProxyUrlSecretRef+: value,
          },
          restProxyUrlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                restProxyUrlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                restProxyUrlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                restProxyUrlSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTopic': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Kafka topic to publish to.\nThe name of the Kafka topic to publish to.' } },
          withTopic(value): {
            topic: value,
          },
          '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user name to use when making a call to the Kafka REST Proxy\nThe user name to use when making a call to the Kafka REST Proxy' } },
          withUsername(value): {
            username: value,
          },
        },
      '#withLine': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to LINE.me. (see below for nested schema)\nA contact point that sends notifications to LINE.me.' } },
      withLine(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              line:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLineMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to LINE.me. (see below for nested schema)\nA contact point that sends notifications to LINE.me.' } },
      withLineMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              line+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      line+:
        {
          '#': { help: '', name: 'line' },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nThe templated description of the message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the contact point.\nThe name of the contact point.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withOncall': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Call. (see below for nested schema)\nA contact point that sends notifications to Grafana On-Call.' } },
      withOncall(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              oncall:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withOncallMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'Call. (see below for nested schema)\nA contact point that sends notifications to Grafana On-Call.' } },
      withOncallMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              oncall+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      oncall+:
        {
          '#': { help: '', name: 'oncall' },
          '#withAuthorizationCredentialsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRef(value): {
            authorizationCredentialsSecretRef: value,
          },
          '#withAuthorizationCredentialsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRefMixin(value): {
            authorizationCredentialsSecretRef+: value,
          },
          authorizationCredentialsSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                authorizationCredentialsSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                authorizationCredentialsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                authorizationCredentialsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAuthorizationScheme': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'attaches an auth header with this name. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this name. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationScheme(value): {
            authorizationScheme: value,
          },
          '#withBasicAuthPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRef(value): {
            basicAuthPasswordSecretRef: value,
          },
          '#withBasicAuthPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRefMixin(value): {
            basicAuthPasswordSecretRef+: value,
          },
          basicAuthPasswordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                basicAuthPasswordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                basicAuthPasswordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                basicAuthPasswordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withBasicAuthUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The username component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthUser(value): {
            basicAuthUser: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withHttpMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The HTTP method to use in the request. Defaults to POST.\nThe HTTP method to use in the request. Defaults to `POST`.' } },
          withHttpMethod(value): {
            httpMethod: value,
          },
          '#withMaxAlerts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.\nThe maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.' } },
          withMaxAlerts(value): {
            maxAlerts: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nCustom message. You can use template variables.' } },
          withMessage(value): {
            message: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL to send webhook requests to.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withOpsgenie': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to OpsGenie. (see below for nested schema)\nA contact point that sends notifications to OpsGenie.' } },
      withOpsgenie(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              opsgenie:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withOpsgenieMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to OpsGenie. (see below for nested schema)\nA contact point that sends notifications to OpsGenie.' } },
      withOpsgenieMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              opsgenie+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      opsgenie+:
        {
          '#': { help: '', name: 'opsgenie' },
          '#withApiKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe OpsGenie API key to use.' } },
          withApiKeySecretRef(value): {
            apiKeySecretRef: value,
          },
          '#withApiKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe OpsGenie API key to use.' } },
          withApiKeySecretRefMixin(value): {
            apiKeySecretRef+: value,
          },
          apiKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAutoClose': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'close alerts in OpsGenie when they resolve in the Alertmanager.\nWhether to auto-close alerts in OpsGenie when they resolve in the Alertmanager.' } },
          withAutoClose(value=true): {
            autoClose: value,
          },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nA templated high-level description to use for the alert.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withOverridePriority': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow the alert priority to be configured via the value of the og_priority annotation on the alert.\nWhether to allow the alert priority to be configured via the value of the `og_priority` annotation on the alert.' } },
          withOverridePriority(value=true): {
            overridePriority: value,
          },
          '#withResponders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+. (see below for nested schema)\nTeams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+.' } },
          withResponders(value): {
            responders:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withRespondersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Teams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+. (see below for nested schema)\nTeams, users, escalations and schedules that the alert will be routed to send notifications. If the API Key belongs to a team integration, this field will be overwritten with the owner team. This feature is available from Grafana 10.3+.' } },
          withRespondersMixin(value): {
            responders+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          responders+:
            {
              '#': { help: '', name: 'responders' },
              '#withId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of this resource.\nID of the responder. Must be specified if name and username are empty.' } },
              withId(value): {
                id: value,
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the contact point.\nName of the responder. Must be specified if username and id are empty.' } },
              withName(value): {
                name: value,
              },
              '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Type of the responder. Supported: team, teams, user, escalation, schedule or a template that is expanded to one of these values.\nType of the responder. Supported: team, teams, user, escalation, schedule or a template that is expanded to one of these values.' } },
              withType(value): {
                type: value,
              },
              '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user name to use when making a call to the Kafka REST Proxy\nUser name of the responder. Must be specified if name and id are empty.' } },
              withUsername(value): {
                username: value,
              },
            },
          '#withSendTagsAs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Whether to send annotations to OpsGenie as Tags, Details, or both. Supported values are tags, details, both, or empty to use the default behavior of Tags.\nWhether to send annotations to OpsGenie as Tags, Details, or both. Supported values are `tags`, `details`, `both`, or empty to use the default behavior of Tags.' } },
          withSendTagsAs(value): {
            sendTagsAs: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nAllows customization of the OpsGenie API URL.' } },
          withUrl(value): {
            url: value,
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
      '#withPagerduty': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to PagerDuty. (see below for nested schema)\nA contact point that sends notifications to PagerDuty.' } },
      withPagerduty(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              pagerduty:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withPagerdutyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to PagerDuty. (see below for nested schema)\nA contact point that sends notifications to PagerDuty.' } },
      withPagerdutyMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              pagerduty+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      pagerduty+:
        {
          '#': { help: '', name: 'pagerduty' },
          '#withClass': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The class or type of event, for example ping failure.\nThe class or type of event, for example `ping failure`.' } },
          withClass(value): {
            class: value,
          },
          '#withClient': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the monitoring client that is triggering this event.\nThe name of the monitoring client that is triggering this event.' } },
          withClient(value): {
            client: value,
          },
          '#withClientUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the monitoring client that is triggering this event.\nThe URL of the monitoring client that is triggering this event.' } },
          withClientUrl(value): {
            clientUrl: value,
          },
          '#withComponent': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The component being affected by the event.\nThe component being affected by the event.' } },
          withComponent(value): {
            component: value,
          },
          '#withDetails': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The templated details to include with the message.\nA set of arbitrary key/value pairs that provide further detail about the incident.' } },
          withDetails(value): {
            details: value,
          },
          '#withDetailsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The templated details to include with the message.\nA set of arbitrary key/value pairs that provide further detail about the incident.' } },
          withDetailsMixin(value): {
            details+: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withGroup': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The group to which the provided component belongs to.\nThe group to which the provided component belongs to.' } },
          withGroup(value): {
            group: value,
          },
          '#withIntegrationKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The PagerDuty API key.\nThe PagerDuty API key.' } },
          withIntegrationKeySecretRef(value): {
            integrationKeySecretRef: value,
          },
          '#withIntegrationKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The PagerDuty API key.\nThe PagerDuty API key.' } },
          withIntegrationKeySecretRefMixin(value): {
            integrationKeySecretRef+: value,
          },
          integrationKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                integrationKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                integrationKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                integrationKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withSeverity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The PagerDuty event severity level. Default is critical.\nThe PagerDuty event severity level. Default is `critical`.' } },
          withSeverity(value): {
            severity: value,
          },
          '#withSource': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique location of the affected system.\nThe unique location of the affected system.' } },
          withSource(value): {
            source: value,
          },
          '#withSummary': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated summary message of the event.\nThe templated summary message of the event.' } },
          withSummary(value): {
            summary: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL to send API requests to' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withPushover': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Pushover. (see below for nested schema)\nA contact point that sends notifications to Pushover.' } },
      withPushover(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              pushover:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withPushoverMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Pushover. (see below for nested schema)\nA contact point that sends notifications to Pushover.' } },
      withPushoverMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              pushover+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      pushover+:
        {
          '#': { help: '', name: 'pushover' },
          '#withApiTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover API token.\nThe Pushover API token.' } },
          withApiTokenSecretRef(value): {
            apiTokenSecretRef: value,
          },
          '#withApiTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover API token.\nThe Pushover API token.' } },
          withApiTokenSecretRefMixin(value): {
            apiTokenSecretRef+: value,
          },
          apiTokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiTokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiTokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiTokenSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withDevice': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of devices to which the event is associated.\nComma-separated list of devices to which the event is associated.' } },
          withDevice(value): {
            device: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withExpire': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) How many seconds for which the notification will continue to be retried by Pushover.\nHow many seconds for which the notification will continue to be retried by Pushover.' } },
          withExpire(value): {
            expire: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated notification message content.' } },
          withMessage(value): {
            message: value,
          },
          '#withOkPriority': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The priority level of the resolved event.\nThe priority level of the resolved event.' } },
          withOkPriority(value): {
            okPriority: value,
          },
          '#withOkSound': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The sound associated with the resolved notification.\nThe sound associated with the resolved notification.' } },
          withOkSound(value): {
            okSound: value,
          },
          '#withPriority': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The priority level of the event.\nThe priority level of the event.' } },
          withPriority(value): {
            priority: value,
          },
          '#withRetry': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) How often, in seconds, the Pushover servers will send the same notification to the user.\nHow often, in seconds, the Pushover servers will send the same notification to the user.' } },
          withRetry(value): {
            retry: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withSound': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The sound associated with the notification.\nThe sound associated with the notification.' } },
          withSound(value): {
            sound: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUploadImage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to send images in the notification or not. Default is true. Requires Grafana to be configured to send images in notifications.\nWhether to send images in the notification or not. Default is true. Requires Grafana to be configured to send images in notifications.' } },
          withUploadImage(value=true): {
            uploadImage: value,
          },
          '#withUserKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover user key.\nThe Pushover user key.' } },
          withUserKeySecretRef(value): {
            userKeySecretRef: value,
          },
          '#withUserKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Pushover user key.\nThe Pushover user key.' } },
          withUserKeySecretRefMixin(value): {
            userKeySecretRef+: value,
          },
          userKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                userKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                userKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                userKeySecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withSensugo': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to SensuGo. (see below for nested schema)\nA contact point that sends notifications to SensuGo.' } },
      withSensugo(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              sensugo:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSensugoMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to SensuGo. (see below for nested schema)\nA contact point that sends notifications to SensuGo.' } },
      withSensugoMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              sensugo+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      sensugo+:
        {
          '#': { help: '', name: 'sensugo' },
          '#withApiKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe SensuGo API key.' } },
          withApiKeySecretRef(value): {
            apiKeySecretRef: value,
          },
          '#withApiKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The OpsGenie API key to use.\nThe SensuGo API key.' } },
          withApiKeySecretRefMixin(value): {
            apiKeySecretRef+: value,
          },
          apiKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withCheck': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The SensuGo check to which the event should be routed.\nThe SensuGo check to which the event should be routed.' } },
          withCheck(value): {
            check: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withEntity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The entity being monitored.\nThe entity being monitored.' } },
          withEntity(value): {
            entity: value,
          },
          '#withHandler': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A custom handler to execute in addition to the check.\nA custom handler to execute in addition to the check.' } },
          withHandler(value): {
            handler: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nTemplated message content describing the alert.' } },
          withMessage(value): {
            message: value,
          },
          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The namespace in which the check resides.\nThe namespace in which the check resides.' } },
          withNamespace(value): {
            namespace: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe SensuGo URL to send requests to.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withSlack': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Slack. (see below for nested schema)\nA contact point that sends notifications to Slack.' } },
      withSlack(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              slack:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSlackMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Slack. (see below for nested schema)\nA contact point that sends notifications to Slack.' } },
      withSlackMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              slack+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      slack+:
        {
          '#': { help: '', name: 'slack' },
          '#withColor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Templated color of the slack message.\nTemplated color of the slack message.' } },
          withColor(value): {
            color: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withEndpointUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Use this to override the Slack API endpoint URL to send requests to.\nUse this to override the Slack API endpoint URL to send requests to.' } },
          withEndpointUrl(value): {
            endpointUrl: value,
          },
          '#withIconEmoji': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of a Slack workspace emoji to use as the bot icon.\nThe name of a Slack workspace emoji to use as the bot icon.' } },
          withIconEmoji(value): {
            iconEmoji: value,
          },
          '#withIconUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) A URL of an image to use as the bot icon.\nA URL of an image to use as the bot icon.' } },
          withIconUrl(value): {
            iconUrl: value,
          },
          '#withMentionChannel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Describes how to ping the slack channel that messages are being sent to. Options are here for an @here ping, channel for @channel, or empty for no ping.\nDescribes how to ping the slack channel that messages are being sent to. Options are `here` for an @here ping, `channel` for @channel, or empty for no ping.' } },
          withMentionChannel(value): {
            mentionChannel: value,
          },
          '#withMentionGroups': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of groups to mention in the message.\nComma-separated list of groups to mention in the message.' } },
          withMentionGroups(value): {
            mentionGroups: value,
          },
          '#withMentionUsers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of users to mention in the message.\nComma-separated list of users to mention in the message.' } },
          withMentionUsers(value): {
            mentionUsers: value,
          },
          '#withRecipient': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Channel, private group, or IM channel (can be an encoded ID or a name) to send messages to.\nChannel, private group, or IM channel (can be an encoded ID or a name) to send messages to.' } },
          withRecipient(value): {
            recipient: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withText': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Templated content of the message.\nTemplated content of the message.' } },
          withText(value): {
            text: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nA Slack API token,for sending messages directly without the webhook method.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nA Slack API token,for sending messages directly without the webhook method.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Slack webhook URL,for sending messages via the webhook method.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Slack webhook URL,for sending messages via the webhook method.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user name to use when making a call to the Kafka REST Proxy\nUsername for the bot to use.' } },
          withUsername(value): {
            username: value,
          },
        },
      '#withSns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana. (see below for nested schema)\nA contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana.' } },
      withSns(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              sns:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana. (see below for nested schema)\nA contact point that sends notifications to Amazon SNS. Requires Amazon Managed Grafana.' } },
      withSnsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              sns+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      sns+:
        {
          '#': { help: '', name: 'sns' },
          '#withAccessKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS access key ID used to authenticate with Amazon SNS.\nAWS access key ID used to authenticate with Amazon SNS.' } },
          withAccessKeySecretRef(value): {
            accessKeySecretRef: value,
          },
          '#withAccessKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS access key ID used to authenticate with Amazon SNS.\nAWS access key ID used to authenticate with Amazon SNS.' } },
          withAccessKeySecretRefMixin(value): {
            accessKeySecretRef+: value,
          },
          accessKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                accessKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                accessKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                accessKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAssumeRoleArn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Amazon Resource Name (ARN) of the role to assume to send notifications to Amazon SNS.\nThe Amazon Resource Name (ARN) of the role to assume to send notifications to Amazon SNS.' } },
          withAssumeRoleArn(value): {
            assumeRoleArn: value,
          },
          '#withAuthProvider': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The authentication provider to use. Valid values are default, arn and keys. Default is default. Defaults to default.\nThe authentication provider to use. Valid values are `default`, `arn` and `keys`. Default is `default`. Defaults to `default`.' } },
          withAuthProvider(value): {
            authProvider: value,
          },
          '#withBody': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
          withBody(value): {
            body: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withExternalId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The external ID to use when assuming the role.\nThe external ID to use when assuming the role.' } },
          withExternalId(value): {
            externalId: value,
          },
          '#withMessageFormat': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The format of the message to send. Valid values are text, body and json. Default is text. Defaults to text.\nThe format of the message to send. Valid values are `text`, `body` and `json`. Default is `text`. Defaults to `text`.' } },
          withMessageFormat(value): {
            messageFormat: value,
          },
          '#withSecretKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS secret access key used to authenticate with Amazon SNS.\nAWS secret access key used to authenticate with Amazon SNS.' } },
          withSecretKeySecretRef(value): {
            secretKeySecretRef: value,
          },
          '#withSecretKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) AWS secret access key used to authenticate with Amazon SNS.\nAWS secret access key used to authenticate with Amazon SNS.' } },
          withSecretKeySecretRefMixin(value): {
            secretKeySecretRef+: value,
          },
          secretKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                secretKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                secretKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                secretKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withSubject': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated subject line of the email. Defaults to “.' } },
          withSubject(value): {
            subject: value,
          },
          '#withTopic': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the Kafka topic to publish to.\nThe Amazon SNS topic to send notifications to.' } },
          withTopic(value): {
            topic: value,
          },
        },
      '#withTeams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Microsoft Teams. (see below for nested schema)\nA contact point that sends notifications to Microsoft Teams.' } },
      withTeams(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teams:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withTeamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Microsoft Teams. (see below for nested schema)\nA contact point that sends notifications to Microsoft Teams.' } },
      withTeamsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              teams+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      teams+:
        {
          '#': { help: '', name: 'teams' },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated message content to send.' } },
          withMessage(value): {
            message: value,
          },
          '#withSectionTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated subtitle for each message section.\nThe templated subtitle for each message section.' } },
          withSectionTitle(value): {
            sectionTitle: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Teams webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nA Teams webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withTelegram': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Telegram. (see below for nested schema)\nA contact point that sends notifications to Telegram.' } },
      withTelegram(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              telegram:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withTelegramMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Telegram. (see below for nested schema)\nA contact point that sends notifications to Telegram.' } },
      withTelegramMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              telegram+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      telegram+:
        {
          '#': { help: '', name: 'telegram' },
          '#withChatId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The chat ID to send messages to.\nThe chat ID to send messages to.' } },
          withChatId(value): {
            chatId: value,
          },
          '#withDisableNotifications': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When set users will receive a notification with no sound.\nWhen set users will receive a notification with no sound.' } },
          withDisableNotifications(value=true): {
            disableNotifications: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withDisableWebPagePreview': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When set it disables link previews for links in the message.\nWhen set it disables link previews for links in the message.' } },
          withDisableWebPagePreview(value=true): {
            disableWebPagePreview: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message.' } },
          withMessage(value): {
            message: value,
          },
          '#withMessageThreadId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the message thread to send the message to.\nThe ID of the message thread to send the message to.' } },
          withMessageThreadId(value): {
            messageThreadId: value,
          },
          '#withParseMode': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Mode for parsing entities in the message text. Supported: None, Markdown, MarkdownV2, and HTML. HTML is the default.\nMode for parsing entities in the message text. Supported: None, Markdown, MarkdownV2, and HTML. HTML is the default.' } },
          withParseMode(value): {
            parseMode: value,
          },
          '#withProtectContent': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When set it protects the contents of the message from forwarding and saving.\nWhen set it protects the contents of the message from forwarding and saving.' } },
          withProtectContent(value=true): {
            protectContent: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe Telegram bot token.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe Telegram bot token.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withThreema': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Threema. (see below for nested schema)\nA contact point that sends notifications to Threema.' } },
      withThreema(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              threema:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withThreemaMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Threema. (see below for nested schema)\nA contact point that sends notifications to Threema.' } },
      withThreemaMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              threema+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      threema+:
        {
          '#': { help: '', name: 'threema' },
          '#withApiSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Threema API key.\nThe Threema API key.' } },
          withApiSecretSecretRef(value): {
            apiSecretSecretRef: value,
          },
          '#withApiSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Threema API key.\nThe Threema API key.' } },
          withApiSecretSecretRefMixin(value): {
            apiSecretSecretRef+: value,
          },
          apiSecretSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                apiSecretSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                apiSecretSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                apiSecretSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nThe templated description of the message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withGatewayId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Threema gateway ID.\nThe Threema gateway ID.' } },
          withGatewayId(value): {
            gatewayId: value,
          },
          '#withRecipientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID of the recipient of the message.\nThe ID of the recipient of the message.' } },
          withRecipientId(value): {
            recipientId: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message.' } },
          withTitle(value): {
            title: value,
          },
        },
      '#withVictorops': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to VictorOps (now known as Splunk OnCall). (see below for nested schema)\nA contact point that sends notifications to VictorOps (now known as Splunk OnCall).' } },
      withVictorops(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              victorops:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withVictoropsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to VictorOps (now known as Splunk OnCall). (see below for nested schema)\nA contact point that sends notifications to VictorOps (now known as Splunk OnCall).' } },
      withVictoropsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              victorops+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      victorops+:
        {
          '#': { help: '', name: 'victorops' },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated description of the Kafka message.\nTemplated description of the message.' } },
          withDescription(value): {
            description: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessageType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "either 'link' or 'actionCard'\nThe VictorOps alert state - typically either `CRITICAL` or `RECOVERY`." } },
          withMessageType(value): {
            messageType: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title to display.' } },
          withTitle(value): {
            title: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe VictorOps webhook URL.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe VictorOps webhook URL.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withWebex': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Cisco Webex. (see below for nested schema)\nA contact point that sends notifications to Cisco Webex.' } },
      withWebex(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              webex:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withWebexMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to Cisco Webex. (see below for nested schema)\nA contact point that sends notifications to Cisco Webex.' } },
      withWebexMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              webex+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      webex+:
        {
          '#': { help: '', name: 'webex' },
          '#withApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL to send webhook requests to.\nThe URL to send webhook requests to.' } },
          withApiUrl(value): {
            apiUrl: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated title of the message to send.' } },
          withMessage(value): {
            message: value,
          },
          '#withRoomId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) ID of the Webex Teams room where to send the messages.\nID of the Webex Teams room where to send the messages.' } },
          withRoomId(value): {
            roomId: value,
          },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRef(value): {
            tokenSecretRef: value,
          },
          '#withTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The bearer token used to authorize the client.\nThe bearer token used to authorize the client.' } },
          withTokenSecretRefMixin(value): {
            tokenSecretRef+: value,
          },
          tokenSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                tokenSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                tokenSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                tokenSecretRef+: {
                  namespace: value,
                },
              },
            },
        },
      '#withWebhook': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config (see below for nested schema)\nA contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config' } },
      withWebhook(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              webhook:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withWebhookMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config (see below for nested schema)\nA contact point that sends notifications to an arbitrary webhook, using the Prometheus webhook format defined here: https://prometheus.io/docs/alerting/latest/configuration/#webhook_config' } },
      withWebhookMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              webhook+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      webhook+:
        {
          '#': { help: '', name: 'webhook' },
          '#withAuthorizationCredentialsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRef(value): {
            authorizationCredentialsSecretRef: value,
          },
          '#withAuthorizationCredentialsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'attaches an auth header with this value. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationCredentialsSecretRefMixin(value): {
            authorizationCredentialsSecretRef+: value,
          },
          authorizationCredentialsSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                authorizationCredentialsSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                authorizationCredentialsSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                authorizationCredentialsSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withAuthorizationScheme': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'attaches an auth header with this name. Do not use in conjunction with basic auth parameters.\nAllows a custom authorization scheme - attaches an auth header with this name. Do not use in conjunction with basic auth parameters.' } },
          withAuthorizationScheme(value): {
            authorizationScheme: value,
          },
          '#withBasicAuthPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRef(value): {
            basicAuthPasswordSecretRef: value,
          },
          '#withBasicAuthPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The password component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthPasswordSecretRefMixin(value): {
            basicAuthPasswordSecretRef+: value,
          },
          basicAuthPasswordSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                basicAuthPasswordSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                basicAuthPasswordSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                basicAuthPasswordSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withBasicAuthUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The username component of the basic auth credentials to use.\nThe username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.' } },
          withBasicAuthUser(value): {
            basicAuthUser: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom headers to attach to the request.\nCustom headers to attach to the request.' } },
          withHeaders(value): {
            headers: value,
          },
          '#withHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom headers to attach to the request.\nCustom headers to attach to the request.' } },
          withHeadersMixin(value): {
            headers+: value,
          },
          '#withHmacConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) HMAC signature configuration options. (see below for nested schema)\nHMAC signature configuration options.' } },
          withHmacConfig(value): {
            hmacConfig:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withHmacConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) HMAC signature configuration options. (see below for nested schema)\nHMAC signature configuration options.' } },
          withHmacConfigMixin(value): {
            hmacConfig+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          hmacConfig+:
            {
              '#': { help: '', name: 'hmacConfig' },
              '#withHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Grafana-Alerting-Signature.\nThe header in which the HMAC signature will be included. Defaults to `X-Grafana-Alerting-Signature`.' } },
              withHeader(value): {
                header: value,
              },
              '#withSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key used to generate the HMAC signature.' } },
              withSecretSecretRef(value): {
                secretSecretRef: value,
              },
              '#withSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key used to generate the HMAC signature.' } },
              withSecretSecretRefMixin(value): {
                secretSecretRef+: value,
              },
              secretSecretRef+:
                {
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                  withKey(value): {
                    secretSecretRef+: {
                      key: value,
                    },
                  },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                  withName(value): {
                    secretSecretRef+: {
                      name: value,
                    },
                  },
                  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                  withNamespace(value): {
                    secretSecretRef+: {
                      namespace: value,
                    },
                  },
                },
              '#withTimestampHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) If set, the timestamp will be included in the HMAC signature. The value should be the name of the header to use.\nIf set, the timestamp will be included in the HMAC signature. The value should be the name of the header to use.' } },
              withTimestampHeader(value): {
                timestampHeader: value,
              },
            },
          '#withHttpConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Common HTTP client options. (see below for nested schema)\nCommon HTTP client options.' } },
          withHttpConfig(value): {
            httpConfig:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withHttpConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Common HTTP client options. (see below for nested schema)\nCommon HTTP client options.' } },
          withHttpConfigMixin(value): {
            httpConfig+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          httpConfig+:
            {
              '#': { help: '', name: 'httpConfig' },
              '#withOauth2': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) OAuth2 configuration options. (see below for nested schema)\nOAuth2 configuration options.' } },
              withOauth2(value): {
                oauth2:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withOauth2Mixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) OAuth2 configuration options. (see below for nested schema)\nOAuth2 configuration options.' } },
              withOauth2Mixin(value): {
                oauth2+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              oauth2+:
                {
                  '#': { help: '', name: 'oauth2' },
                  '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client ID to use when authenticating.\nClient ID to use when authenticating.' } },
                  withClientId(value): {
                    clientId: value,
                  },
                  '#withClientSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client secret to use when authenticating.\nClient secret to use when authenticating.' } },
                  withClientSecretSecretRef(value): {
                    clientSecretSecretRef: value,
                  },
                  '#withClientSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client secret to use when authenticating.\nClient secret to use when authenticating.' } },
                  withClientSecretSecretRefMixin(value): {
                    clientSecretSecretRef+: value,
                  },
                  clientSecretSecretRef+:
                    {
                      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                      withKey(value): {
                        clientSecretSecretRef+: {
                          key: value,
                        },
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                      withName(value): {
                        clientSecretSecretRef+: {
                          name: value,
                        },
                      },
                      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                      withNamespace(value): {
                        clientSecretSecretRef+: {
                          namespace: value,
                        },
                      },
                    },
                  '#withEndpointParams': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional parameters to append to the access token request.\nOptional parameters to append to the access token request.' } },
                  withEndpointParams(value): {
                    endpointParams: value,
                  },
                  '#withEndpointParamsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional parameters to append to the access token request.\nOptional parameters to append to the access token request.' } },
                  withEndpointParamsMixin(value): {
                    endpointParams+: value,
                  },
                  '#withProxyConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Optional proxy configuration for OAuth2 requests. (see below for nested schema)\nOptional proxy configuration for OAuth2 requests.' } },
                  withProxyConfig(value): {
                    proxyConfig:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withProxyConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Optional proxy configuration for OAuth2 requests. (see below for nested schema)\nOptional proxy configuration for OAuth2 requests.' } },
                  withProxyConfigMixin(value): {
                    proxyConfig+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  proxyConfig+:
                    {
                      '#': { help: '', name: 'proxyConfig' },
                      '#withNoProxy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'separated list of addresses that should not use a proxy.\nComma-separated list of addresses that should not use a proxy.' } },
                      withNoProxy(value): {
                        noProxy: value,
                      },
                      '#withProxyConnectHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional headers to send to proxies during CONNECT requests.\nOptional headers to send to proxies during CONNECT requests.' } },
                      withProxyConnectHeader(value): {
                        proxyConnectHeader: value,
                      },
                      '#withProxyConnectHeaderMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optional headers to send to proxies during CONNECT requests.\nOptional headers to send to proxies during CONNECT requests.' } },
                      withProxyConnectHeaderMixin(value): {
                        proxyConnectHeader+: value,
                      },
                      '#withProxyFromEnvironment': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Use environment HTTP_PROXY, HTTPS_PROXY and NO_PROXY to determine proxies. Defaults to false.\nUse environment HTTP_PROXY, HTTPS_PROXY and NO_PROXY to determine proxies. Defaults to `false`.' } },
                      withProxyFromEnvironment(value=true): {
                        proxyFromEnvironment: value,
                      },
                      '#withProxyUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) HTTP proxy server to use to connect to the targets.\nHTTP proxy server to use to connect to the targets.' } },
                      withProxyUrl(value): {
                        proxyUrl: value,
                      },
                    },
                  '#withScopes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Optional scopes to request when obtaining an access token.\nOptional scopes to request when obtaining an access token.' } },
                  withScopes(value): {
                    scopes:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withScopesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Optional scopes to request when obtaining an access token.\nOptional scopes to request when obtaining an access token.' } },
                  withScopesMixin(value): {
                    scopes+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.\nOptional TLS configuration options for OAuth2 requests.' } },
                  withTlsConfig(value): {
                    tlsConfig:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Map of String, Sensitive) Allows configuring TLS for the webhook notifier.\nOptional TLS configuration options for OAuth2 requests.' } },
                  withTlsConfigMixin(value): {
                    tlsConfig+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  tlsConfig+:
                    {
                      '#': { help: '', name: 'tlsConfig' },
                      '#withCaCertificateSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "(String, Sensitive) Certificate in PEM format to use when verifying the server's certificate chain.\nCertificate in PEM format to use when verifying the server's certificate chain." } },
                      withCaCertificateSecretRef(value): {
                        caCertificateSecretRef: value,
                      },
                      '#withCaCertificateSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: "(String, Sensitive) Certificate in PEM format to use when verifying the server's certificate chain.\nCertificate in PEM format to use when verifying the server's certificate chain." } },
                      withCaCertificateSecretRefMixin(value): {
                        caCertificateSecretRef+: value,
                      },
                      caCertificateSecretRef+:
                        {
                          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                          withKey(value): {
                            caCertificateSecretRef+: {
                              key: value,
                            },
                          },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                          withName(value): {
                            caCertificateSecretRef+: {
                              name: value,
                            },
                          },
                          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                          withNamespace(value): {
                            caCertificateSecretRef+: {
                              namespace: value,
                            },
                          },
                        },
                      '#withClientCertificateSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client certificate in PEM format to use when connecting to the server.\nClient certificate in PEM format to use when connecting to the server.' } },
                      withClientCertificateSecretRef(value): {
                        clientCertificateSecretRef: value,
                      },
                      '#withClientCertificateSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client certificate in PEM format to use when connecting to the server.\nClient certificate in PEM format to use when connecting to the server.' } },
                      withClientCertificateSecretRefMixin(value): {
                        clientCertificateSecretRef+: value,
                      },
                      clientCertificateSecretRef+:
                        {
                          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                          withKey(value): {
                            clientCertificateSecretRef+: {
                              key: value,
                            },
                          },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                          withName(value): {
                            clientCertificateSecretRef+: {
                              name: value,
                            },
                          },
                          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                          withNamespace(value): {
                            clientCertificateSecretRef+: {
                              namespace: value,
                            },
                          },
                        },
                      '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format to use when connecting to the server.\nClient key in PEM format to use when connecting to the server.' } },
                      withClientKeySecretRef(value): {
                        clientKeySecretRef: value,
                      },
                      '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format to use when connecting to the server.\nClient key in PEM format to use when connecting to the server.' } },
                      withClientKeySecretRefMixin(value): {
                        clientKeySecretRef+: value,
                      },
                      clientKeySecretRef+:
                        {
                          '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                          withKey(value): {
                            clientKeySecretRef+: {
                              key: value,
                            },
                          },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                          withName(value): {
                            clientKeySecretRef+: {
                              name: value,
                            },
                          },
                          '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                          withNamespace(value): {
                            clientKeySecretRef+: {
                              namespace: value,
                            },
                          },
                        },
                      '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Do not verify the server's certificate chain and host name. Defaults to false.\nDo not verify the server's certificate chain and host name. Defaults to `false`." } },
                      withInsecureSkipVerify(value=true): {
                        insecureSkipVerify: value,
                      },
                    },
                  '#withTokenUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) URL for the access token endpoint.\nURL for the access token endpoint.' } },
                  withTokenUrl(value): {
                    tokenUrl: value,
                  },
                },
            },
          '#withHttpMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The HTTP method to use in the request. Defaults to POST.\nThe HTTP method to use in the request. Defaults to `POST`.' } },
          withHttpMethod(value): {
            httpMethod: value,
          },
          '#withMaxAlerts': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.\nThe maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.' } },
          withMaxAlerts(value): {
            maxAlerts: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nCustom message. You can use template variables.' } },
          withMessage(value): {
            message: value,
          },
          '#withPayload': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block Set, Max: 1) Optionally provide a templated payload. Overrides 'Message' and 'Title' field. (see below for nested schema)\nOptionally provide a templated payload. Overrides 'Message' and 'Title' field." } },
          withPayload(value): {
            payload:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPayloadMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Block Set, Max: 1) Optionally provide a templated payload. Overrides 'Message' and 'Title' field. (see below for nested schema)\nOptionally provide a templated payload. Overrides 'Message' and 'Title' field." } },
          withPayloadMixin(value): {
            payload+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          payload+:
            {
              '#': { help: '', name: 'payload' },
              '#withTemplate': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Custom payload template.\nCustom payload template.' } },
              withTemplate(value): {
                template: value,
              },
              '#withVars': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optionally provide a variables to be used in the payload template. They will be available in the template as .Vars.<variable_name>.\nOptionally provide a variables to be used in the payload template. They will be available in the template as `.Vars.<variable_name>`.' } },
              withVars(value): {
                vars: value,
              },
              '#withVarsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Optionally provide a variables to be used in the payload template. They will be available in the template as .Vars.<variable_name>.\nOptionally provide a variables to be used in the payload template. They will be available in the template as `.Vars.<variable_name>`.' } },
              withVarsMixin(value): {
                vars+: value,
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nTemplated title of the message.' } },
          withTitle(value): {
            title: value,
          },
          '#withTlsConfigSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withTlsConfigSecretRef(value): {
            tlsConfigSecretRef: value,
          },
          '#withTlsConfigSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withTlsConfigSecretRefMixin(value): {
            tlsConfigSecretRef+: value,
          },
          '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL of the Alertmanager instance.\nThe URL to send webhook requests to.' } },
          withUrl(value): {
            url: value,
          },
        },
      '#withWecom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to WeCom. (see below for nested schema)\nA contact point that sends notifications to WeCom.' } },
      withWecom(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              wecom:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withWecomMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) A contact point that sends notifications to WeCom. (see below for nested schema)\nA contact point that sends notifications to WeCom.' } },
      withWecomMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              wecom+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      wecom+:
        {
          '#': { help: '', name: 'wecom' },
          '#withAgentId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Agent ID added to the request payload when using APIAPP.\nAgent ID added to the request payload when using APIAPP.' } },
          withAgentId(value): {
            agentId: value,
          },
          '#withCorpId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Corp ID used to get token when using APIAPP.\nCorp ID used to get token when using APIAPP.' } },
          withCorpId(value): {
            corpId: value,
          },
          '#withDisableResolveMessage': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to disable sending resolve messages. Defaults to false.\nWhether to disable sending resolve messages. Defaults to `false`.' } },
          withDisableResolveMessage(value=true): {
            disableResolveMessage: value,
          },
          '#withMessage': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated content of the message.\nThe templated content of the message to send.' } },
          withMessage(value): {
            message: value,
          },
          '#withMsgType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of them message. Supported: markdown, text. Default: text.\nThe type of them message. Supported: markdown, text. Default: text.' } },
          withMsgType(value): {
            msgType: value,
          },
          '#withSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key required to obtain access token when using APIAPP. See https://work.weixin.qq.com/wework_admin/frame#apps to create APIAPP.' } },
          withSecretSecretRef(value): {
            secretSecretRef: value,
          },
          '#withSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The secret key used to generate the HMAC signature.\nThe secret key required to obtain access token when using APIAPP. See https://work.weixin.qq.com/wework_admin/frame#apps to create APIAPP.' } },
          withSecretSecretRefMixin(value): {
            secretSecretRef+: value,
          },
          secretSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                secretSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                secretSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                secretSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withSettingsSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRef(value): {
            settingsSecretRef: value,
          },
          '#withSettingsSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '' } },
          withSettingsSecretRefMixin(value): {
            settingsSecretRef+: value,
          },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The templated title of the message.\nThe templated title of the message to send.' } },
          withTitle(value): {
            title: value,
          },
          '#withToUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The ID of user that should receive the message. Multiple entries should be separated by '|'. Default: @all.\nThe ID of user that should receive the message. Multiple entries should be separated by '|'. Default: @all." } },
          withToUser(value): {
            toUser: value,
          },
          '#withUrlSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe WeCom webhook URL. Required if using GroupRobot.' } },
          withUrlSecretRef(value): {
            urlSecretRef: value,
          },
          '#withUrlSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String) The URL of the Alertmanager instance.\nThe WeCom webhook URL. Required if using GroupRobot.' } },
          withUrlSecretRefMixin(value): {
            urlSecretRef+: value,
          },
          urlSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                urlSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                urlSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                urlSecretRef+: {
                  namespace: value,
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
