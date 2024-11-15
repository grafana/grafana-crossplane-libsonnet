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
      '#withLdapSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The LDAP settings set. Required for the ldap provider. (see below for nested schema)\nThe LDAP settings set. Required for the ldap provider.' } },
      withLdapSettings(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              ldapSettings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLdapSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The LDAP settings set. Required for the ldap provider. (see below for nested schema)\nThe LDAP settings set. Required for the ldap provider.' } },
      withLdapSettingsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              ldapSettings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      ldapSettings+:
        {
          '#': { help: '', name: 'ldapSettings' },
          '#withAllowSignUp': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.\nWhether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.' } },
          withAllowSignUp(value=true): {
            allowSignUp: value,
          },
          '#withConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The LDAP configuration. (see below for nested schema)\nThe LDAP configuration.' } },
          withConfig(value): {
            config:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The LDAP configuration. (see below for nested schema)\nThe LDAP configuration.' } },
          withConfigMixin(value): {
            config+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          config+:
            {
              '#': { help: '', name: 'config' },
              '#withServers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The LDAP servers configuration. (see below for nested schema)\nThe LDAP servers configuration.' } },
              withServers(value): {
                servers:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withServersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The LDAP servers configuration. (see below for nested schema)\nThe LDAP servers configuration.' } },
              withServersMixin(value): {
                servers+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              servers+:
                {
                  '#': { help: '', name: 'servers' },
                  '#withAttributes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.\nThe LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.' } },
                  withAttributes(value): {
                    attributes: value,
                  },
                  '#withAttributesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.\nThe LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.' } },
                  withAttributesMixin(value): {
                    attributes+: value,
                  },
                  '#withBindDn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The search user bind DN.\nThe search user bind DN.' } },
                  withBindDn(value): {
                    bindDn: value,
                  },
                  '#withBindPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The search user bind password.\nThe search user bind password.' } },
                  withBindPasswordSecretRef(value): {
                    bindPasswordSecretRef: value,
                  },
                  '#withBindPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The search user bind password.\nThe search user bind password.' } },
                  withBindPasswordSecretRefMixin(value): {
                    bindPasswordSecretRef+: value,
                  },
                  bindPasswordSecretRef+:
                    {
                      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                      withKey(value): {
                        bindPasswordSecretRef+: {
                          key: value,
                        },
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                      withName(value): {
                        bindPasswordSecretRef+: {
                          name: value,
                        },
                      },
                      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                      withNamespace(value): {
                        bindPasswordSecretRef+: {
                          namespace: value,
                        },
                      },
                    },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the client certificate.\nThe path to the client certificate.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientCertValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Base64 encoded value of the client certificate.\nThe Base64 encoded value of the client certificate.' } },
                  withClientCertValue(value): {
                    clientCertValue: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The path to the client private key.\nThe path to the client private key.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The path to the client private key.\nThe path to the client private key.' } },
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
                  '#withClientKeyValueSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Base64 encoded value of the client private key.\nThe Base64 encoded value of the client private key.' } },
                  withClientKeyValueSecretRef(value): {
                    clientKeyValueSecretRef: value,
                  },
                  '#withClientKeyValueSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Base64 encoded value of the client private key.\nThe Base64 encoded value of the client private key.' } },
                  withClientKeyValueSecretRefMixin(value): {
                    clientKeyValueSecretRef+: value,
                  },
                  clientKeyValueSecretRef+:
                    {
                      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                      withKey(value): {
                        clientKeyValueSecretRef+: {
                          key: value,
                        },
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                      withName(value): {
                        clientKeyValueSecretRef+: {
                          name: value,
                        },
                      },
                      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                      withNamespace(value): {
                        clientKeyValueSecretRef+: {
                          namespace: value,
                        },
                      },
                    },
                  '#withGroupMappings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) For mapping an LDAP group to a Grafana organization and role. (see below for nested schema)\nFor mapping an LDAP group to a Grafana organization and role.' } },
                  withGroupMappings(value): {
                    groupMappings:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupMappingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) For mapping an LDAP group to a Grafana organization and role. (see below for nested schema)\nFor mapping an LDAP group to a Grafana organization and role.' } },
                  withGroupMappingsMixin(value): {
                    groupMappings+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  groupMappings+:
                    {
                      '#': { help: '', name: 'groupMappings' },
                      '#withGrafanaAdmin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If set to true, it makes the user of group_dn Grafana server admin.\nIf set to true, it makes the user of group_dn Grafana server admin.' } },
                      withGrafanaAdmin(value=true): {
                        grafanaAdmin: value,
                      },
                      '#withGroupDn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) LDAP distinguished name (DN) of LDAP group. If you want to match all (or no LDAP groups) then you can use wildcard ("*").\nLDAP distinguished name (DN) of LDAP group. If you want to match all (or no LDAP groups) then you can use wildcard ("*").' } },
                      withGroupDn(value): {
                        groupDn: value,
                      },
                      '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The Grafana organization database id.\nThe Grafana organization database id.' } },
                      withOrgId(value): {
                        orgId: value,
                      },
                      '#withOrgRole': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Assign users of group_dn the organization role Admin, Editor, or Viewer.\nAssign users of group_dn the organization role Admin, Editor, or Viewer.' } },
                      withOrgRole(value): {
                        orgRole: value,
                      },
                    },
                  '#withGroupSearchBaseDns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of the base DNs to search through for groups. Typically uses ou=groups.\nAn array of the base DNs to search through for groups. Typically uses ou=groups.' } },
                  withGroupSearchBaseDns(value): {
                    groupSearchBaseDns:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupSearchBaseDnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of the base DNs to search through for groups. Typically uses ou=groups.\nAn array of the base DNs to search through for groups. Typically uses ou=groups.' } },
                  withGroupSearchBaseDnsMixin(value): {
                    groupSearchBaseDns+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupSearchFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Group search filter, to retrieve the groups of which the user is a member (only set if memberOf attribute is not available).\nGroup search filter, to retrieve the groups of which the user is a member (only set if memberOf attribute is not available).' } },
                  withGroupSearchFilter(value): {
                    groupSearchFilter: value,
                  },
                  '#withGroupSearchFilterUserAttribute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The %s in the search filter will be replaced with the attribute defined in this field.\nThe %s in the search filter will be replaced with the attribute defined in this field.' } },
                  withGroupSearchFilterUserAttribute(value): {
                    groupSearchFilterUserAttribute: value,
                  },
                  '#withHost': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The LDAP server host.\nThe LDAP server host.' } },
                  withHost(value): {
                    host: value,
                  },
                  '#withMinTlsVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum TLS version allowed. Accepted values are: TLS1.2, TLS1.3.\nMinimum TLS version allowed. Accepted values are: TLS1.2, TLS1.3.' } },
                  withMinTlsVersion(value): {
                    minTlsVersion: value,
                  },
                  '#withPort': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The LDAP server port.\nThe LDAP server port.' } },
                  withPort(value): {
                    port: value,
                  },
                  '#withRootCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the root CA certificate.\nThe path to the root CA certificate.' } },
                  withRootCaCert(value): {
                    rootCaCert: value,
                  },
                  '#withRootCaCertValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The Base64 encoded values of the root CA certificates.\nThe Base64 encoded values of the root CA certificates.' } },
                  withRootCaCertValue(value): {
                    rootCaCertValue:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withRootCaCertValueMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The Base64 encoded values of the root CA certificates.\nThe Base64 encoded values of the root CA certificates.' } },
                  withRootCaCertValueMixin(value): {
                    rootCaCertValue+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withSearchBaseDns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of base DNs to search through.\nAn array of base DNs to search through.' } },
                  withSearchBaseDns(value): {
                    searchBaseDns:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withSearchBaseDnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of base DNs to search through.\nAn array of base DNs to search through.' } },
                  withSearchBaseDnsMixin(value): {
                    searchBaseDns+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withSearchFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user search filter, for example "(cn=%s)" or "(sAMAccountName=%s)" or "(uid=%s)".\nThe user search filter, for example "(cn=%s)" or "(sAMAccountName=%s)" or "(uid=%s)".' } },
                  withSearchFilter(value): {
                    searchFilter: value,
                  },
                  '#withSslSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If set to true, the SSL cert validation will be skipped.\nIf set to true, the SSL cert validation will be skipped.' } },
                  withSslSkipVerify(value=true): {
                    sslSkipVerify: value,
                  },
                  '#withStartTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If set to true, use LDAP with STARTTLS instead of LDAPS.\nIf set to true, use LDAP with STARTTLS instead of LDAPS.' } },
                  withStartTls(value=true): {
                    startTls: value,
                  },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The timeout in seconds for connecting to the LDAP host.\nThe timeout in seconds for connecting to the LDAP host.' } },
                  withTimeout(value): {
                    timeout: value,
                  },
                  '#withTlsCiphers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.\nAccepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.' } },
                  withTlsCiphers(value): {
                    tlsCiphers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withTlsCiphersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.\nAccepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.' } },
                  withTlsCiphersMixin(value): {
                    tlsCiphers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withUseSsl': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Set to true if LDAP server should use an encrypted TLS connection (either with STARTTLS or LDAPS).\nSet to true if LDAP server should use an encrypted TLS connection (either with STARTTLS or LDAPS).' } },
                  withUseSsl(value=true): {
                    useSsl: value,
                  },
                },
            },
          '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.\nDefine whether this configuration is enabled for LDAP. Defaults to `true`.' } },
          withEnabled(value=true): {
            enabled: value,
          },
          '#withSkipOrgRoleSync': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Prevent synchronizing users’ organization roles from LDAP.\nPrevent synchronizing users’ organization roles from LDAP.' } },
          withSkipOrgRoleSync(value=true): {
            skipOrgRoleSync: value,
          },
        },
      '#withOauth2Settings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers. (see below for nested schema)\nThe OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers.' } },
      withOauth2Settings(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              oauth2Settings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withOauth2SettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers. (see below for nested schema)\nThe OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers.' } },
      withOauth2SettingsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              oauth2Settings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      oauth2Settings+:
        {
          '#': { help: '', name: 'oauth2Settings' },
          '#withAllowAssignGrafanaAdmin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, it will automatically sync the Grafana server administrator role.\nIf enabled, it will automatically sync the Grafana server administrator role.' } },
          withAllowAssignGrafanaAdmin(value=true): {
            allowAssignGrafanaAdmin: value,
          },
          '#withAllowSignUp': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.\nIf not enabled, only existing Grafana users can log in using OAuth.' } },
          withAllowSignUp(value=true): {
            allowSignUp: value,
          },
          '#withAllowedDomains': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated domains. The user should belong to at least one domain to log in.\nList of comma- or space-separated domains. The user should belong to at least one domain to log in.' } },
          withAllowedDomains(value): {
            allowedDomains: value,
          },
          '#withAllowedGroups': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated groups. The user should be a member of at least one group to log in. For Generic OAuth, if you configure allowed_groups, you must also configure groups_attribute_path.\nList of comma- or space-separated groups. The user should be a member of at least one group to log in. For Generic OAuth, if you configure allowed_groups, you must also configure groups_attribute_path.' } },
          withAllowedGroups(value): {
            allowedGroups: value,
          },
          '#withAllowedOrganizations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated organizations. The user should be a member of at least one organization to log in.\nList of comma- or space-separated organizations. The user should be a member of at least one organization to log in.' } },
          withAllowedOrganizations(value): {
            allowedOrganizations: value,
          },
          '#withApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user information endpoint of your OAuth2 provider. Required for okta and generic_oauth providers.\nThe user information endpoint of your OAuth2 provider. Required for okta and generic_oauth providers.' } },
          withApiUrl(value): {
            apiUrl: value,
          },
          '#withAuthStyle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) It determines how client_id and client_secret are sent to Oauth2 provider. Possible values are AutoDetect, InParams, InHeader. Default is AutoDetect.\nIt determines how client_id and client_secret are sent to Oauth2 provider. Possible values are AutoDetect, InParams, InHeader. Default is AutoDetect.' } },
          withAuthStyle(value): {
            authStyle: value,
          },
          '#withAuthUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The authorization endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.\nThe authorization endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.' } },
          withAuthUrl(value): {
            authUrl: value,
          },
          '#withAutoLogin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Log in automatically, skipping the login screen.\nLog in automatically, skipping the login screen.' } },
          withAutoLogin(value=true): {
            autoLogin: value,
          },
          '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The client Id of your OAuth2 app.\nThe client Id of your OAuth2 app.' } },
          withClientId(value): {
            clientId: value,
          },
          '#withClientSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of your OAuth2 app.\nThe client secret of your OAuth2 app.' } },
          withClientSecretSecretRef(value): {
            clientSecretSecretRef: value,
          },
          '#withClientSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of your OAuth2 app.\nThe client secret of your OAuth2 app.' } },
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
          '#withCustom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom fields to configure for OAuth2 such as the force_use_graph_api field.\nCustom fields to configure for OAuth2 such as the [force_use_graph_api](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/azuread/#force-fetching-groups-from-microsoft-graph-api) field.' } },
          withCustom(value): {
            custom: value,
          },
          '#withCustomMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom fields to configure for OAuth2 such as the force_use_graph_api field.\nCustom fields to configure for OAuth2 such as the [force_use_graph_api](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/azuread/#force-fetching-groups-from-microsoft-graph-api) field.' } },
          withCustomMixin(value): {
            custom+: value,
          },
          '#withDefineAllowedGroups': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define allowed groups.\nDefine allowed groups.' } },
          withDefineAllowedGroups(value=true): {
            defineAllowedGroups: value,
          },
          '#withDefineAllowedTeamsIds': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define allowed teams ids.\nDefine allowed teams ids.' } },
          withDefineAllowedTeamsIds(value=true): {
            defineAllowedTeamsIds: value,
          },
          '#withEmailAttributeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the key to use for user email lookup within the attributes map of OAuth2 ID token. Only applicable to Generic OAuth.\nName of the key to use for user email lookup within the attributes map of OAuth2 ID token. Only applicable to Generic OAuth.' } },
          withEmailAttributeName(value): {
            emailAttributeName: value,
          },
          '#withEmailAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user email lookup from the user information. Only applicable to Generic OAuth.\nJMESPath expression to use for user email lookup from the user information. Only applicable to Generic OAuth.' } },
          withEmailAttributePath(value): {
            emailAttributePath: value,
          },
          '#withEmptyScopes': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, no scopes will be sent to the OAuth2 provider.\nIf enabled, no scopes will be sent to the OAuth2 provider.' } },
          withEmptyScopes(value=true): {
            emptyScopes: value,
          },
          '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.\nDefine whether this configuration is enabled for the specified provider. Defaults to `true`.' } },
          withEnabled(value=true): {
            enabled: value,
          },
          '#withGroupsAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user group lookup. If you configure allowed_groups, you must also configure groups_attribute_path.\nJMESPath expression to use for user group lookup. If you configure allowed_groups, you must also configure groups_attribute_path.' } },
          withGroupsAttributePath(value): {
            groupsAttributePath: value,
          },
          '#withIdTokenAttributeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the key used to extract the ID token from the returned OAuth2 token. Only applicable to Generic OAuth.\nThe name of the key used to extract the ID token from the returned OAuth2 token. Only applicable to Generic OAuth.' } },
          withIdTokenAttributeName(value): {
            idTokenAttributeName: value,
          },
          '#withLoginAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user login lookup from the user ID token. Only applicable to Generic OAuth.\nJMESPath expression to use for user login lookup from the user ID token. Only applicable to Generic OAuth.' } },
          withLoginAttributePath(value): {
            loginAttributePath: value,
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Helpful if you use more than one identity providers or SSO protocols.\nHelpful if you use more than one identity providers or SSO protocols.' } },
          withName(value): {
            name: value,
          },
          '#withNameAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user name lookup from the user ID token. This name will be used as the user’s display name. Only applicable to Generic OAuth.\nJMESPath expression to use for user name lookup from the user ID token. This name will be used as the user’s display name. Only applicable to Generic OAuth.' } },
          withNameAttributePath(value): {
            nameAttributePath: value,
          },
          '#withOrgAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for the organization mapping lookup from the user ID token. The extracted list will be used for the organization mapping (to match "Organization" in the "org_mapping"). Only applicable to Generic OAuth and Okta.\nJMESPath expression to use for the organization mapping lookup from the user ID token. The extracted list will be used for the organization mapping (to match "Organization" in the "org_mapping"). Only applicable to Generic OAuth and Okta.' } },
          withOrgAttributePath(value): {
            orgAttributePath: value,
          },
          '#withOrgMapping': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.\nList of comma- or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.' } },
          withOrgMapping(value): {
            orgMapping: value,
          },
          '#withRoleAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for Grafana role lookup.\nJMESPath expression to use for Grafana role lookup.' } },
          withRoleAttributePath(value): {
            roleAttributePath: value,
          },
          '#withRoleAttributeStrict': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, denies user login if the Grafana role cannot be extracted using Role attribute path.\nIf enabled, denies user login if the Grafana role cannot be extracted using Role attribute path.' } },
          withRoleAttributeStrict(value=true): {
            roleAttributeStrict: value,
          },
          '#withScopes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated OAuth2 scopes.\nList of comma- or space-separated OAuth2 scopes.' } },
          withScopes(value): {
            scopes: value,
          },
          '#withSignoutRedirectUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL to redirect the user to after signing out from Grafana.\nThe URL to redirect the user to after signing out from Grafana.' } },
          withSignoutRedirectUrl(value): {
            signoutRedirectUrl: value,
          },
          '#withSkipOrgRoleSync': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Prevent synchronizing users’ organization roles from LDAP.\nPrevent synchronizing users’ organization roles from your IdP.' } },
          withSkipOrgRoleSync(value=true): {
            skipOrgRoleSync: value,
          },
          '#withTeamIds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) String list of Team Ids. If set, the user must be a member of one of the given teams to log in. If you configure team_ids, you must also configure teams_url and team_ids_attribute_path.\nString list of Team Ids. If set, the user must be a member of one of the given teams to log in. If you configure team_ids, you must also configure teams_url and team_ids_attribute_path.' } },
          withTeamIds(value): {
            teamIds: value,
          },
          '#withTeamIdsAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The JMESPath expression to use for Grafana Team Id lookup within the results returned by the teams_url endpoint. Only applicable to Generic OAuth.\nThe JMESPath expression to use for Grafana Team Id lookup within the results returned by the teams_url endpoint. Only applicable to Generic OAuth.' } },
          withTeamIdsAttributePath(value): {
            teamIdsAttributePath: value,
          },
          '#withTeamsUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL used to query for Team Ids. If not set, the default value is /teams. If you configure teams_url, you must also configure team_ids_attribute_path. Only applicable to Generic OAuth.\nThe URL used to query for Team Ids. If not set, the default value is /teams. If you configure teams_url, you must also configure team_ids_attribute_path. Only applicable to Generic OAuth.' } },
          withTeamsUrl(value): {
            teamsUrl: value,
          },
          '#withTlsClientCa': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the trusted certificate authority list. Is not applicable on Grafana Cloud.\nThe path to the trusted certificate authority list. Is not applicable on Grafana Cloud.' } },
          withTlsClientCa(value): {
            tlsClientCa: value,
          },
          '#withTlsClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the certificate. Is not applicable on Grafana Cloud.\nThe path to the certificate. Is not applicable on Grafana Cloud.' } },
          withTlsClientCert(value): {
            tlsClientCert: value,
          },
          '#withTlsClientKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the key. Is not applicable on Grafana Cloud.\nThe path to the key. Is not applicable on Grafana Cloud.' } },
          withTlsClientKey(value): {
            tlsClientKey: value,
          },
          '#withTlsSkipVerifyInsecure': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'in-the-middle attacks.\nIf enabled, the client accepts any certificate presented by the server and any host name in that certificate. You should only use this for testing, because this mode leaves SSL/TLS susceptible to man-in-the-middle attacks.' } },
          withTlsSkipVerifyInsecure(value=true): {
            tlsSkipVerifyInsecure: value,
          },
          '#withTokenUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.\nThe token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.' } },
          withTokenUrl(value): {
            tokenUrl: value,
          },
          '#withUsePkce': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, Grafana will use Proof Key for Code Exchange (PKCE) with the OAuth2 Authorization Code Grant.\nIf enabled, Grafana will use Proof Key for Code Exchange (PKCE) with the OAuth2 Authorization Code Grant.' } },
          withUsePkce(value=true): {
            usePkce: value,
          },
          '#withUseRefreshToken': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, Grafana will fetch a new access token using the refresh token provided by the OAuth2 provider.\nIf enabled, Grafana will fetch a new access token using the refresh token provided by the OAuth2 provider.' } },
          withUseRefreshToken(value=true): {
            useRefreshToken: value,
          },
        },
      '#withProviderName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the SSO provider. Supported values: github, gitlab, google, azuread, okta, generic_oauth, saml, ldap.\nThe name of the SSO provider. Supported values: github, gitlab, google, azuread, okta, generic_oauth, saml, ldap.' } },
      withProviderName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              providerName: value,
            },
          },
        },
      },
      '#withSamlSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The SAML settings set. Required for the saml provider. (see below for nested schema)\nThe SAML settings set. Required for the saml provider.' } },
      withSamlSettings(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              samlSettings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSamlSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The SAML settings set. Required for the saml provider. (see below for nested schema)\nThe SAML settings set. Required for the saml provider.' } },
      withSamlSettingsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              samlSettings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      samlSettings+:
        {
          '#': { help: '', name: 'samlSettings' },
          '#withAllowIdpInitiated': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'initiated login is allowed.\nWhether SAML IdP-initiated login is allowed.' } },
          withAllowIdpInitiated(value=true): {
            allowIdpInitiated: value,
          },
          '#withAllowSignUp': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.\nWhether to allow new Grafana user creation through SAML login. If set to false, then only existing Grafana users can log in with SAML.' } },
          withAllowSignUp(value=true): {
            allowSignUp: value,
          },
          '#withAllowedOrganizations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated organizations. The user should be a member of at least one organization to log in.\nList of comma- or space-separated organizations. User should be a member of at least one organization to log in.' } },
          withAllowedOrganizations(value): {
            allowedOrganizations: value,
          },
          '#withAssertionAttributeEmail': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user email.\nFriendly name or name of the attribute within the SAML assertion to use as the user email.' } },
          withAssertionAttributeEmail(value): {
            assertionAttributeEmail: value,
          },
          '#withAssertionAttributeGroups': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user groups.\nFriendly name or name of the attribute within the SAML assertion to use as the user groups.' } },
          withAssertionAttributeGroups(value): {
            assertionAttributeGroups: value,
          },
          '#withAssertionAttributeLogin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user login handle.\nFriendly name or name of the attribute within the SAML assertion to use as the user login handle.' } },
          withAssertionAttributeLogin(value): {
            assertionAttributeLogin: value,
          },
          '#withAssertionAttributeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user name. Alternatively, this can be a template with variables that match the names of attributes within the SAML assertion.\nFriendly name or name of the attribute within the SAML assertion to use as the user name. Alternatively, this can be a template with variables that match the names of attributes within the SAML assertion.' } },
          withAssertionAttributeName(value): {
            assertionAttributeName: value,
          },
          '#withAssertionAttributeOrg': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user organization.\nFriendly name or name of the attribute within the SAML assertion to use as the user organization.' } },
          withAssertionAttributeOrg(value): {
            assertionAttributeOrg: value,
          },
          '#withAssertionAttributeRole': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user roles.\nFriendly name or name of the attribute within the SAML assertion to use as the user roles.' } },
          withAssertionAttributeRole(value): {
            assertionAttributeRole: value,
          },
          '#withAutoLogin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Log in automatically, skipping the login screen.\nWhether SAML auto login is enabled.' } },
          withAutoLogin(value=true): {
            autoLogin: value,
          },
          '#withCertificatePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Path for the SP X.509 certificate.\nPath for the SP X.509 certificate.' } },
          withCertificatePath(value): {
            certificatePath: value,
          },
          '#withCertificateSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP X.509 certificate.\nBase64-encoded string for the SP X.509 certificate.' } },
          withCertificateSecretRef(value): {
            certificateSecretRef: value,
          },
          '#withCertificateSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP X.509 certificate.\nBase64-encoded string for the SP X.509 certificate.' } },
          withCertificateSecretRefMixin(value): {
            certificateSecretRef+: value,
          },
          certificateSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                certificateSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                certificateSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                certificateSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The client Id of your OAuth2 app.\nThe client Id of your OAuth2 app.' } },
          withClientId(value): {
            clientId: value,
          },
          '#withClientSecret': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String, Sensitive) The client secret of your OAuth2 app.\nThe client secret of your OAuth2 app.' } },
          withClientSecret(value): {
            clientSecret: value,
          },
          '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.\nDefine whether this configuration is enabled for SAML. Defaults to `true`.' } },
          withEnabled(value=true): {
            enabled: value,
          },
          '#withForceUseGraphApi': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, Grafana will fetch groups from Microsoft Graph API instead of using the groups claim from the ID token.\nIf enabled, Grafana will fetch groups from Microsoft Graph API instead of using the groups claim from the ID token.' } },
          withForceUseGraphApi(value=true): {
            forceUseGraphApi: value,
          },
          '#withIdpMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'encoded string for the IdP SAML metadata XML.\nBase64-encoded string for the IdP SAML metadata XML.' } },
          withIdpMetadata(value): {
            idpMetadata: value,
          },
          '#withIdpMetadataPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Path for the IdP SAML metadata XML.\nPath for the IdP SAML metadata XML.' } },
          withIdpMetadataPath(value): {
            idpMetadataPath: value,
          },
          '#withIdpMetadataUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) URL for the IdP SAML metadata XML.\nURL for the IdP SAML metadata XML.' } },
          withIdpMetadataUrl(value): {
            idpMetadataUrl: value,
          },
          '#withMaxIssueDelay': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Duration, since the IdP issued a response and the SP is allowed to process it. For example: 90s, 1h.\nDuration, since the IdP issued a response and the SP is allowed to process it. For example: 90s, 1h.' } },
          withMaxIssueDelay(value): {
            maxIssueDelay: value,
          },
          '#withMetadataValidDuration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Duration, for how long the SP metadata is valid. For example: 48h, 5d.\nDuration, for how long the SP metadata is valid. For example: 48h, 5d.' } },
          withMetadataValidDuration(value): {
            metadataValidDuration: value,
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Helpful if you use more than one identity providers or SSO protocols.\nName used to refer to the SAML authentication.' } },
          withName(value): {
            name: value,
          },
          '#withNameIdFormat': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'format:transient\nThe Name ID Format to request within the SAML assertion. Defaults to urn:oasis:names:tc:SAML:2.0:nameid-format:transient' } },
          withNameIdFormat(value): {
            nameIdFormat: value,
          },
          '#withOrgMapping': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.\nList of comma- or space-separated Organization:OrgId:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: Viewer, Editor or Admin.' } },
          withOrgMapping(value): {
            orgMapping: value,
          },
          '#withPrivateKeyPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Path for the SP private key.\nPath for the SP private key.' } },
          withPrivateKeyPath(value): {
            privateKeyPath: value,
          },
          '#withPrivateKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP private key.\nBase64-encoded string for the SP private key.' } },
          withPrivateKeySecretRef(value): {
            privateKeySecretRef: value,
          },
          '#withPrivateKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP private key.\nBase64-encoded string for the SP private key.' } },
          withPrivateKeySecretRefMixin(value): {
            privateKeySecretRef+: value,
          },
          privateKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                privateKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                privateKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                privateKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withRelayState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'initiated login. Should match relay state configured in IdP.\nRelay state for IdP-initiated login. Should match relay state configured in IdP.' } },
          withRelayState(value): {
            relayState: value,
          },
          '#withRoleValuesAdmin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Admin role.\nList of comma- or space-separated roles which will be mapped into the Admin role.' } },
          withRoleValuesAdmin(value): {
            roleValuesAdmin: value,
          },
          '#withRoleValuesEditor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Editor role.\nList of comma- or space-separated roles which will be mapped into the Editor role.' } },
          withRoleValuesEditor(value): {
            roleValuesEditor: value,
          },
          '#withRoleValuesGrafanaAdmin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Grafana Admin (Super Admin) role.\nList of comma- or space-separated roles which will be mapped into the Grafana Admin (Super Admin) role.' } },
          withRoleValuesGrafanaAdmin(value): {
            roleValuesGrafanaAdmin: value,
          },
          '#withRoleValuesNone': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the None role.\nList of comma- or space-separated roles which will be mapped into the None role.' } },
          withRoleValuesNone(value): {
            roleValuesNone: value,
          },
          '#withRoleValuesViewer': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Viewer role.\nList of comma- or space-separated roles which will be mapped into the Viewer role.' } },
          withRoleValuesViewer(value): {
            roleValuesViewer: value,
          },
          '#withSignatureAlgorithm': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sha1, rsa-sha256, rsa-sha512.\nSignature algorithm used for signing requests to the IdP. Supported values are rsa-sha1, rsa-sha256, rsa-sha512.' } },
          withSignatureAlgorithm(value): {
            signatureAlgorithm: value,
          },
          '#withSingleLogout': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether SAML Single Logout is enabled.\nWhether SAML Single Logout is enabled.' } },
          withSingleLogout(value=true): {
            singleLogout: value,
          },
          '#withSkipOrgRoleSync': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Prevent synchronizing users’ organization roles from LDAP.\nPrevent synchronizing users’ organization roles from your IdP.' } },
          withSkipOrgRoleSync(value=true): {
            skipOrgRoleSync: value,
          },
          '#withTokenUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.\nThe token endpoint of your OAuth2 provider. Required for Azure AD providers.' } },
          withTokenUrl(value): {
            tokenUrl: value,
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
      '#withLdapSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The LDAP settings set. Required for the ldap provider. (see below for nested schema)\nThe LDAP settings set. Required for the ldap provider.' } },
      withLdapSettings(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              ldapSettings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withLdapSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The LDAP settings set. Required for the ldap provider. (see below for nested schema)\nThe LDAP settings set. Required for the ldap provider.' } },
      withLdapSettingsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              ldapSettings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      ldapSettings+:
        {
          '#': { help: '', name: 'ldapSettings' },
          '#withAllowSignUp': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.\nWhether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.' } },
          withAllowSignUp(value=true): {
            allowSignUp: value,
          },
          '#withConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The LDAP configuration. (see below for nested schema)\nThe LDAP configuration.' } },
          withConfig(value): {
            config:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1, Max: 1) The LDAP configuration. (see below for nested schema)\nThe LDAP configuration.' } },
          withConfigMixin(value): {
            config+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          config+:
            {
              '#': { help: '', name: 'config' },
              '#withServers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The LDAP servers configuration. (see below for nested schema)\nThe LDAP servers configuration.' } },
              withServers(value): {
                servers:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withServersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List, Min: 1) The LDAP servers configuration. (see below for nested schema)\nThe LDAP servers configuration.' } },
              withServersMixin(value): {
                servers+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              servers+:
                {
                  '#': { help: '', name: 'servers' },
                  '#withAttributes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.\nThe LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.' } },
                  withAttributes(value): {
                    attributes: value,
                  },
                  '#withAttributesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.\nThe LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.' } },
                  withAttributesMixin(value): {
                    attributes+: value,
                  },
                  '#withBindDn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The search user bind DN.\nThe search user bind DN.' } },
                  withBindDn(value): {
                    bindDn: value,
                  },
                  '#withBindPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The search user bind password.\nThe search user bind password.' } },
                  withBindPasswordSecretRef(value): {
                    bindPasswordSecretRef: value,
                  },
                  '#withBindPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The search user bind password.\nThe search user bind password.' } },
                  withBindPasswordSecretRefMixin(value): {
                    bindPasswordSecretRef+: value,
                  },
                  bindPasswordSecretRef+:
                    {
                      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                      withKey(value): {
                        bindPasswordSecretRef+: {
                          key: value,
                        },
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                      withName(value): {
                        bindPasswordSecretRef+: {
                          name: value,
                        },
                      },
                      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                      withNamespace(value): {
                        bindPasswordSecretRef+: {
                          namespace: value,
                        },
                      },
                    },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the client certificate.\nThe path to the client certificate.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientCertValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Base64 encoded value of the client certificate.\nThe Base64 encoded value of the client certificate.' } },
                  withClientCertValue(value): {
                    clientCertValue: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The path to the client private key.\nThe path to the client private key.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The path to the client private key.\nThe path to the client private key.' } },
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
                  '#withClientKeyValueSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Base64 encoded value of the client private key.\nThe Base64 encoded value of the client private key.' } },
                  withClientKeyValueSecretRef(value): {
                    clientKeyValueSecretRef: value,
                  },
                  '#withClientKeyValueSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The Base64 encoded value of the client private key.\nThe Base64 encoded value of the client private key.' } },
                  withClientKeyValueSecretRefMixin(value): {
                    clientKeyValueSecretRef+: value,
                  },
                  clientKeyValueSecretRef+:
                    {
                      '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                      withKey(value): {
                        clientKeyValueSecretRef+: {
                          key: value,
                        },
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                      withName(value): {
                        clientKeyValueSecretRef+: {
                          name: value,
                        },
                      },
                      '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                      withNamespace(value): {
                        clientKeyValueSecretRef+: {
                          namespace: value,
                        },
                      },
                    },
                  '#withGroupMappings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) For mapping an LDAP group to a Grafana organization and role. (see below for nested schema)\nFor mapping an LDAP group to a Grafana organization and role.' } },
                  withGroupMappings(value): {
                    groupMappings:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupMappingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) For mapping an LDAP group to a Grafana organization and role. (see below for nested schema)\nFor mapping an LDAP group to a Grafana organization and role.' } },
                  withGroupMappingsMixin(value): {
                    groupMappings+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  groupMappings+:
                    {
                      '#': { help: '', name: 'groupMappings' },
                      '#withGrafanaAdmin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If set to true, it makes the user of group_dn Grafana server admin.\nIf set to true, it makes the user of group_dn Grafana server admin.' } },
                      withGrafanaAdmin(value=true): {
                        grafanaAdmin: value,
                      },
                      '#withGroupDn': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) LDAP distinguished name (DN) of LDAP group. If you want to match all (or no LDAP groups) then you can use wildcard ("*").\nLDAP distinguished name (DN) of LDAP group. If you want to match all (or no LDAP groups) then you can use wildcard ("*").' } },
                      withGroupDn(value): {
                        groupDn: value,
                      },
                      '#withOrgId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The Grafana organization database id.\nThe Grafana organization database id.' } },
                      withOrgId(value): {
                        orgId: value,
                      },
                      '#withOrgRole': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Assign users of group_dn the organization role Admin, Editor, or Viewer.\nAssign users of group_dn the organization role Admin, Editor, or Viewer.' } },
                      withOrgRole(value): {
                        orgRole: value,
                      },
                    },
                  '#withGroupSearchBaseDns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of the base DNs to search through for groups. Typically uses ou=groups.\nAn array of the base DNs to search through for groups. Typically uses ou=groups.' } },
                  withGroupSearchBaseDns(value): {
                    groupSearchBaseDns:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupSearchBaseDnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of the base DNs to search through for groups. Typically uses ou=groups.\nAn array of the base DNs to search through for groups. Typically uses ou=groups.' } },
                  withGroupSearchBaseDnsMixin(value): {
                    groupSearchBaseDns+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withGroupSearchFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Group search filter, to retrieve the groups of which the user is a member (only set if memberOf attribute is not available).\nGroup search filter, to retrieve the groups of which the user is a member (only set if memberOf attribute is not available).' } },
                  withGroupSearchFilter(value): {
                    groupSearchFilter: value,
                  },
                  '#withGroupSearchFilterUserAttribute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The %s in the search filter will be replaced with the attribute defined in this field.\nThe %s in the search filter will be replaced with the attribute defined in this field.' } },
                  withGroupSearchFilterUserAttribute(value): {
                    groupSearchFilterUserAttribute: value,
                  },
                  '#withHost': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The LDAP server host.\nThe LDAP server host.' } },
                  withHost(value): {
                    host: value,
                  },
                  '#withMinTlsVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Minimum TLS version allowed. Accepted values are: TLS1.2, TLS1.3.\nMinimum TLS version allowed. Accepted values are: TLS1.2, TLS1.3.' } },
                  withMinTlsVersion(value): {
                    minTlsVersion: value,
                  },
                  '#withPort': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The LDAP server port.\nThe LDAP server port.' } },
                  withPort(value): {
                    port: value,
                  },
                  '#withRootCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the root CA certificate.\nThe path to the root CA certificate.' } },
                  withRootCaCert(value): {
                    rootCaCert: value,
                  },
                  '#withRootCaCertValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The Base64 encoded values of the root CA certificates.\nThe Base64 encoded values of the root CA certificates.' } },
                  withRootCaCertValue(value): {
                    rootCaCertValue:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withRootCaCertValueMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) The Base64 encoded values of the root CA certificates.\nThe Base64 encoded values of the root CA certificates.' } },
                  withRootCaCertValueMixin(value): {
                    rootCaCertValue+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withSearchBaseDns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of base DNs to search through.\nAn array of base DNs to search through.' } },
                  withSearchBaseDns(value): {
                    searchBaseDns:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withSearchBaseDnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) An array of base DNs to search through.\nAn array of base DNs to search through.' } },
                  withSearchBaseDnsMixin(value): {
                    searchBaseDns+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withSearchFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user search filter, for example "(cn=%s)" or "(sAMAccountName=%s)" or "(uid=%s)".\nThe user search filter, for example "(cn=%s)" or "(sAMAccountName=%s)" or "(uid=%s)".' } },
                  withSearchFilter(value): {
                    searchFilter: value,
                  },
                  '#withSslSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If set to true, the SSL cert validation will be skipped.\nIf set to true, the SSL cert validation will be skipped.' } },
                  withSslSkipVerify(value=true): {
                    sslSkipVerify: value,
                  },
                  '#withStartTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If set to true, use LDAP with STARTTLS instead of LDAPS.\nIf set to true, use LDAP with STARTTLS instead of LDAPS.' } },
                  withStartTls(value=true): {
                    startTls: value,
                  },
                  '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The timeout in seconds for connecting to the LDAP host.\nThe timeout in seconds for connecting to the LDAP host.' } },
                  withTimeout(value): {
                    timeout: value,
                  },
                  '#withTlsCiphers': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.\nAccepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.' } },
                  withTlsCiphers(value): {
                    tlsCiphers:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withTlsCiphersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(List of String) Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.\nAccepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.' } },
                  withTlsCiphersMixin(value): {
                    tlsCiphers+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withUseSsl': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Set to true if LDAP server should use an encrypted TLS connection (either with STARTTLS or LDAPS).\nSet to true if LDAP server should use an encrypted TLS connection (either with STARTTLS or LDAPS).' } },
                  withUseSsl(value=true): {
                    useSsl: value,
                  },
                },
            },
          '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.\nDefine whether this configuration is enabled for LDAP. Defaults to `true`.' } },
          withEnabled(value=true): {
            enabled: value,
          },
          '#withSkipOrgRoleSync': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Prevent synchronizing users’ organization roles from LDAP.\nPrevent synchronizing users’ organization roles from LDAP.' } },
          withSkipOrgRoleSync(value=true): {
            skipOrgRoleSync: value,
          },
        },
      '#withOauth2Settings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers. (see below for nested schema)\nThe OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers.' } },
      withOauth2Settings(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              oauth2Settings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withOauth2SettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers. (see below for nested schema)\nThe OAuth2 settings set. Required for github, gitlab, google, azuread, okta, generic_oauth providers.' } },
      withOauth2SettingsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              oauth2Settings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      oauth2Settings+:
        {
          '#': { help: '', name: 'oauth2Settings' },
          '#withAllowAssignGrafanaAdmin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, it will automatically sync the Grafana server administrator role.\nIf enabled, it will automatically sync the Grafana server administrator role.' } },
          withAllowAssignGrafanaAdmin(value=true): {
            allowAssignGrafanaAdmin: value,
          },
          '#withAllowSignUp': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.\nIf not enabled, only existing Grafana users can log in using OAuth.' } },
          withAllowSignUp(value=true): {
            allowSignUp: value,
          },
          '#withAllowedDomains': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated domains. The user should belong to at least one domain to log in.\nList of comma- or space-separated domains. The user should belong to at least one domain to log in.' } },
          withAllowedDomains(value): {
            allowedDomains: value,
          },
          '#withAllowedGroups': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated groups. The user should be a member of at least one group to log in. For Generic OAuth, if you configure allowed_groups, you must also configure groups_attribute_path.\nList of comma- or space-separated groups. The user should be a member of at least one group to log in. For Generic OAuth, if you configure allowed_groups, you must also configure groups_attribute_path.' } },
          withAllowedGroups(value): {
            allowedGroups: value,
          },
          '#withAllowedOrganizations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated organizations. The user should be a member of at least one organization to log in.\nList of comma- or space-separated organizations. The user should be a member of at least one organization to log in.' } },
          withAllowedOrganizations(value): {
            allowedOrganizations: value,
          },
          '#withApiUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The user information endpoint of your OAuth2 provider. Required for okta and generic_oauth providers.\nThe user information endpoint of your OAuth2 provider. Required for okta and generic_oauth providers.' } },
          withApiUrl(value): {
            apiUrl: value,
          },
          '#withAuthStyle': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) It determines how client_id and client_secret are sent to Oauth2 provider. Possible values are AutoDetect, InParams, InHeader. Default is AutoDetect.\nIt determines how client_id and client_secret are sent to Oauth2 provider. Possible values are AutoDetect, InParams, InHeader. Default is AutoDetect.' } },
          withAuthStyle(value): {
            authStyle: value,
          },
          '#withAuthUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The authorization endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.\nThe authorization endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.' } },
          withAuthUrl(value): {
            authUrl: value,
          },
          '#withAutoLogin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Log in automatically, skipping the login screen.\nLog in automatically, skipping the login screen.' } },
          withAutoLogin(value=true): {
            autoLogin: value,
          },
          '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The client Id of your OAuth2 app.\nThe client Id of your OAuth2 app.' } },
          withClientId(value): {
            clientId: value,
          },
          '#withClientSecretSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of your OAuth2 app.\nThe client secret of your OAuth2 app.' } },
          withClientSecretSecretRef(value): {
            clientSecretSecretRef: value,
          },
          '#withClientSecretSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) The client secret of your OAuth2 app.\nThe client secret of your OAuth2 app.' } },
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
          '#withCustom': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom fields to configure for OAuth2 such as the force_use_graph_api field.\nCustom fields to configure for OAuth2 such as the [force_use_graph_api](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/azuread/#force-fetching-groups-from-microsoft-graph-api) field.' } },
          withCustom(value): {
            custom: value,
          },
          '#withCustomMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) Custom fields to configure for OAuth2 such as the force_use_graph_api field.\nCustom fields to configure for OAuth2 such as the [force_use_graph_api](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/azuread/#force-fetching-groups-from-microsoft-graph-api) field.' } },
          withCustomMixin(value): {
            custom+: value,
          },
          '#withDefineAllowedGroups': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define allowed groups.\nDefine allowed groups.' } },
          withDefineAllowedGroups(value=true): {
            defineAllowedGroups: value,
          },
          '#withDefineAllowedTeamsIds': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define allowed teams ids.\nDefine allowed teams ids.' } },
          withDefineAllowedTeamsIds(value=true): {
            defineAllowedTeamsIds: value,
          },
          '#withEmailAttributeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the key to use for user email lookup within the attributes map of OAuth2 ID token. Only applicable to Generic OAuth.\nName of the key to use for user email lookup within the attributes map of OAuth2 ID token. Only applicable to Generic OAuth.' } },
          withEmailAttributeName(value): {
            emailAttributeName: value,
          },
          '#withEmailAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user email lookup from the user information. Only applicable to Generic OAuth.\nJMESPath expression to use for user email lookup from the user information. Only applicable to Generic OAuth.' } },
          withEmailAttributePath(value): {
            emailAttributePath: value,
          },
          '#withEmptyScopes': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, no scopes will be sent to the OAuth2 provider.\nIf enabled, no scopes will be sent to the OAuth2 provider.' } },
          withEmptyScopes(value=true): {
            emptyScopes: value,
          },
          '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.\nDefine whether this configuration is enabled for the specified provider. Defaults to `true`.' } },
          withEnabled(value=true): {
            enabled: value,
          },
          '#withGroupsAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user group lookup. If you configure allowed_groups, you must also configure groups_attribute_path.\nJMESPath expression to use for user group lookup. If you configure allowed_groups, you must also configure groups_attribute_path.' } },
          withGroupsAttributePath(value): {
            groupsAttributePath: value,
          },
          '#withIdTokenAttributeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the key used to extract the ID token from the returned OAuth2 token. Only applicable to Generic OAuth.\nThe name of the key used to extract the ID token from the returned OAuth2 token. Only applicable to Generic OAuth.' } },
          withIdTokenAttributeName(value): {
            idTokenAttributeName: value,
          },
          '#withLoginAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user login lookup from the user ID token. Only applicable to Generic OAuth.\nJMESPath expression to use for user login lookup from the user ID token. Only applicable to Generic OAuth.' } },
          withLoginAttributePath(value): {
            loginAttributePath: value,
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Helpful if you use more than one identity providers or SSO protocols.\nHelpful if you use more than one identity providers or SSO protocols.' } },
          withName(value): {
            name: value,
          },
          '#withNameAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for user name lookup from the user ID token. This name will be used as the user’s display name. Only applicable to Generic OAuth.\nJMESPath expression to use for user name lookup from the user ID token. This name will be used as the user’s display name. Only applicable to Generic OAuth.' } },
          withNameAttributePath(value): {
            nameAttributePath: value,
          },
          '#withOrgAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for the organization mapping lookup from the user ID token. The extracted list will be used for the organization mapping (to match "Organization" in the "org_mapping"). Only applicable to Generic OAuth and Okta.\nJMESPath expression to use for the organization mapping lookup from the user ID token. The extracted list will be used for the organization mapping (to match "Organization" in the "org_mapping"). Only applicable to Generic OAuth and Okta.' } },
          withOrgAttributePath(value): {
            orgAttributePath: value,
          },
          '#withOrgMapping': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.\nList of comma- or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.' } },
          withOrgMapping(value): {
            orgMapping: value,
          },
          '#withRoleAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) JMESPath expression to use for Grafana role lookup.\nJMESPath expression to use for Grafana role lookup.' } },
          withRoleAttributePath(value): {
            roleAttributePath: value,
          },
          '#withRoleAttributeStrict': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, denies user login if the Grafana role cannot be extracted using Role attribute path.\nIf enabled, denies user login if the Grafana role cannot be extracted using Role attribute path.' } },
          withRoleAttributeStrict(value=true): {
            roleAttributeStrict: value,
          },
          '#withScopes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated OAuth2 scopes.\nList of comma- or space-separated OAuth2 scopes.' } },
          withScopes(value): {
            scopes: value,
          },
          '#withSignoutRedirectUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL to redirect the user to after signing out from Grafana.\nThe URL to redirect the user to after signing out from Grafana.' } },
          withSignoutRedirectUrl(value): {
            signoutRedirectUrl: value,
          },
          '#withSkipOrgRoleSync': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Prevent synchronizing users’ organization roles from LDAP.\nPrevent synchronizing users’ organization roles from your IdP.' } },
          withSkipOrgRoleSync(value=true): {
            skipOrgRoleSync: value,
          },
          '#withTeamIds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) String list of Team Ids. If set, the user must be a member of one of the given teams to log in. If you configure team_ids, you must also configure teams_url and team_ids_attribute_path.\nString list of Team Ids. If set, the user must be a member of one of the given teams to log in. If you configure team_ids, you must also configure teams_url and team_ids_attribute_path.' } },
          withTeamIds(value): {
            teamIds: value,
          },
          '#withTeamIdsAttributePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The JMESPath expression to use for Grafana Team Id lookup within the results returned by the teams_url endpoint. Only applicable to Generic OAuth.\nThe JMESPath expression to use for Grafana Team Id lookup within the results returned by the teams_url endpoint. Only applicable to Generic OAuth.' } },
          withTeamIdsAttributePath(value): {
            teamIdsAttributePath: value,
          },
          '#withTeamsUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL used to query for Team Ids. If not set, the default value is /teams. If you configure teams_url, you must also configure team_ids_attribute_path. Only applicable to Generic OAuth.\nThe URL used to query for Team Ids. If not set, the default value is /teams. If you configure teams_url, you must also configure team_ids_attribute_path. Only applicable to Generic OAuth.' } },
          withTeamsUrl(value): {
            teamsUrl: value,
          },
          '#withTlsClientCa': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the trusted certificate authority list. Is not applicable on Grafana Cloud.\nThe path to the trusted certificate authority list. Is not applicable on Grafana Cloud.' } },
          withTlsClientCa(value): {
            tlsClientCa: value,
          },
          '#withTlsClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the certificate. Is not applicable on Grafana Cloud.\nThe path to the certificate. Is not applicable on Grafana Cloud.' } },
          withTlsClientCert(value): {
            tlsClientCert: value,
          },
          '#withTlsClientKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The path to the key. Is not applicable on Grafana Cloud.\nThe path to the key. Is not applicable on Grafana Cloud.' } },
          withTlsClientKey(value): {
            tlsClientKey: value,
          },
          '#withTlsSkipVerifyInsecure': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'in-the-middle attacks.\nIf enabled, the client accepts any certificate presented by the server and any host name in that certificate. You should only use this for testing, because this mode leaves SSL/TLS susceptible to man-in-the-middle attacks.' } },
          withTlsSkipVerifyInsecure(value=true): {
            tlsSkipVerifyInsecure: value,
          },
          '#withTokenUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.\nThe token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.' } },
          withTokenUrl(value): {
            tokenUrl: value,
          },
          '#withUsePkce': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, Grafana will use Proof Key for Code Exchange (PKCE) with the OAuth2 Authorization Code Grant.\nIf enabled, Grafana will use Proof Key for Code Exchange (PKCE) with the OAuth2 Authorization Code Grant.' } },
          withUsePkce(value=true): {
            usePkce: value,
          },
          '#withUseRefreshToken': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, Grafana will fetch a new access token using the refresh token provided by the OAuth2 provider.\nIf enabled, Grafana will fetch a new access token using the refresh token provided by the OAuth2 provider.' } },
          withUseRefreshToken(value=true): {
            useRefreshToken: value,
          },
        },
      '#withProviderName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the SSO provider. Supported values: github, gitlab, google, azuread, okta, generic_oauth, saml, ldap.\nThe name of the SSO provider. Supported values: github, gitlab, google, azuread, okta, generic_oauth, saml, ldap.' } },
      withProviderName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              providerName: value,
            },
          },
        },
      },
      '#withSamlSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The SAML settings set. Required for the saml provider. (see below for nested schema)\nThe SAML settings set. Required for the saml provider.' } },
      withSamlSettings(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              samlSettings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSamlSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) The SAML settings set. Required for the saml provider. (see below for nested schema)\nThe SAML settings set. Required for the saml provider.' } },
      withSamlSettingsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              samlSettings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      samlSettings+:
        {
          '#': { help: '', name: 'samlSettings' },
          '#withAllowIdpInitiated': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'initiated login is allowed.\nWhether SAML IdP-initiated login is allowed.' } },
          withAllowIdpInitiated(value=true): {
            allowIdpInitiated: value,
          },
          '#withAllowSignUp': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.\nWhether to allow new Grafana user creation through SAML login. If set to false, then only existing Grafana users can log in with SAML.' } },
          withAllowSignUp(value=true): {
            allowSignUp: value,
          },
          '#withAllowedOrganizations': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated organizations. The user should be a member of at least one organization to log in.\nList of comma- or space-separated organizations. User should be a member of at least one organization to log in.' } },
          withAllowedOrganizations(value): {
            allowedOrganizations: value,
          },
          '#withAssertionAttributeEmail': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user email.\nFriendly name or name of the attribute within the SAML assertion to use as the user email.' } },
          withAssertionAttributeEmail(value): {
            assertionAttributeEmail: value,
          },
          '#withAssertionAttributeGroups': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user groups.\nFriendly name or name of the attribute within the SAML assertion to use as the user groups.' } },
          withAssertionAttributeGroups(value): {
            assertionAttributeGroups: value,
          },
          '#withAssertionAttributeLogin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user login handle.\nFriendly name or name of the attribute within the SAML assertion to use as the user login handle.' } },
          withAssertionAttributeLogin(value): {
            assertionAttributeLogin: value,
          },
          '#withAssertionAttributeName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user name. Alternatively, this can be a template with variables that match the names of attributes within the SAML assertion.\nFriendly name or name of the attribute within the SAML assertion to use as the user name. Alternatively, this can be a template with variables that match the names of attributes within the SAML assertion.' } },
          withAssertionAttributeName(value): {
            assertionAttributeName: value,
          },
          '#withAssertionAttributeOrg': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user organization.\nFriendly name or name of the attribute within the SAML assertion to use as the user organization.' } },
          withAssertionAttributeOrg(value): {
            assertionAttributeOrg: value,
          },
          '#withAssertionAttributeRole': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Friendly name or name of the attribute within the SAML assertion to use as the user roles.\nFriendly name or name of the attribute within the SAML assertion to use as the user roles.' } },
          withAssertionAttributeRole(value): {
            assertionAttributeRole: value,
          },
          '#withAutoLogin': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Log in automatically, skipping the login screen.\nWhether SAML auto login is enabled.' } },
          withAutoLogin(value=true): {
            autoLogin: value,
          },
          '#withCertificatePath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Path for the SP X.509 certificate.\nPath for the SP X.509 certificate.' } },
          withCertificatePath(value): {
            certificatePath: value,
          },
          '#withCertificateSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP X.509 certificate.\nBase64-encoded string for the SP X.509 certificate.' } },
          withCertificateSecretRef(value): {
            certificateSecretRef: value,
          },
          '#withCertificateSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP X.509 certificate.\nBase64-encoded string for the SP X.509 certificate.' } },
          withCertificateSecretRefMixin(value): {
            certificateSecretRef+: value,
          },
          certificateSecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                certificateSecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                certificateSecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                certificateSecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withClientId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The client Id of your OAuth2 app.\nThe client Id of your OAuth2 app.' } },
          withClientId(value): {
            clientId: value,
          },
          '#withClientSecret': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String, Sensitive) The client secret of your OAuth2 app.\nThe client secret of your OAuth2 app.' } },
          withClientSecret(value): {
            clientSecret: value,
          },
          '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.\nDefine whether this configuration is enabled for SAML. Defaults to `true`.' } },
          withEnabled(value=true): {
            enabled: value,
          },
          '#withForceUseGraphApi': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) If enabled, Grafana will fetch groups from Microsoft Graph API instead of using the groups claim from the ID token.\nIf enabled, Grafana will fetch groups from Microsoft Graph API instead of using the groups claim from the ID token.' } },
          withForceUseGraphApi(value=true): {
            forceUseGraphApi: value,
          },
          '#withIdpMetadata': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'encoded string for the IdP SAML metadata XML.\nBase64-encoded string for the IdP SAML metadata XML.' } },
          withIdpMetadata(value): {
            idpMetadata: value,
          },
          '#withIdpMetadataPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Path for the IdP SAML metadata XML.\nPath for the IdP SAML metadata XML.' } },
          withIdpMetadataPath(value): {
            idpMetadataPath: value,
          },
          '#withIdpMetadataUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) URL for the IdP SAML metadata XML.\nURL for the IdP SAML metadata XML.' } },
          withIdpMetadataUrl(value): {
            idpMetadataUrl: value,
          },
          '#withMaxIssueDelay': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Duration, since the IdP issued a response and the SP is allowed to process it. For example: 90s, 1h.\nDuration, since the IdP issued a response and the SP is allowed to process it. For example: 90s, 1h.' } },
          withMaxIssueDelay(value): {
            maxIssueDelay: value,
          },
          '#withMetadataValidDuration': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Duration, for how long the SP metadata is valid. For example: 48h, 5d.\nDuration, for how long the SP metadata is valid. For example: 48h, 5d.' } },
          withMetadataValidDuration(value): {
            metadataValidDuration: value,
          },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Helpful if you use more than one identity providers or SSO protocols.\nName used to refer to the SAML authentication.' } },
          withName(value): {
            name: value,
          },
          '#withNameIdFormat': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'format:transient\nThe Name ID Format to request within the SAML assertion. Defaults to urn:oasis:names:tc:SAML:2.0:nameid-format:transient' } },
          withNameIdFormat(value): {
            nameIdFormat: value,
          },
          '#withOrgMapping': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.\nList of comma- or space-separated Organization:OrgId:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: Viewer, Editor or Admin.' } },
          withOrgMapping(value): {
            orgMapping: value,
          },
          '#withPrivateKeyPath': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Path for the SP private key.\nPath for the SP private key.' } },
          withPrivateKeyPath(value): {
            privateKeyPath: value,
          },
          '#withPrivateKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP private key.\nBase64-encoded string for the SP private key.' } },
          withPrivateKeySecretRef(value): {
            privateKeySecretRef: value,
          },
          '#withPrivateKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'encoded string for the SP private key.\nBase64-encoded string for the SP private key.' } },
          withPrivateKeySecretRefMixin(value): {
            privateKeySecretRef+: value,
          },
          privateKeySecretRef+:
            {
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
              withKey(value): {
                privateKeySecretRef+: {
                  key: value,
                },
              },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
              withName(value): {
                privateKeySecretRef+: {
                  name: value,
                },
              },
              '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
              withNamespace(value): {
                privateKeySecretRef+: {
                  namespace: value,
                },
              },
            },
          '#withRelayState': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'initiated login. Should match relay state configured in IdP.\nRelay state for IdP-initiated login. Should match relay state configured in IdP.' } },
          withRelayState(value): {
            relayState: value,
          },
          '#withRoleValuesAdmin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Admin role.\nList of comma- or space-separated roles which will be mapped into the Admin role.' } },
          withRoleValuesAdmin(value): {
            roleValuesAdmin: value,
          },
          '#withRoleValuesEditor': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Editor role.\nList of comma- or space-separated roles which will be mapped into the Editor role.' } },
          withRoleValuesEditor(value): {
            roleValuesEditor: value,
          },
          '#withRoleValuesGrafanaAdmin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Grafana Admin (Super Admin) role.\nList of comma- or space-separated roles which will be mapped into the Grafana Admin (Super Admin) role.' } },
          withRoleValuesGrafanaAdmin(value): {
            roleValuesGrafanaAdmin: value,
          },
          '#withRoleValuesNone': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the None role.\nList of comma- or space-separated roles which will be mapped into the None role.' } },
          withRoleValuesNone(value): {
            roleValuesNone: value,
          },
          '#withRoleValuesViewer': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'or space-separated roles which will be mapped into the Viewer role.\nList of comma- or space-separated roles which will be mapped into the Viewer role.' } },
          withRoleValuesViewer(value): {
            roleValuesViewer: value,
          },
          '#withSignatureAlgorithm': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'sha1, rsa-sha256, rsa-sha512.\nSignature algorithm used for signing requests to the IdP. Supported values are rsa-sha1, rsa-sha256, rsa-sha512.' } },
          withSignatureAlgorithm(value): {
            signatureAlgorithm: value,
          },
          '#withSingleLogout': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether SAML Single Logout is enabled.\nWhether SAML Single Logout is enabled.' } },
          withSingleLogout(value=true): {
            singleLogout: value,
          },
          '#withSkipOrgRoleSync': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Prevent synchronizing users’ organization roles from LDAP.\nPrevent synchronizing users’ organization roles from your IdP.' } },
          withSkipOrgRoleSync(value=true): {
            skipOrgRoleSync: value,
          },
          '#withTokenUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.\nThe token endpoint of your OAuth2 provider. Required for Azure AD providers.' } },
          withTokenUrl(value): {
            tokenUrl: value,
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
