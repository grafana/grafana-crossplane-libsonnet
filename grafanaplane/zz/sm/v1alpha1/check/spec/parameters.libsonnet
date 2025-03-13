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
      '#withAlertSensitivity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Can be set to none, low, medium, or high to correspond to the check alert levels. Defaults to none.\nCan be set to `none`, `low`, `medium`, or `high` to correspond to the check [alert levels](https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/configure-alerts/synthetic-monitoring-alerting/). Defaults to `none`.' } },
      withAlertSensitivity(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              alertSensitivity: value,
            },
          },
        },
      },
      '#withBasicMetricsOnly': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Metrics are reduced by default. Set this to false if you'd like to publish all metrics. We maintain a full list of metrics collected for each. Defaults to true.\nMetrics are reduced by default. Set this to `false` if you'd like to publish all metrics. We maintain a [full list of metrics](https://github.com/grafana/synthetic-monitoring-agent/tree/main/internal/scraper/testdata) collected for each. Defaults to `true`." } },
      withBasicMetricsOnly(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              basicMetricsOnly: value,
            },
          },
        },
      },
      '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to enable the check. Defaults to true.\nWhether to enable the check. Defaults to `true`.' } },
      withEnabled(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              enabled: value,
            },
          },
        },
      },
      '#withFrequency': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) How often the check runs in milliseconds (the value is not truly a "frequency" but a "period"). The minimum acceptable value is 1 second (1000 ms), and the maximum is 1 hour (3600000 ms). Defaults to 60000.\nHow often the check runs in milliseconds (the value is not truly a "frequency" but a "period"). The minimum acceptable value is 1 second (1000 ms), and the maximum is 1 hour (3600000 ms). Defaults to `60000`.' } },
      withFrequency(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              frequency: value,
            },
          },
        },
      },
      '#withJob': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name used for job label.\nName used for job label.' } },
      withJob(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              job: value,
            },
          },
        },
      },
      '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.\nCustom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.' } },
      withLabels(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              labels: value,
            },
          },
        },
      },
      '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.\nCustom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.' } },
      withLabelsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              labels+: value,
            },
          },
        },
      },
      '#withProbes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) List of probe location IDs where this target will be checked from.\nList of probe location IDs where this target will be checked from.' } },
      withProbes(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              probes:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withProbesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) List of probe location IDs where this target will be checked from.\nList of probe location IDs where this target will be checked from.' } },
      withProbesMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              probes+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Min: 1, Max: 1) Check settings. Should contain exactly one nested block. (see below for nested schema)\nCheck settings. Should contain exactly one nested block.' } },
      withSettings(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              settings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Min: 1, Max: 1) Check settings. Should contain exactly one nested block. (see below for nested schema)\nCheck settings. Should contain exactly one nested block.' } },
      withSettingsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              settings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      settings+:
        {
          '#': { help: '', name: 'settings' },
          '#withBrowser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/. (see below for nested schema)\nSettings for browser check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/.' } },
          withBrowser(value): {
            browser:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withBrowserMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/. (see below for nested schema)\nSettings for browser check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/.' } },
          withBrowserMixin(value): {
            browser+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          browser+:
            {
              '#': { help: '', name: 'browser' },
              '#withScript': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
              withScript(value): {
                script: value,
              },
            },
          '#withDns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for DNS check. The target must be a valid hostname (or IP address for PTR records). (see below for nested schema)\nSettings for DNS check. The target must be a valid hostname (or IP address for `PTR` records).' } },
          withDns(value): {
            dns:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for DNS check. The target must be a valid hostname (or IP address for PTR records). (see below for nested schema)\nSettings for DNS check. The target must be a valid hostname (or IP address for `PTR` records).' } },
          withDnsMixin(value): {
            dns+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          dns+:
            {
              '#': { help: '', name: 'dns' },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withPort': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Port to target. Defaults to 53.\nPort to target. Defaults to `53`.' } },
              withPort(value): {
                port: value,
              },
              '#withProtocol': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) TCP or UDP. Defaults to UDP.\n`TCP` or `UDP`. Defaults to `UDP`.' } },
              withProtocol(value): {
                protocol: value,
              },
              '#withRecordType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) One of ANY, A, AAAA, CNAME, MX, NS, PTR, SOA, SRV, TXT. Defaults to A.\nOne of `ANY`, `A`, `AAAA`, `CNAME`, `MX`, `NS`, `PTR`, `SOA`, `SRV`, `TXT`. Defaults to `A`.' } },
              withRecordType(value): {
                recordType: value,
              },
              '#withServer': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) DNS server address to target. Defaults to 8.8.8.8.\nDNS server address to target. Defaults to `8.8.8.8`.' } },
              withServer(value): {
                server: value,
              },
              '#withSourceIpAddress': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Source IP address.\nSource IP address.' } },
              withSourceIpAddress(value): {
                sourceIpAddress: value,
              },
              '#withValidRCodes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid response codes. Options include NOERROR, BADALG, BADMODE, BADKEY, BADCOOKIE, BADNAME, BADSIG, BADTIME, BADTRUNC, BADVERS, FORMERR, NOTIMP, NOTAUTH, NOTZONE, NXDOMAIN, NXRRSET, REFUSED, SERVFAIL, YXDOMAIN, YXRRSET.\nList of valid response codes. Options include `NOERROR`, `BADALG`, `BADMODE`, `BADKEY`, `BADCOOKIE`, `BADNAME`, `BADSIG`, `BADTIME`, `BADTRUNC`, `BADVERS`, `FORMERR`, `NOTIMP`, `NOTAUTH`, `NOTZONE`, `NXDOMAIN`, `NXRRSET`, `REFUSED`, `SERVFAIL`, `YXDOMAIN`, `YXRRSET`.' } },
              withValidRCodes(value): {
                validRCodes:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidRCodesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid response codes. Options include NOERROR, BADALG, BADMODE, BADKEY, BADCOOKIE, BADNAME, BADSIG, BADTIME, BADTRUNC, BADVERS, FORMERR, NOTIMP, NOTAUTH, NOTZONE, NXDOMAIN, NXRRSET, REFUSED, SERVFAIL, YXDOMAIN, YXRRSET.\nList of valid response codes. Options include `NOERROR`, `BADALG`, `BADMODE`, `BADKEY`, `BADCOOKIE`, `BADNAME`, `BADSIG`, `BADTIME`, `BADTRUNC`, `BADVERS`, `FORMERR`, `NOTIMP`, `NOTAUTH`, `NOTZONE`, `NXDOMAIN`, `NXRRSET`, `REFUSED`, `SERVFAIL`, `YXDOMAIN`, `YXRRSET`.' } },
              withValidRCodesMixin(value): {
                validRCodes+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAdditionalRrs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Validate additional matches. (see below for nested schema)\nValidate additional matches.' } },
              withValidateAdditionalRrs(value): {
                validateAdditionalRrs:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAdditionalRrsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Validate additional matches. (see below for nested schema)\nValidate additional matches.' } },
              withValidateAdditionalRrsMixin(value): {
                validateAdditionalRrs+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              validateAdditionalRrs+:
                {
                  '#': { help: '', name: 'validateAdditionalRrs' },
                  '#withFailIfMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexp(value): {
                    failIfMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexpMixin(value): {
                    failIfMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexp(value): {
                    failIfNotMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexpMixin(value): {
                    failIfNotMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              '#withValidateAnswerRrs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response answer. (see below for nested schema)\nValidate response answer.' } },
              withValidateAnswerRrs(value): {
                validateAnswerRrs:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAnswerRrsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response answer. (see below for nested schema)\nValidate response answer.' } },
              withValidateAnswerRrsMixin(value): {
                validateAnswerRrs+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              validateAnswerRrs+:
                {
                  '#': { help: '', name: 'validateAnswerRrs' },
                  '#withFailIfMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexp(value): {
                    failIfMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexpMixin(value): {
                    failIfMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexp(value): {
                    failIfNotMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexpMixin(value): {
                    failIfNotMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              '#withValidateAuthorityRrs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response authority. (see below for nested schema)\nValidate response authority.' } },
              withValidateAuthorityRrs(value): {
                validateAuthorityRrs:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAuthorityRrsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response authority. (see below for nested schema)\nValidate response authority.' } },
              withValidateAuthorityRrsMixin(value): {
                validateAuthorityRrs+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              validateAuthorityRrs+:
                {
                  '#': { help: '', name: 'validateAuthorityRrs' },
                  '#withFailIfMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexp(value): {
                    failIfMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexpMixin(value): {
                    failIfMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexp(value): {
                    failIfNotMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexpMixin(value): {
                    failIfNotMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
            },
          '#withGrpc': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for gRPC Health check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for gRPC Health check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withGrpc(value): {
            grpc:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGrpcMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for gRPC Health check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for gRPC Health check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withGrpcMixin(value): {
            grpc+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          grpc+:
            {
              '#': { help: '', name: 'grpc' },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withService': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) gRPC service.\ngRPC service.' } },
              withService(value): {
                service: value,
              },
              '#withTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether or not TLS is used when the connection is initiated. Defaults to false.\nWhether or not TLS is used when the connection is initiated. Defaults to `false`.' } },
              withTls(value=true): {
                tls: value,
              },
              '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfig(value): {
                tlsConfig:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfigMixin(value): {
                tlsConfig+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              tlsConfig+:
                {
                  '#': { help: '', name: 'tlsConfig' },
                  '#withCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) CA certificate in PEM format.\nCA certificate in PEM format.' } },
                  withCaCert(value): {
                    caCert: value,
                  },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client certificate in PEM format.\nClient certificate in PEM format.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
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
                  '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Disable target certificate validation. Defaults to false.\nDisable target certificate validation. Defaults to `false`.' } },
                  withInsecureSkipVerify(value=true): {
                    insecureSkipVerify: value,
                  },
                  '#withServerName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Used to verify the hostname for the targets.\nUsed to verify the hostname for the targets.' } },
                  withServerName(value): {
                    serverName: value,
                  },
                },
            },
          '#withHttp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for HTTP check. The target must be a URL (http or https). (see below for nested schema)\nSettings for HTTP check. The target must be a URL (http or https).' } },
          withHttp(value): {
            http:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withHttpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for HTTP check. The target must be a URL (http or https). (see below for nested schema)\nSettings for HTTP check. The target must be a URL (http or https).' } },
          withHttpMixin(value): {
            http+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          http+:
            {
              '#': { help: '', name: 'http' },
              '#withBasicAuth': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Basic auth settings. (see below for nested schema)\nBasic auth settings.' } },
              withBasicAuth(value): {
                basicAuth:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withBasicAuthMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Basic auth settings. (see below for nested schema)\nBasic auth settings.' } },
              withBasicAuthMixin(value): {
                basicAuth+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              basicAuth+:
                {
                  '#': { help: '', name: 'basicAuth' },
                  '#withPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Basic auth password.\nBasic auth password.' } },
                  withPasswordSecretRef(value): {
                    passwordSecretRef: value,
                  },
                  '#withPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Basic auth password.\nBasic auth password.' } },
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
                  '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Basic auth username.\nBasic auth username.' } },
                  withUsername(value): {
                    username: value,
                  },
                },
              '#withBearerTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Token for use with bearer authorization header.\nToken for use with bearer authorization header.' } },
              withBearerTokenSecretRef(value): {
                bearerTokenSecretRef: value,
              },
              '#withBearerTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Token for use with bearer authorization header.\nToken for use with bearer authorization header.' } },
              withBearerTokenSecretRefMixin(value): {
                bearerTokenSecretRef+: value,
              },
              bearerTokenSecretRef+:
                {
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                  withKey(value): {
                    bearerTokenSecretRef+: {
                      key: value,
                    },
                  },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                  withName(value): {
                    bearerTokenSecretRef+: {
                      name: value,
                    },
                  },
                  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                  withNamespace(value): {
                    bearerTokenSecretRef+: {
                      namespace: value,
                    },
                  },
                },
              '#withBody': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The body of the HTTP request used in probe.\nThe body of the HTTP request used in probe.' } },
              withBody(value): {
                body: value,
              },
              '#withCacheBustingQueryParamName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the query parameter used to prevent the server from using a cached response. Each probe will assign a random value to this parameter each time a request is made.\nThe name of the query parameter used to prevent the server from using a cached response. Each probe will assign a random value to this parameter each time a request is made.' } },
              withCacheBustingQueryParamName(value): {
                cacheBustingQueryParamName: value,
              },
              '#withCompression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Check fails if the response body is not compressed using this compression algorithm. One of none, identity, br, gzip, deflate.\nCheck fails if the response body is not compressed using this compression algorithm. One of `none`, `identity`, `br`, `gzip`, `deflate`.' } },
              withCompression(value): {
                compression: value,
              },
              '#withFailIfBodyMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any match the response body, the check will fail.\nList of regexes. If any match the response body, the check will fail.' } },
              withFailIfBodyMatchesRegexp(value): {
                failIfBodyMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfBodyMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any match the response body, the check will fail.\nList of regexes. If any match the response body, the check will fail.' } },
              withFailIfBodyMatchesRegexpMixin(value): {
                failIfBodyMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfBodyNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any do not match the response body, the check will fail.\nList of regexes. If any do not match the response body, the check will fail.' } },
              withFailIfBodyNotMatchesRegexp(value): {
                failIfBodyNotMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfBodyNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any do not match the response body, the check will fail.\nList of regexes. If any do not match the response body, the check will fail.' } },
              withFailIfBodyNotMatchesRegexpMixin(value): {
                failIfBodyNotMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfHeaderMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers match. (see below for nested schema)\nCheck fails if headers match.' } },
              withFailIfHeaderMatchesRegexp(value): {
                failIfHeaderMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfHeaderMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers match. (see below for nested schema)\nCheck fails if headers match.' } },
              withFailIfHeaderMatchesRegexpMixin(value): {
                failIfHeaderMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              failIfHeaderMatchesRegexp+:
                {
                  '#': { help: '', name: 'failIfHeaderMatchesRegexp' },
                  '#withAllowMissing': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Allow header to be missing from responses. Defaults to false.\nAllow header to be missing from responses. Defaults to `false`.' } },
                  withAllowMissing(value=true): {
                    allowMissing: value,
                  },
                  '#withHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Header name.\nHeader name.' } },
                  withHeader(value): {
                    header: value,
                  },
                  '#withRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Regex that header value should match.\nRegex that header value should match.' } },
                  withRegexp(value): {
                    regexp: value,
                  },
                },
              '#withFailIfHeaderNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers do not match. (see below for nested schema)\nCheck fails if headers do not match.' } },
              withFailIfHeaderNotMatchesRegexp(value): {
                failIfHeaderNotMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfHeaderNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers do not match. (see below for nested schema)\nCheck fails if headers do not match.' } },
              withFailIfHeaderNotMatchesRegexpMixin(value): {
                failIfHeaderNotMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              failIfHeaderNotMatchesRegexp+:
                {
                  '#': { help: '', name: 'failIfHeaderNotMatchesRegexp' },
                  '#withAllowMissing': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Allow header to be missing from responses. Defaults to false.\nAllow header to be missing from responses. Defaults to `false`.' } },
                  withAllowMissing(value=true): {
                    allowMissing: value,
                  },
                  '#withHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Header name.\nHeader name.' } },
                  withHeader(value): {
                    header: value,
                  },
                  '#withRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Regex that header value should match.\nRegex that header value should match.' } },
                  withRegexp(value): {
                    regexp: value,
                  },
                },
              '#withFailIfNotSsl': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Fail if SSL is not present. Defaults to false.\nFail if SSL is not present. Defaults to `false`.' } },
              withFailIfNotSsl(value=true): {
                failIfNotSsl: value,
              },
              '#withFailIfSsl': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Fail if SSL is present. Defaults to false.\nFail if SSL is present. Defaults to `false`.' } },
              withFailIfSsl(value=true): {
                failIfSsl: value,
              },
              '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe HTTP headers set for the probe.' } },
              withHeaders(value): {
                headers:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe HTTP headers set for the probe.' } },
              withHeadersMixin(value): {
                headers+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Request method. One of GET, CONNECT, DELETE, HEAD, OPTIONS, POST, PUT, TRACE Defaults to GET.\nRequest method. One of `GET`, `CONNECT`, `DELETE`, `HEAD`, `OPTIONS`, `POST`, `PUT`, `TRACE` Defaults to `GET`.' } },
              withMethod(value): {
                method: value,
              },
              '#withNoFollowRedirects': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Do not follow redirects. Defaults to false.\nDo not follow redirects. Defaults to `false`.' } },
              withNoFollowRedirects(value=true): {
                noFollowRedirects: value,
              },
              '#withProxyConnectHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers sent to the proxy URL\nThe HTTP headers sent to the proxy URL' } },
              withProxyConnectHeaders(value): {
                proxyConnectHeaders:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withProxyConnectHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers sent to the proxy URL\nThe HTTP headers sent to the proxy URL' } },
              withProxyConnectHeadersMixin(value): {
                proxyConnectHeaders+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withProxyUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Proxy URL.\nProxy URL.' } },
              withProxyUrl(value): {
                proxyUrl: value,
              },
              '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfig(value): {
                tlsConfig:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfigMixin(value): {
                tlsConfig+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              tlsConfig+:
                {
                  '#': { help: '', name: 'tlsConfig' },
                  '#withCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) CA certificate in PEM format.\nCA certificate in PEM format.' } },
                  withCaCert(value): {
                    caCert: value,
                  },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client certificate in PEM format.\nClient certificate in PEM format.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
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
                  '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Disable target certificate validation. Defaults to false.\nDisable target certificate validation. Defaults to `false`.' } },
                  withInsecureSkipVerify(value=true): {
                    insecureSkipVerify: value,
                  },
                  '#withServerName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Used to verify the hostname for the targets.\nUsed to verify the hostname for the targets.' } },
                  withServerName(value): {
                    serverName: value,
                  },
                },
              '#withValidHttpVersions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid HTTP versions. Options include HTTP/1.0, HTTP/1.1, HTTP/2.0\nList of valid HTTP versions. Options include `HTTP/1.0`, `HTTP/1.1`, `HTTP/2.0`' } },
              withValidHttpVersions(value): {
                validHttpVersions:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidHttpVersionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid HTTP versions. Options include HTTP/1.0, HTTP/1.1, HTTP/2.0\nList of valid HTTP versions. Options include `HTTP/1.0`, `HTTP/1.1`, `HTTP/2.0`' } },
              withValidHttpVersionsMixin(value): {
                validHttpVersions+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidStatusCodes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) Accepted status codes. If unset, defaults to 2xx.\nAccepted status codes. If unset, defaults to 2xx.' } },
              withValidStatusCodes(value): {
                validStatusCodes:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidStatusCodesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) Accepted status codes. If unset, defaults to 2xx.\nAccepted status codes. If unset, defaults to 2xx.' } },
              withValidStatusCodesMixin(value): {
                validStatusCodes+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
            },
          '#withMultihttp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for MultiHTTP check. The target must be a URL (http or https) (see below for nested schema)\nSettings for MultiHTTP check. The target must be a URL (http or https)' } },
          withMultihttp(value): {
            multihttp:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMultihttpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for MultiHTTP check. The target must be a URL (http or https) (see below for nested schema)\nSettings for MultiHTTP check. The target must be a URL (http or https)' } },
          withMultihttpMixin(value): {
            multihttp+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          multihttp+:
            {
              '#': { help: '', name: 'multihttp' },
              '#withEntries': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) (see below for nested schema)' } },
              withEntries(value): {
                entries:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withEntriesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) (see below for nested schema)' } },
              withEntriesMixin(value): {
                entries+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              entries+:
                {
                  '#': { help: '', name: 'entries' },
                  '#withAssertions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Assertions to make on the request response (see below for nested schema)\nAssertions to make on the request response' } },
                  withAssertions(value): {
                    assertions:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withAssertionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Assertions to make on the request response (see below for nested schema)\nAssertions to make on the request response' } },
                  withAssertionsMixin(value): {
                    assertions+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  assertions+:
                    {
                      '#': { help: '', name: 'assertions' },
                      '#withCondition': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The condition of the assertion: NOT_CONTAINS, EQUALS, STARTS_WITH, ENDS_WITH, TYPE_OF, CONTAINS\nThe condition of the assertion: NOT_CONTAINS, EQUALS, STARTS_WITH, ENDS_WITH, TYPE_OF, CONTAINS' } },
                      withCondition(value): {
                        condition: value,
                      },
                      '#withExpression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The expression of the assertion. Should start with $.\nThe expression of the assertion. Should start with $.' } },
                      withExpression(value): {
                        expression: value,
                      },
                      '#withSubject': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The subject of the assertion: RESPONSE_HEADERS, HTTP_STATUS_CODE, RESPONSE_BODY\nThe subject of the assertion: RESPONSE_HEADERS, HTTP_STATUS_CODE, RESPONSE_BODY' } },
                      withSubject(value): {
                        subject: value,
                      },
                      '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION\nThe type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION' } },
                      withType(value): {
                        type: value,
                      },
                      '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the assertion\nThe value of the assertion' } },
                      withValue(value): {
                        value: value,
                      },
                    },
                  '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) An individual MultiHTTP request (see below for nested schema)\nAn individual MultiHTTP request' } },
                  withRequest(value): {
                    request:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withRequestMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) An individual MultiHTTP request (see below for nested schema)\nAn individual MultiHTTP request' } },
                  withRequestMixin(value): {
                    request+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  request+:
                    {
                      '#': { help: '', name: 'request' },
                      '#withBody': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(String) The body of the HTTP request used in probe.\nThe body of the HTTP request used in probe.' } },
                      withBody(value): {
                        body:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withBodyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(String) The body of the HTTP request used in probe.\nThe body of the HTTP request used in probe.' } },
                      withBodyMixin(value): {
                        body+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      body+:
                        {
                          '#': { help: '', name: 'body' },
                          '#withContentEncoding': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The content encoding of the body\nThe content encoding of the body' } },
                          withContentEncoding(value): {
                            contentEncoding: value,
                          },
                          '#withContentType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The content type of the body\nThe content type of the body' } },
                          withContentType(value): {
                            contentType: value,
                          },
                          '#withPayload': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The body payload\nThe body payload' } },
                          withPayload(value): {
                            payload: value,
                          },
                        },
                      '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe headers to send with the request' } },
                      withHeaders(value): {
                        headers:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe headers to send with the request' } },
                      withHeadersMixin(value): {
                        headers+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      headers+:
                        {
                          '#': { help: '', name: 'headers' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the header to send\nName of the header to send' } },
                          withName(value): {
                            name: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the assertion\nValue of the header to send' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Request method. One of GET, CONNECT, DELETE, HEAD, OPTIONS, POST, PUT, TRACE Defaults to GET.\nThe HTTP method to use' } },
                      withMethod(value): {
                        method: value,
                      },
                      '#withQueryFields': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Query fields to send with the request (see below for nested schema)\nQuery fields to send with the request' } },
                      withQueryFields(value): {
                        queryFields:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withQueryFieldsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Query fields to send with the request (see below for nested schema)\nQuery fields to send with the request' } },
                      withQueryFieldsMixin(value): {
                        queryFields+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      queryFields+:
                        {
                          '#': { help: '', name: 'queryFields' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the header to send\nName of the query field to send' } },
                          withName(value): {
                            name: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the assertion\nValue of the query field to send' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL for the request\nThe URL for the request' } },
                      withUrl(value): {
                        url: value,
                      },
                    },
                  '#withVariables': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Variables to extract from the request response (see below for nested schema)\nVariables to extract from the request response' } },
                  withVariables(value): {
                    variables:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withVariablesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Variables to extract from the request response (see below for nested schema)\nVariables to extract from the request response' } },
                  withVariablesMixin(value): {
                    variables+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  variables+:
                    {
                      '#': { help: '', name: 'variables' },
                      '#withAttribute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The attribute to use when finding the variable value. Only used when type is CSS_SELECTOR\nThe attribute to use when finding the variable value. Only used when type is CSS_SELECTOR' } },
                      withAttribute(value): {
                        attribute: value,
                      },
                      '#withExpression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The expression of the assertion. Should start with $.\nThe expression to when finding the variable. Should start with $. Only use when type is JSON_PATH or REGEX' } },
                      withExpression(value): {
                        expression: value,
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the header to send\nThe name of the variable to extract' } },
                      withName(value): {
                        name: value,
                      },
                      '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION\nThe method of finding the variable value to extract. JSON_PATH, REGEX, CSS_SELECTOR' } },
                      withType(value): {
                        type: value,
                      },
                    },
                },
            },
          '#withPing': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for ping (ICMP) check. The target must be a valid hostname or IP address. (see below for nested schema)\nSettings for ping (ICMP) check. The target must be a valid hostname or IP address.' } },
          withPing(value): {
            ping:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPingMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for ping (ICMP) check. The target must be a valid hostname or IP address. (see below for nested schema)\nSettings for ping (ICMP) check. The target must be a valid hostname or IP address.' } },
          withPingMixin(value): {
            ping+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          ping+:
            {
              '#': { help: '', name: 'ping' },
              '#withDontFragment': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'bit in the IP-header. Only works with ipV4. Defaults to false.\nSet the DF-bit in the IP-header. Only works with ipV4. Defaults to `false`.' } },
              withDontFragment(value=true): {
                dontFragment: value,
              },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withPayloadSize': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Payload size. Defaults to 0.\nPayload size. Defaults to `0`.' } },
              withPayloadSize(value): {
                payloadSize: value,
              },
              '#withSourceIpAddress': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Source IP address.\nSource IP address.' } },
              withSourceIpAddress(value): {
                sourceIpAddress: value,
              },
            },
          '#withScripted': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6/. (see below for nested schema)\nSettings for scripted check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6/.' } },
          withScripted(value): {
            scripted:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withScriptedMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6/. (see below for nested schema)\nSettings for scripted check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6/.' } },
          withScriptedMixin(value): {
            scripted+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          scripted+:
            {
              '#': { help: '', name: 'scripted' },
              '#withScript': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
              withScript(value): {
                script: value,
              },
            },
          '#withTcp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for TCP check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for TCP check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withTcp(value): {
            tcp:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTcpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for TCP check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for TCP check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withTcpMixin(value): {
            tcp+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          tcp+:
            {
              '#': { help: '', name: 'tcp' },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withQueryResponse': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) The query sent in the TCP probe and the expected associated response. (see below for nested schema)\nThe query sent in the TCP probe and the expected associated response.' } },
              withQueryResponse(value): {
                queryResponse:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withQueryResponseMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) The query sent in the TCP probe and the expected associated response. (see below for nested schema)\nThe query sent in the TCP probe and the expected associated response.' } },
              withQueryResponseMixin(value): {
                queryResponse+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              queryResponse+:
                {
                  '#': { help: '', name: 'queryResponse' },
                  '#withExpect': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Response to expect.\nResponse to expect.' } },
                  withExpect(value): {
                    expect: value,
                  },
                  '#withSend': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Data to send.\nData to send.' } },
                  withSend(value): {
                    send: value,
                  },
                  '#withStartTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Upgrade TCP connection to TLS. Defaults to false.\nUpgrade TCP connection to TLS. Defaults to `false`.' } },
                  withStartTls(value=true): {
                    startTls: value,
                  },
                },
              '#withSourceIpAddress': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Source IP address.\nSource IP address.' } },
              withSourceIpAddress(value): {
                sourceIpAddress: value,
              },
              '#withTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether or not TLS is used when the connection is initiated. Defaults to false.\nWhether or not TLS is used when the connection is initiated. Defaults to `false`.' } },
              withTls(value=true): {
                tls: value,
              },
              '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfig(value): {
                tlsConfig:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfigMixin(value): {
                tlsConfig+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              tlsConfig+:
                {
                  '#': { help: '', name: 'tlsConfig' },
                  '#withCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) CA certificate in PEM format.\nCA certificate in PEM format.' } },
                  withCaCert(value): {
                    caCert: value,
                  },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client certificate in PEM format.\nClient certificate in PEM format.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
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
                  '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Disable target certificate validation. Defaults to false.\nDisable target certificate validation. Defaults to `false`.' } },
                  withInsecureSkipVerify(value=true): {
                    insecureSkipVerify: value,
                  },
                  '#withServerName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Used to verify the hostname for the targets.\nUsed to verify the hostname for the targets.' } },
                  withServerName(value): {
                    serverName: value,
                  },
                },
            },
          '#withTraceroute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for traceroute check. The target must be a valid hostname or IP address (see below for nested schema)\nSettings for traceroute check. The target must be a valid hostname or IP address' } },
          withTraceroute(value): {
            traceroute:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTracerouteMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for traceroute check. The target must be a valid hostname or IP address (see below for nested schema)\nSettings for traceroute check. The target must be a valid hostname or IP address' } },
          withTracerouteMixin(value): {
            traceroute+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          traceroute+:
            {
              '#': { help: '', name: 'traceroute' },
              '#withMaxHops': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Maximum TTL for the trace Defaults to 64.\nMaximum TTL for the trace Defaults to `64`.' } },
              withMaxHops(value): {
                maxHops: value,
              },
              '#withMaxUnknownHops': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Maximum number of hosts to travers that give no response Defaults to 15.\nMaximum number of hosts to travers that give no response Defaults to `15`.' } },
              withMaxUnknownHops(value): {
                maxUnknownHops: value,
              },
              '#withPtrLookup': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Reverse lookup hostnames from IP addresses Defaults to true.\nReverse lookup hostnames from IP addresses Defaults to `true`.' } },
              withPtrLookup(value=true): {
                ptrLookup: value,
              },
            },
        },
      '#withTarget': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Hostname to ping.\nHostname to ping.' } },
      withTarget(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              target: value,
            },
          },
        },
      },
      '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Specifies the maximum running time for the check in milliseconds. The minimum acceptable value is 1 second (1000 ms), and the maximum 10 seconds (10000 ms). Defaults to 3000.\nSpecifies the maximum running time for the check in milliseconds. The minimum acceptable value is 1 second (1000 ms), and the maximum 10 seconds (10000 ms). Defaults to `3000`.' } },
      withTimeout(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              timeout: value,
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
      '#withAlertSensitivity': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Can be set to none, low, medium, or high to correspond to the check alert levels. Defaults to none.\nCan be set to `none`, `low`, `medium`, or `high` to correspond to the check [alert levels](https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/configure-alerts/synthetic-monitoring-alerting/). Defaults to `none`.' } },
      withAlertSensitivity(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              alertSensitivity: value,
            },
          },
        },
      },
      '#withBasicMetricsOnly': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: "(Boolean) Metrics are reduced by default. Set this to false if you'd like to publish all metrics. We maintain a full list of metrics collected for each. Defaults to true.\nMetrics are reduced by default. Set this to `false` if you'd like to publish all metrics. We maintain a [full list of metrics](https://github.com/grafana/synthetic-monitoring-agent/tree/main/internal/scraper/testdata) collected for each. Defaults to `true`." } },
      withBasicMetricsOnly(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              basicMetricsOnly: value,
            },
          },
        },
      },
      '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether to enable the check. Defaults to true.\nWhether to enable the check. Defaults to `true`.' } },
      withEnabled(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              enabled: value,
            },
          },
        },
      },
      '#withFrequency': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) How often the check runs in milliseconds (the value is not truly a "frequency" but a "period"). The minimum acceptable value is 1 second (1000 ms), and the maximum is 1 hour (3600000 ms). Defaults to 60000.\nHow often the check runs in milliseconds (the value is not truly a "frequency" but a "period"). The minimum acceptable value is 1 second (1000 ms), and the maximum is 1 hour (3600000 ms). Defaults to `60000`.' } },
      withFrequency(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              frequency: value,
            },
          },
        },
      },
      '#withJob': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name used for job label.\nName used for job label.' } },
      withJob(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              job: value,
            },
          },
        },
      },
      '#withLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.\nCustom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.' } },
      withLabels(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              labels: value,
            },
          },
        },
      },
      '#withLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: 'specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.\nCustom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.' } },
      withLabelsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              labels+: value,
            },
          },
        },
      },
      '#withProbes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) List of probe location IDs where this target will be checked from.\nList of probe location IDs where this target will be checked from.' } },
      withProbes(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              probes:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withProbesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) List of probe location IDs where this target will be checked from.\nList of probe location IDs where this target will be checked from.' } },
      withProbesMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              probes+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSettings': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Min: 1, Max: 1) Check settings. Should contain exactly one nested block. (see below for nested schema)\nCheck settings. Should contain exactly one nested block.' } },
      withSettings(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              settings:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withSettingsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Min: 1, Max: 1) Check settings. Should contain exactly one nested block. (see below for nested schema)\nCheck settings. Should contain exactly one nested block.' } },
      withSettingsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              settings+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      settings+:
        {
          '#': { help: '', name: 'settings' },
          '#withBrowser': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/. (see below for nested schema)\nSettings for browser check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/.' } },
          withBrowser(value): {
            browser:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withBrowserMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/. (see below for nested schema)\nSettings for browser check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/.' } },
          withBrowserMixin(value): {
            browser+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          browser+:
            {
              '#': { help: '', name: 'browser' },
              '#withScript': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
              withScript(value): {
                script: value,
              },
            },
          '#withDns': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for DNS check. The target must be a valid hostname (or IP address for PTR records). (see below for nested schema)\nSettings for DNS check. The target must be a valid hostname (or IP address for `PTR` records).' } },
          withDns(value): {
            dns:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withDnsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for DNS check. The target must be a valid hostname (or IP address for PTR records). (see below for nested schema)\nSettings for DNS check. The target must be a valid hostname (or IP address for `PTR` records).' } },
          withDnsMixin(value): {
            dns+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          dns+:
            {
              '#': { help: '', name: 'dns' },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withPort': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Port to target. Defaults to 53.\nPort to target. Defaults to `53`.' } },
              withPort(value): {
                port: value,
              },
              '#withProtocol': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) TCP or UDP. Defaults to UDP.\n`TCP` or `UDP`. Defaults to `UDP`.' } },
              withProtocol(value): {
                protocol: value,
              },
              '#withRecordType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) One of ANY, A, AAAA, CNAME, MX, NS, PTR, SOA, SRV, TXT. Defaults to A.\nOne of `ANY`, `A`, `AAAA`, `CNAME`, `MX`, `NS`, `PTR`, `SOA`, `SRV`, `TXT`. Defaults to `A`.' } },
              withRecordType(value): {
                recordType: value,
              },
              '#withServer': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) DNS server address to target. Defaults to 8.8.8.8.\nDNS server address to target. Defaults to `8.8.8.8`.' } },
              withServer(value): {
                server: value,
              },
              '#withSourceIpAddress': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Source IP address.\nSource IP address.' } },
              withSourceIpAddress(value): {
                sourceIpAddress: value,
              },
              '#withValidRCodes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid response codes. Options include NOERROR, BADALG, BADMODE, BADKEY, BADCOOKIE, BADNAME, BADSIG, BADTIME, BADTRUNC, BADVERS, FORMERR, NOTIMP, NOTAUTH, NOTZONE, NXDOMAIN, NXRRSET, REFUSED, SERVFAIL, YXDOMAIN, YXRRSET.\nList of valid response codes. Options include `NOERROR`, `BADALG`, `BADMODE`, `BADKEY`, `BADCOOKIE`, `BADNAME`, `BADSIG`, `BADTIME`, `BADTRUNC`, `BADVERS`, `FORMERR`, `NOTIMP`, `NOTAUTH`, `NOTZONE`, `NXDOMAIN`, `NXRRSET`, `REFUSED`, `SERVFAIL`, `YXDOMAIN`, `YXRRSET`.' } },
              withValidRCodes(value): {
                validRCodes:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidRCodesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid response codes. Options include NOERROR, BADALG, BADMODE, BADKEY, BADCOOKIE, BADNAME, BADSIG, BADTIME, BADTRUNC, BADVERS, FORMERR, NOTIMP, NOTAUTH, NOTZONE, NXDOMAIN, NXRRSET, REFUSED, SERVFAIL, YXDOMAIN, YXRRSET.\nList of valid response codes. Options include `NOERROR`, `BADALG`, `BADMODE`, `BADKEY`, `BADCOOKIE`, `BADNAME`, `BADSIG`, `BADTIME`, `BADTRUNC`, `BADVERS`, `FORMERR`, `NOTIMP`, `NOTAUTH`, `NOTZONE`, `NXDOMAIN`, `NXRRSET`, `REFUSED`, `SERVFAIL`, `YXDOMAIN`, `YXRRSET`.' } },
              withValidRCodesMixin(value): {
                validRCodes+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAdditionalRrs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Validate additional matches. (see below for nested schema)\nValidate additional matches.' } },
              withValidateAdditionalRrs(value): {
                validateAdditionalRrs:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAdditionalRrsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Validate additional matches. (see below for nested schema)\nValidate additional matches.' } },
              withValidateAdditionalRrsMixin(value): {
                validateAdditionalRrs+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              validateAdditionalRrs+:
                {
                  '#': { help: '', name: 'validateAdditionalRrs' },
                  '#withFailIfMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexp(value): {
                    failIfMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexpMixin(value): {
                    failIfMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexp(value): {
                    failIfNotMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexpMixin(value): {
                    failIfNotMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              '#withValidateAnswerRrs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response answer. (see below for nested schema)\nValidate response answer.' } },
              withValidateAnswerRrs(value): {
                validateAnswerRrs:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAnswerRrsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response answer. (see below for nested schema)\nValidate response answer.' } },
              withValidateAnswerRrsMixin(value): {
                validateAnswerRrs+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              validateAnswerRrs+:
                {
                  '#': { help: '', name: 'validateAnswerRrs' },
                  '#withFailIfMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexp(value): {
                    failIfMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexpMixin(value): {
                    failIfMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexp(value): {
                    failIfNotMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexpMixin(value): {
                    failIfNotMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
              '#withValidateAuthorityRrs': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response authority. (see below for nested schema)\nValidate response authority.' } },
              withValidateAuthorityRrs(value): {
                validateAuthorityRrs:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidateAuthorityRrsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Validate response authority. (see below for nested schema)\nValidate response authority.' } },
              withValidateAuthorityRrsMixin(value): {
                validateAuthorityRrs+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              validateAuthorityRrs+:
                {
                  '#': { help: '', name: 'validateAuthorityRrs' },
                  '#withFailIfMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexp(value): {
                    failIfMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value matches regex.\nFail if value matches regex.' } },
                  withFailIfMatchesRegexpMixin(value): {
                    failIfMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexp(value): {
                    failIfNotMatchesRegexp:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withFailIfNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) Fail if value does not match regex.\nFail if value does not match regex.' } },
                  withFailIfNotMatchesRegexpMixin(value): {
                    failIfNotMatchesRegexp+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                },
            },
          '#withGrpc': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for gRPC Health check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for gRPC Health check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withGrpc(value): {
            grpc:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withGrpcMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for gRPC Health check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for gRPC Health check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withGrpcMixin(value): {
            grpc+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          grpc+:
            {
              '#': { help: '', name: 'grpc' },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withService': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) gRPC service.\ngRPC service.' } },
              withService(value): {
                service: value,
              },
              '#withTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether or not TLS is used when the connection is initiated. Defaults to false.\nWhether or not TLS is used when the connection is initiated. Defaults to `false`.' } },
              withTls(value=true): {
                tls: value,
              },
              '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfig(value): {
                tlsConfig:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfigMixin(value): {
                tlsConfig+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              tlsConfig+:
                {
                  '#': { help: '', name: 'tlsConfig' },
                  '#withCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) CA certificate in PEM format.\nCA certificate in PEM format.' } },
                  withCaCert(value): {
                    caCert: value,
                  },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client certificate in PEM format.\nClient certificate in PEM format.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
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
                  '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Disable target certificate validation. Defaults to false.\nDisable target certificate validation. Defaults to `false`.' } },
                  withInsecureSkipVerify(value=true): {
                    insecureSkipVerify: value,
                  },
                  '#withServerName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Used to verify the hostname for the targets.\nUsed to verify the hostname for the targets.' } },
                  withServerName(value): {
                    serverName: value,
                  },
                },
            },
          '#withHttp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for HTTP check. The target must be a URL (http or https). (see below for nested schema)\nSettings for HTTP check. The target must be a URL (http or https).' } },
          withHttp(value): {
            http:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withHttpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for HTTP check. The target must be a URL (http or https). (see below for nested schema)\nSettings for HTTP check. The target must be a URL (http or https).' } },
          withHttpMixin(value): {
            http+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          http+:
            {
              '#': { help: '', name: 'http' },
              '#withBasicAuth': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Basic auth settings. (see below for nested schema)\nBasic auth settings.' } },
              withBasicAuth(value): {
                basicAuth:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withBasicAuthMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Basic auth settings. (see below for nested schema)\nBasic auth settings.' } },
              withBasicAuthMixin(value): {
                basicAuth+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              basicAuth+:
                {
                  '#': { help: '', name: 'basicAuth' },
                  '#withPasswordSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Basic auth password.\nBasic auth password.' } },
                  withPasswordSecretRef(value): {
                    passwordSecretRef: value,
                  },
                  '#withPasswordSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Basic auth password.\nBasic auth password.' } },
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
                  '#withUsername': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Basic auth username.\nBasic auth username.' } },
                  withUsername(value): {
                    username: value,
                  },
                },
              '#withBearerTokenSecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Token for use with bearer authorization header.\nToken for use with bearer authorization header.' } },
              withBearerTokenSecretRef(value): {
                bearerTokenSecretRef: value,
              },
              '#withBearerTokenSecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Token for use with bearer authorization header.\nToken for use with bearer authorization header.' } },
              withBearerTokenSecretRefMixin(value): {
                bearerTokenSecretRef+: value,
              },
              bearerTokenSecretRef+:
                {
                  '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'The key to select.' } },
                  withKey(value): {
                    bearerTokenSecretRef+: {
                      key: value,
                    },
                  },
                  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Name of the secret.' } },
                  withName(value): {
                    bearerTokenSecretRef+: {
                      name: value,
                    },
                  },
                  '#withNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: 'Namespace of the secret.' } },
                  withNamespace(value): {
                    bearerTokenSecretRef+: {
                      namespace: value,
                    },
                  },
                },
              '#withBody': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The body of the HTTP request used in probe.\nThe body of the HTTP request used in probe.' } },
              withBody(value): {
                body: value,
              },
              '#withCacheBustingQueryParamName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the query parameter used to prevent the server from using a cached response. Each probe will assign a random value to this parameter each time a request is made.\nThe name of the query parameter used to prevent the server from using a cached response. Each probe will assign a random value to this parameter each time a request is made.' } },
              withCacheBustingQueryParamName(value): {
                cacheBustingQueryParamName: value,
              },
              '#withCompression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Check fails if the response body is not compressed using this compression algorithm. One of none, identity, br, gzip, deflate.\nCheck fails if the response body is not compressed using this compression algorithm. One of `none`, `identity`, `br`, `gzip`, `deflate`.' } },
              withCompression(value): {
                compression: value,
              },
              '#withFailIfBodyMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any match the response body, the check will fail.\nList of regexes. If any match the response body, the check will fail.' } },
              withFailIfBodyMatchesRegexp(value): {
                failIfBodyMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfBodyMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any match the response body, the check will fail.\nList of regexes. If any match the response body, the check will fail.' } },
              withFailIfBodyMatchesRegexpMixin(value): {
                failIfBodyMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfBodyNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any do not match the response body, the check will fail.\nList of regexes. If any do not match the response body, the check will fail.' } },
              withFailIfBodyNotMatchesRegexp(value): {
                failIfBodyNotMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfBodyNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of regexes. If any do not match the response body, the check will fail.\nList of regexes. If any do not match the response body, the check will fail.' } },
              withFailIfBodyNotMatchesRegexpMixin(value): {
                failIfBodyNotMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfHeaderMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers match. (see below for nested schema)\nCheck fails if headers match.' } },
              withFailIfHeaderMatchesRegexp(value): {
                failIfHeaderMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfHeaderMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers match. (see below for nested schema)\nCheck fails if headers match.' } },
              withFailIfHeaderMatchesRegexpMixin(value): {
                failIfHeaderMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              failIfHeaderMatchesRegexp+:
                {
                  '#': { help: '', name: 'failIfHeaderMatchesRegexp' },
                  '#withAllowMissing': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Allow header to be missing from responses. Defaults to false.\nAllow header to be missing from responses. Defaults to `false`.' } },
                  withAllowMissing(value=true): {
                    allowMissing: value,
                  },
                  '#withHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Header name.\nHeader name.' } },
                  withHeader(value): {
                    header: value,
                  },
                  '#withRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Regex that header value should match.\nRegex that header value should match.' } },
                  withRegexp(value): {
                    regexp: value,
                  },
                },
              '#withFailIfHeaderNotMatchesRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers do not match. (see below for nested schema)\nCheck fails if headers do not match.' } },
              withFailIfHeaderNotMatchesRegexp(value): {
                failIfHeaderNotMatchesRegexp:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withFailIfHeaderNotMatchesRegexpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Check fails if headers do not match. (see below for nested schema)\nCheck fails if headers do not match.' } },
              withFailIfHeaderNotMatchesRegexpMixin(value): {
                failIfHeaderNotMatchesRegexp+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              failIfHeaderNotMatchesRegexp+:
                {
                  '#': { help: '', name: 'failIfHeaderNotMatchesRegexp' },
                  '#withAllowMissing': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Allow header to be missing from responses. Defaults to false.\nAllow header to be missing from responses. Defaults to `false`.' } },
                  withAllowMissing(value=true): {
                    allowMissing: value,
                  },
                  '#withHeader': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Header name.\nHeader name.' } },
                  withHeader(value): {
                    header: value,
                  },
                  '#withRegexp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Regex that header value should match.\nRegex that header value should match.' } },
                  withRegexp(value): {
                    regexp: value,
                  },
                },
              '#withFailIfNotSsl': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Fail if SSL is not present. Defaults to false.\nFail if SSL is not present. Defaults to `false`.' } },
              withFailIfNotSsl(value=true): {
                failIfNotSsl: value,
              },
              '#withFailIfSsl': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Fail if SSL is present. Defaults to false.\nFail if SSL is present. Defaults to `false`.' } },
              withFailIfSsl(value=true): {
                failIfSsl: value,
              },
              '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe HTTP headers set for the probe.' } },
              withHeaders(value): {
                headers:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe HTTP headers set for the probe.' } },
              withHeadersMixin(value): {
                headers+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Request method. One of GET, CONNECT, DELETE, HEAD, OPTIONS, POST, PUT, TRACE Defaults to GET.\nRequest method. One of `GET`, `CONNECT`, `DELETE`, `HEAD`, `OPTIONS`, `POST`, `PUT`, `TRACE` Defaults to `GET`.' } },
              withMethod(value): {
                method: value,
              },
              '#withNoFollowRedirects': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Do not follow redirects. Defaults to false.\nDo not follow redirects. Defaults to `false`.' } },
              withNoFollowRedirects(value=true): {
                noFollowRedirects: value,
              },
              '#withProxyConnectHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers sent to the proxy URL\nThe HTTP headers sent to the proxy URL' } },
              withProxyConnectHeaders(value): {
                proxyConnectHeaders:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withProxyConnectHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers sent to the proxy URL\nThe HTTP headers sent to the proxy URL' } },
              withProxyConnectHeadersMixin(value): {
                proxyConnectHeaders+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withProxyUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Proxy URL.\nProxy URL.' } },
              withProxyUrl(value): {
                proxyUrl: value,
              },
              '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfig(value): {
                tlsConfig:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfigMixin(value): {
                tlsConfig+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              tlsConfig+:
                {
                  '#': { help: '', name: 'tlsConfig' },
                  '#withCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) CA certificate in PEM format.\nCA certificate in PEM format.' } },
                  withCaCert(value): {
                    caCert: value,
                  },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client certificate in PEM format.\nClient certificate in PEM format.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
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
                  '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Disable target certificate validation. Defaults to false.\nDisable target certificate validation. Defaults to `false`.' } },
                  withInsecureSkipVerify(value=true): {
                    insecureSkipVerify: value,
                  },
                  '#withServerName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Used to verify the hostname for the targets.\nUsed to verify the hostname for the targets.' } },
                  withServerName(value): {
                    serverName: value,
                  },
                },
              '#withValidHttpVersions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid HTTP versions. Options include HTTP/1.0, HTTP/1.1, HTTP/2.0\nList of valid HTTP versions. Options include `HTTP/1.0`, `HTTP/1.1`, `HTTP/2.0`' } },
              withValidHttpVersions(value): {
                validHttpVersions:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidHttpVersionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) List of valid HTTP versions. Options include HTTP/1.0, HTTP/1.1, HTTP/2.0\nList of valid HTTP versions. Options include `HTTP/1.0`, `HTTP/1.1`, `HTTP/2.0`' } },
              withValidHttpVersionsMixin(value): {
                validHttpVersions+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidStatusCodes': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) Accepted status codes. If unset, defaults to 2xx.\nAccepted status codes. If unset, defaults to 2xx.' } },
              withValidStatusCodes(value): {
                validStatusCodes:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withValidStatusCodesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of Number) Accepted status codes. If unset, defaults to 2xx.\nAccepted status codes. If unset, defaults to 2xx.' } },
              withValidStatusCodesMixin(value): {
                validStatusCodes+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
            },
          '#withMultihttp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for MultiHTTP check. The target must be a URL (http or https) (see below for nested schema)\nSettings for MultiHTTP check. The target must be a URL (http or https)' } },
          withMultihttp(value): {
            multihttp:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMultihttpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for MultiHTTP check. The target must be a URL (http or https) (see below for nested schema)\nSettings for MultiHTTP check. The target must be a URL (http or https)' } },
          withMultihttpMixin(value): {
            multihttp+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          multihttp+:
            {
              '#': { help: '', name: 'multihttp' },
              '#withEntries': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) (see below for nested schema)' } },
              withEntries(value): {
                entries:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withEntriesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) (see below for nested schema)' } },
              withEntriesMixin(value): {
                entries+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              entries+:
                {
                  '#': { help: '', name: 'entries' },
                  '#withAssertions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Assertions to make on the request response (see below for nested schema)\nAssertions to make on the request response' } },
                  withAssertions(value): {
                    assertions:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withAssertionsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Assertions to make on the request response (see below for nested schema)\nAssertions to make on the request response' } },
                  withAssertionsMixin(value): {
                    assertions+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  assertions+:
                    {
                      '#': { help: '', name: 'assertions' },
                      '#withCondition': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The condition of the assertion: NOT_CONTAINS, EQUALS, STARTS_WITH, ENDS_WITH, TYPE_OF, CONTAINS\nThe condition of the assertion: NOT_CONTAINS, EQUALS, STARTS_WITH, ENDS_WITH, TYPE_OF, CONTAINS' } },
                      withCondition(value): {
                        condition: value,
                      },
                      '#withExpression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The expression of the assertion. Should start with $.\nThe expression of the assertion. Should start with $.' } },
                      withExpression(value): {
                        expression: value,
                      },
                      '#withSubject': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The subject of the assertion: RESPONSE_HEADERS, HTTP_STATUS_CODE, RESPONSE_BODY\nThe subject of the assertion: RESPONSE_HEADERS, HTTP_STATUS_CODE, RESPONSE_BODY' } },
                      withSubject(value): {
                        subject: value,
                      },
                      '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION\nThe type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION' } },
                      withType(value): {
                        type: value,
                      },
                      '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the assertion\nThe value of the assertion' } },
                      withValue(value): {
                        value: value,
                      },
                    },
                  '#withRequest': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) An individual MultiHTTP request (see below for nested schema)\nAn individual MultiHTTP request' } },
                  withRequest(value): {
                    request:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withRequestMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) An individual MultiHTTP request (see below for nested schema)\nAn individual MultiHTTP request' } },
                  withRequestMixin(value): {
                    request+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  request+:
                    {
                      '#': { help: '', name: 'request' },
                      '#withBody': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(String) The body of the HTTP request used in probe.\nThe body of the HTTP request used in probe.' } },
                      withBody(value): {
                        body:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withBodyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(String) The body of the HTTP request used in probe.\nThe body of the HTTP request used in probe.' } },
                      withBodyMixin(value): {
                        body+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      body+:
                        {
                          '#': { help: '', name: 'body' },
                          '#withContentEncoding': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The content encoding of the body\nThe content encoding of the body' } },
                          withContentEncoding(value): {
                            contentEncoding: value,
                          },
                          '#withContentType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The content type of the body\nThe content type of the body' } },
                          withContentType(value): {
                            contentType: value,
                          },
                          '#withPayload': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The body payload\nThe body payload' } },
                          withPayload(value): {
                            payload: value,
                          },
                        },
                      '#withHeaders': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe headers to send with the request' } },
                      withHeaders(value): {
                        headers:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withHeadersMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) The HTTP headers set for the probe.\nThe headers to send with the request' } },
                      withHeadersMixin(value): {
                        headers+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      headers+:
                        {
                          '#': { help: '', name: 'headers' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the header to send\nName of the header to send' } },
                          withName(value): {
                            name: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the assertion\nValue of the header to send' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withMethod': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Request method. One of GET, CONNECT, DELETE, HEAD, OPTIONS, POST, PUT, TRACE Defaults to GET.\nThe HTTP method to use' } },
                      withMethod(value): {
                        method: value,
                      },
                      '#withQueryFields': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Query fields to send with the request (see below for nested schema)\nQuery fields to send with the request' } },
                      withQueryFields(value): {
                        queryFields:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      '#withQueryFieldsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) Query fields to send with the request (see below for nested schema)\nQuery fields to send with the request' } },
                      withQueryFieldsMixin(value): {
                        queryFields+:
                          (if std.isArray(value)
                           then value
                           else [value]),
                      },
                      queryFields+:
                        {
                          '#': { help: '', name: 'queryFields' },
                          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the header to send\nName of the query field to send' } },
                          withName(value): {
                            name: value,
                          },
                          '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the assertion\nValue of the query field to send' } },
                          withValue(value): {
                            value: value,
                          },
                        },
                      '#withUrl': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The URL for the request\nThe URL for the request' } },
                      withUrl(value): {
                        url: value,
                      },
                    },
                  '#withVariables': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Variables to extract from the request response (see below for nested schema)\nVariables to extract from the request response' } },
                  withVariables(value): {
                    variables:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  '#withVariablesMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Variables to extract from the request response (see below for nested schema)\nVariables to extract from the request response' } },
                  withVariablesMixin(value): {
                    variables+:
                      (if std.isArray(value)
                       then value
                       else [value]),
                  },
                  variables+:
                    {
                      '#': { help: '', name: 'variables' },
                      '#withAttribute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The attribute to use when finding the variable value. Only used when type is CSS_SELECTOR\nThe attribute to use when finding the variable value. Only used when type is CSS_SELECTOR' } },
                      withAttribute(value): {
                        attribute: value,
                      },
                      '#withExpression': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The expression of the assertion. Should start with $.\nThe expression to when finding the variable. Should start with $. Only use when type is JSON_PATH or REGEX' } },
                      withExpression(value): {
                        expression: value,
                      },
                      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Name of the header to send\nThe name of the variable to extract' } },
                      withName(value): {
                        name: value,
                      },
                      '#withType': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The type of assertion to make: TEXT, JSON_PATH_VALUE, JSON_PATH_ASSERTION, REGEX_ASSERTION\nThe method of finding the variable value to extract. JSON_PATH, REGEX, CSS_SELECTOR' } },
                      withType(value): {
                        type: value,
                      },
                    },
                },
            },
          '#withPing': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for ping (ICMP) check. The target must be a valid hostname or IP address. (see below for nested schema)\nSettings for ping (ICMP) check. The target must be a valid hostname or IP address.' } },
          withPing(value): {
            ping:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withPingMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for ping (ICMP) check. The target must be a valid hostname or IP address. (see below for nested schema)\nSettings for ping (ICMP) check. The target must be a valid hostname or IP address.' } },
          withPingMixin(value): {
            ping+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          ping+:
            {
              '#': { help: '', name: 'ping' },
              '#withDontFragment': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: 'bit in the IP-header. Only works with ipV4. Defaults to false.\nSet the DF-bit in the IP-header. Only works with ipV4. Defaults to `false`.' } },
              withDontFragment(value=true): {
                dontFragment: value,
              },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withPayloadSize': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Payload size. Defaults to 0.\nPayload size. Defaults to `0`.' } },
              withPayloadSize(value): {
                payloadSize: value,
              },
              '#withSourceIpAddress': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Source IP address.\nSource IP address.' } },
              withSourceIpAddress(value): {
                sourceIpAddress: value,
              },
            },
          '#withScripted': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6/. (see below for nested schema)\nSettings for scripted check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6/.' } },
          withScripted(value): {
            scripted:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withScriptedMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: 'cloud/testing/synthetic-monitoring/create-checks/checks/k6/. (see below for nested schema)\nSettings for scripted check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6/.' } },
          withScriptedMixin(value): {
            scripted+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          scripted+:
            {
              '#': { help: '', name: 'scripted' },
              '#withScript': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String)' } },
              withScript(value): {
                script: value,
              },
            },
          '#withTcp': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for TCP check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for TCP check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withTcp(value): {
            tcp:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTcpMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for TCP check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)\nSettings for TCP check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.' } },
          withTcpMixin(value): {
            tcp+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          tcp+:
            {
              '#': { help: '', name: 'tcp' },
              '#withIpVersion': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: "(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.\nOptions are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`." } },
              withIpVersion(value): {
                ipVersion: value,
              },
              '#withQueryResponse': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) The query sent in the TCP probe and the expected associated response. (see below for nested schema)\nThe query sent in the TCP probe and the expected associated response.' } },
              withQueryResponse(value): {
                queryResponse:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withQueryResponseMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set) The query sent in the TCP probe and the expected associated response. (see below for nested schema)\nThe query sent in the TCP probe and the expected associated response.' } },
              withQueryResponseMixin(value): {
                queryResponse+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              queryResponse+:
                {
                  '#': { help: '', name: 'queryResponse' },
                  '#withExpect': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Response to expect.\nResponse to expect.' } },
                  withExpect(value): {
                    expect: value,
                  },
                  '#withSend': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Data to send.\nData to send.' } },
                  withSend(value): {
                    send: value,
                  },
                  '#withStartTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Upgrade TCP connection to TLS. Defaults to false.\nUpgrade TCP connection to TLS. Defaults to `false`.' } },
                  withStartTls(value=true): {
                    startTls: value,
                  },
                },
              '#withSourceIpAddress': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Source IP address.\nSource IP address.' } },
              withSourceIpAddress(value): {
                sourceIpAddress: value,
              },
              '#withTls': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether or not TLS is used when the connection is initiated. Defaults to false.\nWhether or not TLS is used when the connection is initiated. Defaults to `false`.' } },
              withTls(value=true): {
                tls: value,
              },
              '#withTlsConfig': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfig(value): {
                tlsConfig:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withTlsConfigMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) TLS config. (see below for nested schema)\nTLS config.' } },
              withTlsConfigMixin(value): {
                tlsConfig+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              tlsConfig+:
                {
                  '#': { help: '', name: 'tlsConfig' },
                  '#withCaCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) CA certificate in PEM format.\nCA certificate in PEM format.' } },
                  withCaCert(value): {
                    caCert: value,
                  },
                  '#withClientCert': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Client certificate in PEM format.\nClient certificate in PEM format.' } },
                  withClientCert(value): {
                    clientCert: value,
                  },
                  '#withClientKeySecretRef': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
                  withClientKeySecretRef(value): {
                    clientKeySecretRef: value,
                  },
                  '#withClientKeySecretRefMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(String, Sensitive) Client key in PEM format.\nClient key in PEM format.' } },
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
                  '#withInsecureSkipVerify': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Disable target certificate validation. Defaults to false.\nDisable target certificate validation. Defaults to `false`.' } },
                  withInsecureSkipVerify(value=true): {
                    insecureSkipVerify: value,
                  },
                  '#withServerName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Used to verify the hostname for the targets.\nUsed to verify the hostname for the targets.' } },
                  withServerName(value): {
                    serverName: value,
                  },
                },
            },
          '#withTraceroute': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for traceroute check. The target must be a valid hostname or IP address (see below for nested schema)\nSettings for traceroute check. The target must be a valid hostname or IP address' } },
          withTraceroute(value): {
            traceroute:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTracerouteMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block Set, Max: 1) Settings for traceroute check. The target must be a valid hostname or IP address (see below for nested schema)\nSettings for traceroute check. The target must be a valid hostname or IP address' } },
          withTracerouteMixin(value): {
            traceroute+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          traceroute+:
            {
              '#': { help: '', name: 'traceroute' },
              '#withMaxHops': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Maximum TTL for the trace Defaults to 64.\nMaximum TTL for the trace Defaults to `64`.' } },
              withMaxHops(value): {
                maxHops: value,
              },
              '#withMaxUnknownHops': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Maximum number of hosts to travers that give no response Defaults to 15.\nMaximum number of hosts to travers that give no response Defaults to `15`.' } },
              withMaxUnknownHops(value): {
                maxUnknownHops: value,
              },
              '#withPtrLookup': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Reverse lookup hostnames from IP addresses Defaults to true.\nReverse lookup hostnames from IP addresses Defaults to `true`.' } },
              withPtrLookup(value=true): {
                ptrLookup: value,
              },
            },
        },
      '#withTarget': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) Hostname to ping.\nHostname to ping.' } },
      withTarget(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              target: value,
            },
          },
        },
      },
      '#withTimeout': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) Specifies the maximum running time for the check in milliseconds. The minimum acceptable value is 1 second (1000 ms), and the maximum 10 seconds (10000 ms). Defaults to 3000.\nSpecifies the maximum running time for the check in milliseconds. The minimum acceptable value is 1 second (1000 ms), and the maximum 10 seconds (10000 ms). Defaults to `3000`.' } },
      withTimeout(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              timeout: value,
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
