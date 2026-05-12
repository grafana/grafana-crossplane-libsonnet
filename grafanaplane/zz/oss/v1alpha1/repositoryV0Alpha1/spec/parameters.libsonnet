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
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
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
          '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.\nThe UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation." } },
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
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique identifier of the resource.\nThe unique identifier of the resource.' } },
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
      '#withOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
      withOptions(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              options: value,
            },
          },
        },
      },
      '#withOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
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
          '#withManagerIdentity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Override the identity stamped on this resource's manager metadata." } },
          withManagerIdentity(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  options+: {
                    managerIdentity: value,
                  },
                },
              },
            },
          },
          '#withOverwrite': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.\nSet to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.' } },
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
      '#withSecure': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecure(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              secure: value,
            },
          },
        },
      },
      '#withSecureMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecureMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              secure+: value,
            },
          },
        },
      },
      secure+:
        {
          '#withToken': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Token for repository authentication.\nToken for repository authentication.' } },
          withToken(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    token: value,
                  },
                },
              },
            },
          },
          '#withTokenMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Token for repository authentication.\nToken for repository authentication.' } },
          withTokenMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    token+: value,
                  },
                },
              },
            },
          },
          '#withWebhookSecret': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Webhook secret.\nWebhook secret.' } },
          withWebhookSecret(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    webhookSecret: value,
                  },
                },
              },
            },
          },
          '#withWebhookSecretMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Webhook secret.\nWebhook secret.' } },
          withWebhookSecretMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  secure+: {
                    webhookSecret+: value,
                  },
                },
              },
            },
          },
        },
      '#withSecureVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'application of secure values.\nSet this to 1 when using `secure`, then increment it to trigger re-application of secure values.' } },
      withSecureVersion(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              secureVersion: value,
            },
          },
        },
      },
      '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpec(value): {
        parameters+: {
          forProvider+: {
            spec: value,
          },
        },
      },
      '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpecMixin(value): {
        parameters+: {
          forProvider+: {
            spec+: value,
          },
        },
      },
      spec+:
        {
          '#withBitbucket': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Bitbucket repository configuration. (see below for nested schema)\nBitbucket repository configuration.' } },
          withBitbucket(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    bitbucket: value,
                  },
                },
              },
            },
          },
          '#withBitbucketMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Bitbucket repository configuration. (see below for nested schema)\nBitbucket repository configuration.' } },
          withBitbucketMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    bitbucket+: value,
                  },
                },
              },
            },
          },
          bitbucket+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        bitbucket+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        bitbucket+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withTokenUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Username for PAT auth.\nUsername for PAT auth.' } },
              withTokenUser(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        bitbucket+: {
                          tokenUser: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        bitbucket+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withConnection': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Connection resource reference. (see below for nested schema)\nConnection resource reference.' } },
          withConnection(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    connection: value,
                  },
                },
              },
            },
          },
          '#withConnectionMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Connection resource reference. (see below for nested schema)\nConnection resource reference.' } },
          withConnectionMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    connection+: value,
                  },
                },
              },
            },
          },
          connection+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Connection resource name.\nConnection resource name.' } },
              withName(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        connection+: {
                          name: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Repository description.\nRepository description.' } },
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
          '#withGit': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Generic git repository configuration. (see below for nested schema)\nGeneric git repository configuration.' } },
          withGit(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    git: value,
                  },
                },
              },
            },
          },
          '#withGitMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Generic git repository configuration. (see below for nested schema)\nGeneric git repository configuration.' } },
          withGitMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    git+: value,
                  },
                },
              },
            },
          },
          git+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        git+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        git+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withTokenUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Username for PAT auth.\nUsername for PAT auth.' } },
              withTokenUser(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        git+: {
                          tokenUser: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        git+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withGithub': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub repository configuration. (see below for nested schema)\nGitHub repository configuration.' } },
          withGithub(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    github: value,
                  },
                },
              },
            },
          },
          '#withGithubMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub repository configuration. (see below for nested schema)\nGitHub repository configuration.' } },
          withGithubMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    github+: value,
                  },
                },
              },
            },
          },
          github+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        github+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withGenerateDashboardPreviews': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to generate dashboard previews.\nWhether to generate dashboard previews.' } },
              withGenerateDashboardPreviews(value=true): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        github+: {
                          generateDashboardPreviews: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        github+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        github+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withGitlab': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitLab repository configuration. (see below for nested schema)\nGitLab repository configuration.' } },
          withGitlab(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    gitlab: value,
                  },
                },
              },
            },
          },
          '#withGitlabMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitLab repository configuration. (see below for nested schema)\nGitLab repository configuration.' } },
          withGitlabMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    gitlab+: value,
                  },
                },
              },
            },
          },
          gitlab+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        gitlab+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        gitlab+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        gitlab+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withLocal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Local filesystem repository configuration. (see below for nested schema)\nLocal filesystem repository configuration.' } },
          withLocal(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    'local': value,
                  },
                },
              },
            },
          },
          '#withLocalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Local filesystem repository configuration. (see below for nested schema)\nLocal filesystem repository configuration.' } },
          withLocalMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    'local'+: value,
                  },
                },
              },
            },
          },
          'local'+:
            {
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nFilesystem path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        'local'+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withSync': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Sync configuration. (see below for nested schema)\nSync configuration.' } },
          withSync(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    sync: value,
                  },
                },
              },
            },
          },
          '#withSyncMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Sync configuration. (see below for nested schema)\nSync configuration.' } },
          withSyncMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    sync+: value,
                  },
                },
              },
            },
          },
          sync+:
            {
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether sync is enabled.\nWhether sync is enabled.' } },
              withEnabled(value=true): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        sync+: {
                          enabled: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Sync interval in seconds.\nSync interval in seconds.' } },
              withIntervalSeconds(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        sync+: {
                          intervalSeconds: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withTarget': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Sync target: instance or folder.\nSync target: instance or folder.' } },
              withTarget(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        sync+: {
                          target: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Display name shown in the UI.\nDisplay name shown in the UI.' } },
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
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Repository provider type: local, github, git, bitbucket, or gitlab.\nRepository provider type: local, github, git, bitbucket, or gitlab.' } },
          withType(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    type: value,
                  },
                },
              },
            },
          },
          '#withWebhook': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Webhook delivery configuration. (see below for nested schema)\nWebhook delivery configuration.' } },
          withWebhook(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    webhook: value,
                  },
                },
              },
            },
          },
          '#withWebhookMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Webhook delivery configuration. (see below for nested schema)\nWebhook delivery configuration.' } },
          withWebhookMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    webhook+: value,
                  },
                },
              },
            },
          },
          webhook+:
            {
              '#withBaseUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.\nOptional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.' } },
              withBaseUrl(value): {
                spec+: {
                  parameters+: {
                    forProvider+: {
                      spec+: {
                        webhook+: {
                          baseUrl: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withWorkflows': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Allowed change workflows: write, branch.\nAllowed change workflows: write, branch.' } },
          withWorkflows(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    workflows:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withWorkflowsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Allowed change workflows: write, branch.\nAllowed change workflows: write, branch.' } },
          withWorkflowsMixin(value): {
            spec+: {
              parameters+: {
                forProvider+: {
                  spec+: {
                    workflows+:
                      (if std.isArray(value)
                       then value
                       else [value]),
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
      '#withMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
      withMetadata(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              metadata: value,
            },
          },
        },
      },
      '#withMetadataMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The metadata of the resource. (see below for nested schema)\nThe metadata of the resource.' } },
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
          '#withFolderUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.\nThe UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation." } },
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
          '#withUid': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The unique identifier of the resource.\nThe unique identifier of the resource.' } },
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
      '#withOptions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
      withOptions(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              options: value,
            },
          },
        },
      },
      '#withOptionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Options for applying the resource. (see below for nested schema)\nOptions for applying the resource.' } },
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
          '#withManagerIdentity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "Override the identity stamped on this resource's manager metadata." } },
          withManagerIdentity(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  options+: {
                    managerIdentity: value,
                  },
                },
              },
            },
          },
          '#withOverwrite': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.\nSet to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.' } },
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
      '#withSecure': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecure(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              secure: value,
            },
          },
        },
      },
      '#withSecureMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(see below for nested schema)\nSensitive credentials.' } },
      withSecureMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              secure+: value,
            },
          },
        },
      },
      secure+:
        {
          '#withToken': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Token for repository authentication.\nToken for repository authentication.' } },
          withToken(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    token: value,
                  },
                },
              },
            },
          },
          '#withTokenMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Token for repository authentication.\nToken for repository authentication.' } },
          withTokenMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    token+: value,
                  },
                },
              },
            },
          },
          '#withWebhookSecret': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Webhook secret.\nWebhook secret.' } },
          withWebhookSecret(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    webhookSecret: value,
                  },
                },
              },
            },
          },
          '#withWebhookSecretMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'only) Webhook secret.\nWebhook secret.' } },
          withWebhookSecretMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  secure+: {
                    webhookSecret+: value,
                  },
                },
              },
            },
          },
        },
      '#withSecureVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: 'application of secure values.\nSet this to 1 when using `secure`, then increment it to trigger re-application of secure values.' } },
      withSecureVersion(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              secureVersion: value,
            },
          },
        },
      },
      '#withSpec': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpec(value): {
        parameters+: {
          initProvider+: {
            spec: value,
          },
        },
      },
      '#withSpecMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) The spec of the resource. (see below for nested schema)\nThe spec of the resource.' } },
      withSpecMixin(value): {
        parameters+: {
          initProvider+: {
            spec+: value,
          },
        },
      },
      spec+:
        {
          '#withBitbucket': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Bitbucket repository configuration. (see below for nested schema)\nBitbucket repository configuration.' } },
          withBitbucket(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    bitbucket: value,
                  },
                },
              },
            },
          },
          '#withBitbucketMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Bitbucket repository configuration. (see below for nested schema)\nBitbucket repository configuration.' } },
          withBitbucketMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    bitbucket+: value,
                  },
                },
              },
            },
          },
          bitbucket+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        bitbucket+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        bitbucket+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withTokenUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Username for PAT auth.\nUsername for PAT auth.' } },
              withTokenUser(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        bitbucket+: {
                          tokenUser: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        bitbucket+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withConnection': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Connection resource reference. (see below for nested schema)\nConnection resource reference.' } },
          withConnection(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    connection: value,
                  },
                },
              },
            },
          },
          '#withConnectionMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Connection resource reference. (see below for nested schema)\nConnection resource reference.' } },
          withConnectionMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    connection+: value,
                  },
                },
              },
            },
          },
          connection+:
            {
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Connection resource name.\nConnection resource name.' } },
              withName(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        connection+: {
                          name: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withDescription': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Repository description.\nRepository description.' } },
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
          '#withGit': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Generic git repository configuration. (see below for nested schema)\nGeneric git repository configuration.' } },
          withGit(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    git: value,
                  },
                },
              },
            },
          },
          '#withGitMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Generic git repository configuration. (see below for nested schema)\nGeneric git repository configuration.' } },
          withGitMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    git+: value,
                  },
                },
              },
            },
          },
          git+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        git+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        git+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withTokenUser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Username for PAT auth.\nUsername for PAT auth.' } },
              withTokenUser(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        git+: {
                          tokenUser: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        git+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withGithub': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub repository configuration. (see below for nested schema)\nGitHub repository configuration.' } },
          withGithub(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    github: value,
                  },
                },
              },
            },
          },
          '#withGithubMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitHub repository configuration. (see below for nested schema)\nGitHub repository configuration.' } },
          withGithubMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    github+: value,
                  },
                },
              },
            },
          },
          github+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        github+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withGenerateDashboardPreviews': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to generate dashboard previews.\nWhether to generate dashboard previews.' } },
              withGenerateDashboardPreviews(value=true): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        github+: {
                          generateDashboardPreviews: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        github+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        github+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withGitlab': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitLab repository configuration. (see below for nested schema)\nGitLab repository configuration.' } },
          withGitlab(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    gitlab: value,
                  },
                },
              },
            },
          },
          '#withGitlabMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) GitLab repository configuration. (see below for nested schema)\nGitLab repository configuration.' } },
          withGitlabMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    gitlab+: value,
                  },
                },
              },
            },
          },
          gitlab+:
            {
              '#withBranch': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Branch to sync.\nBranch to sync.' } },
              withBranch(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        gitlab+: {
                          branch: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nOptional subdirectory path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        gitlab+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The full URL of the resource.\nRepository URL.' } },
              withUrl(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        gitlab+: {
                          url: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withLocal': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Local filesystem repository configuration. (see below for nested schema)\nLocal filesystem repository configuration.' } },
          withLocal(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    'local': value,
                  },
                },
              },
            },
          },
          '#withLocalMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Local filesystem repository configuration. (see below for nested schema)\nLocal filesystem repository configuration.' } },
          withLocalMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    'local'+: value,
                  },
                },
              },
            },
          },
          'local'+:
            {
              '#withPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional subdirectory path.\nFilesystem path.' } },
              withPath(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        'local'+: {
                          path: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withSync': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Sync configuration. (see below for nested schema)\nSync configuration.' } },
          withSync(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    sync: value,
                  },
                },
              },
            },
          },
          '#withSyncMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Sync configuration. (see below for nested schema)\nSync configuration.' } },
          withSyncMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    sync+: value,
                  },
                },
              },
            },
          },
          sync+:
            {
              '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether sync is enabled.\nWhether sync is enabled.' } },
              withEnabled(value=true): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        sync+: {
                          enabled: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Sync interval in seconds.\nSync interval in seconds.' } },
              withIntervalSeconds(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        sync+: {
                          intervalSeconds: value,
                        },
                      },
                    },
                  },
                },
              },
              '#withTarget': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Sync target: instance or folder.\nSync target: instance or folder.' } },
              withTarget(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        sync+: {
                          target: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withTitle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Display name shown in the UI.\nDisplay name shown in the UI.' } },
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
          '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Repository provider type: local, github, git, bitbucket, or gitlab.\nRepository provider type: local, github, git, bitbucket, or gitlab.' } },
          withType(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    type: value,
                  },
                },
              },
            },
          },
          '#withWebhook': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Webhook delivery configuration. (see below for nested schema)\nWebhook delivery configuration.' } },
          withWebhook(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    webhook: value,
                  },
                },
              },
            },
          },
          '#withWebhookMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Block, Optional) Webhook delivery configuration. (see below for nested schema)\nWebhook delivery configuration.' } },
          withWebhookMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    webhook+: value,
                  },
                },
              },
            },
          },
          webhook+:
            {
              '#withBaseUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Optional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.\nOptional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.' } },
              withBaseUrl(value): {
                spec+: {
                  parameters+: {
                    initProvider+: {
                      spec+: {
                        webhook+: {
                          baseUrl: value,
                        },
                      },
                    },
                  },
                },
              },
            },
          '#withWorkflows': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Allowed change workflows: write, branch.\nAllowed change workflows: write, branch.' } },
          withWorkflows(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    workflows:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              },
            },
          },
          '#withWorkflowsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Allowed change workflows: write, branch.\nAllowed change workflows: write, branch.' } },
          withWorkflowsMixin(value): {
            spec+: {
              parameters+: {
                initProvider+: {
                  spec+: {
                    workflows+:
                      (if std.isArray(value)
                       then value
                       else [value]),
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
