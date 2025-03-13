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
      '#withAwsAccountResourceId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID assigned by the Grafana Cloud Provider API to an AWS Account resource that should be associated with this CloudWatch Scrape Job. This can be provided by the resource_id attribute of the grafana_cloud_provider_aws_account resource.\nThe ID assigned by the Grafana Cloud Provider API to an AWS Account resource that should be associated with this CloudWatch Scrape Job. This can be provided by the `resource_id` attribute of the `grafana_cloud_provider_aws_account` resource.' } },
      withAwsAccountResourceId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              awsAccountResourceId: value,
            },
          },
        },
      },
      '#withCustomNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Zero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nZero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withCustomNamespace(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              customNamespace:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withCustomNamespaceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Zero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nZero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withCustomNamespaceMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              customNamespace+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      customNamespace+:
        {
          '#': { help: '', name: 'customNamespace' },
          '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetric(value): {
            metric:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMetricMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetricMixin(value): {
            metric+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          metric+:
            {
              '#': { help: '', name: 'metric' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the metric to scrape.' } },
              withName(value): {
                name: value,
              },
              '#withStatistics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatistics(value): {
                statistics:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withStatisticsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatisticsMixin(value): {
                statistics+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
            },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the custom namespace to scrape.' } },
          withName(value): {
            name: value,
          },
          '#withScrapeIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The interval in seconds to scrape the custom namespace.\nThe interval in seconds to scrape the custom namespace.' } },
          withScrapeIntervalSeconds(value): {
            scrapeIntervalSeconds: value,
          },
        },
      '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether the CloudWatch Scrape Job is enabled or not.\nWhether the CloudWatch Scrape Job is enabled or not.' } },
      withEnabled(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              enabled: value,
            },
          },
        },
      },
      '#withExportTags': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When enabled, AWS resource tags are exported as Prometheus labels to metrics formatted as aws_<service_name>_info.\nWhen enabled, AWS resource tags are exported as Prometheus labels to metrics formatted as `aws_<service_name>_info`.' } },
      withExportTags(value=true): {
        spec+: {
          parameters+: {
            forProvider+: {
              exportTags: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the CloudWatch Scrape Job.' } },
      withName(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              name: value,
            },
          },
        },
      },
      '#withRegionsSubsetOverride': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Set of String) A subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped.\nA subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped." } },
      withRegionsSubsetOverride(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              regionsSubsetOverride:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withRegionsSubsetOverrideMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Set of String) A subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped.\nA subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped." } },
      withRegionsSubsetOverrideMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              regionsSubsetOverride+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withService': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withService(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              service:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withServiceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withServiceMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              service+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      service+:
        {
          '#': { help: '', name: 'service' },
          '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Please note that AWS metric names must be supplied, and not their PromQL counterparts. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetric(value): {
            metric:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMetricMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Please note that AWS metric names must be supplied, and not their PromQL counterparts. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetricMixin(value): {
            metric+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          metric+:
            {
              '#': { help: '', name: 'metric' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the metric to scrape.' } },
              withName(value): {
                name: value,
              },
              '#withStatistics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatistics(value): {
                statistics:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withStatisticsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatisticsMixin(value): {
                statistics+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
            },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the service to scrape. See https://grafana.com/docs/grafana-cloud/monitor-infrastructure/monitor-cloud-provider/aws/cloudwatch-metrics/services/ for supported services.' } },
          withName(value): {
            name: value,
          },
          '#withResourceDiscoveryTagFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects.' } },
          withResourceDiscoveryTagFilter(value): {
            resourceDiscoveryTagFilter:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withResourceDiscoveryTagFilterMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects.' } },
          withResourceDiscoveryTagFilterMixin(value): {
            resourceDiscoveryTagFilter+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          resourceDiscoveryTagFilter+:
            {
              '#': { help: '', name: 'resourceDiscoveryTagFilter' },
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The key of the tag filter.\nThe key of the tag filter.' } },
              withKey(value): {
                key: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the tag filter.\nThe value of the tag filter.' } },
              withValue(value): {
                value: value,
              },
            },
          '#withScrapeIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The interval in seconds to scrape the custom namespace.\nThe interval in seconds to scrape the service. See https://grafana.com/docs/grafana-cloud/monitor-infrastructure/monitor-cloud-provider/aws/cloudwatch-metrics/services/ for supported scrape intervals.' } },
          withScrapeIntervalSeconds(value): {
            scrapeIntervalSeconds: value,
          },
          '#withTagsToAddToMetrics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.\nA set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.' } },
          withTagsToAddToMetrics(value): {
            tagsToAddToMetrics:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTagsToAddToMetricsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.\nA set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.' } },
          withTagsToAddToMetricsMixin(value): {
            tagsToAddToMetrics+:
              (if std.isArray(value)
               then value
               else [value]),
          },
        },
      '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Stack ID of the Grafana Cloud instance.\nThe Stack ID of the Grafana Cloud instance.' } },
      withStackId(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              stackId: value,
            },
          },
        },
      },
      '#withStaticLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) A set of static labels to add to all metrics exported by this scrape job.\nA set of static labels to add to all metrics exported by this scrape job.' } },
      withStaticLabels(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              staticLabels: value,
            },
          },
        },
      },
      '#withStaticLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) A set of static labels to add to all metrics exported by this scrape job.\nA set of static labels to add to all metrics exported by this scrape job.' } },
      withStaticLabelsMixin(value): {
        spec+: {
          parameters+: {
            forProvider+: {
              staticLabels+: value,
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
      '#withAwsAccountResourceId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The ID assigned by the Grafana Cloud Provider API to an AWS Account resource that should be associated with this CloudWatch Scrape Job. This can be provided by the resource_id attribute of the grafana_cloud_provider_aws_account resource.\nThe ID assigned by the Grafana Cloud Provider API to an AWS Account resource that should be associated with this CloudWatch Scrape Job. This can be provided by the `resource_id` attribute of the `grafana_cloud_provider_aws_account` resource.' } },
      withAwsAccountResourceId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              awsAccountResourceId: value,
            },
          },
        },
      },
      '#withCustomNamespace': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Zero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nZero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withCustomNamespace(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              customNamespace:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withCustomNamespaceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) Zero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nZero or more configuration blocks to configure custom namespaces for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withCustomNamespaceMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              customNamespace+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      customNamespace+:
        {
          '#': { help: '', name: 'customNamespace' },
          '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetric(value): {
            metric:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMetricMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetricMixin(value): {
            metric+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          metric+:
            {
              '#': { help: '', name: 'metric' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the metric to scrape.' } },
              withName(value): {
                name: value,
              },
              '#withStatistics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatistics(value): {
                statistics:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withStatisticsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatisticsMixin(value): {
                statistics+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
            },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the custom namespace to scrape.' } },
          withName(value): {
            name: value,
          },
          '#withScrapeIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The interval in seconds to scrape the custom namespace.\nThe interval in seconds to scrape the custom namespace.' } },
          withScrapeIntervalSeconds(value): {
            scrapeIntervalSeconds: value,
          },
        },
      '#withEnabled': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) Whether the CloudWatch Scrape Job is enabled or not.\nWhether the CloudWatch Scrape Job is enabled or not.' } },
      withEnabled(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              enabled: value,
            },
          },
        },
      },
      '#withExportTags': { 'function': { args: [{ default: true, enums: null, name: 'value', type: ['boolean'] }], help: '(Boolean) When enabled, AWS resource tags are exported as Prometheus labels to metrics formatted as aws_<service_name>_info.\nWhen enabled, AWS resource tags are exported as Prometheus labels to metrics formatted as `aws_<service_name>_info`.' } },
      withExportTags(value=true): {
        spec+: {
          parameters+: {
            initProvider+: {
              exportTags: value,
            },
          },
        },
      },
      '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the CloudWatch Scrape Job.' } },
      withName(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              name: value,
            },
          },
        },
      },
      '#withRegionsSubsetOverride': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Set of String) A subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped.\nA subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped." } },
      withRegionsSubsetOverride(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              regionsSubsetOverride:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withRegionsSubsetOverrideMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: "(Set of String) A subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped.\nA subset of the regions that are configured in the associated AWS Account resource to apply to this scrape job. If not set or empty, all of the Account resource's regions are scraped." } },
      withRegionsSubsetOverrideMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              regionsSubsetOverride+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withService': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withService(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              service:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      '#withServiceMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct name attribute. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure AWS services for the CloudWatch Scrape Job to scrape. Each block must have a distinct `name` attribute. When accessing this as an attribute reference, it is a list of objects.' } },
      withServiceMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              service+:
                (if std.isArray(value)
                 then value
                 else [value]),
            },
          },
        },
      },
      service+:
        {
          '#': { help: '', name: 'service' },
          '#withMetric': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Please note that AWS metric names must be supplied, and not their PromQL counterparts. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetric(value): {
            metric:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withMetricMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure metrics and their statistics to scrape. Please note that AWS metric names must be supplied, and not their PromQL counterparts. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.' } },
          withMetricMixin(value): {
            metric+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          metric+:
            {
              '#': { help: '', name: 'metric' },
              '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the metric to scrape.' } },
              withName(value): {
                name: value,
              },
              '#withStatistics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatistics(value): {
                statistics:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
              '#withStatisticsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of statistics to scrape.\nA set of statistics to scrape.' } },
              withStatisticsMixin(value): {
                statistics+:
                  (if std.isArray(value)
                   then value
                   else [value]),
              },
            },
          '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The name of the CloudWatch Scrape Job.\nThe name of the service to scrape. See https://grafana.com/docs/grafana-cloud/monitor-infrastructure/monitor-cloud-provider/aws/cloudwatch-metrics/services/ for supported services.' } },
          withName(value): {
            name: value,
          },
          '#withResourceDiscoveryTagFilter': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects.' } },
          withResourceDiscoveryTagFilter(value): {
            resourceDiscoveryTagFilter:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withResourceDiscoveryTagFilterMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Block List) One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)\nOne or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects.' } },
          withResourceDiscoveryTagFilterMixin(value): {
            resourceDiscoveryTagFilter+:
              (if std.isArray(value)
               then value
               else [value]),
          },
          resourceDiscoveryTagFilter+:
            {
              '#': { help: '', name: 'resourceDiscoveryTagFilter' },
              '#withKey': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The key of the tag filter.\nThe key of the tag filter.' } },
              withKey(value): {
                key: value,
              },
              '#withValue': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The value of the tag filter.\nThe value of the tag filter.' } },
              withValue(value): {
                value: value,
              },
            },
          '#withScrapeIntervalSeconds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number'] }], help: '(Number) The interval in seconds to scrape the custom namespace.\nThe interval in seconds to scrape the service. See https://grafana.com/docs/grafana-cloud/monitor-infrastructure/monitor-cloud-provider/aws/cloudwatch-metrics/services/ for supported scrape intervals.' } },
          withScrapeIntervalSeconds(value): {
            scrapeIntervalSeconds: value,
          },
          '#withTagsToAddToMetrics': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.\nA set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.' } },
          withTagsToAddToMetrics(value): {
            tagsToAddToMetrics:
              (if std.isArray(value)
               then value
               else [value]),
          },
          '#withTagsToAddToMetricsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['array'] }], help: '(Set of String) A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.\nA set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.' } },
          withTagsToAddToMetricsMixin(value): {
            tagsToAddToMetrics+:
              (if std.isArray(value)
               then value
               else [value]),
          },
        },
      '#withStackId': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['string'] }], help: '(String) The Stack ID of the Grafana Cloud instance.\nThe Stack ID of the Grafana Cloud instance.' } },
      withStackId(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              stackId: value,
            },
          },
        },
      },
      '#withStaticLabels': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) A set of static labels to add to all metrics exported by this scrape job.\nA set of static labels to add to all metrics exported by this scrape job.' } },
      withStaticLabels(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              staticLabels: value,
            },
          },
        },
      },
      '#withStaticLabelsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['object'] }], help: '(Map of String) A set of static labels to add to all metrics exported by this scrape job.\nA set of static labels to add to all metrics exported by this scrape job.' } },
      withStaticLabelsMixin(value): {
        spec+: {
          parameters+: {
            initProvider+: {
              staticLabels+: value,
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
