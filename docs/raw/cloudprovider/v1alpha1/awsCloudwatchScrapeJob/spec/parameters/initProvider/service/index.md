# service



## Subpackages

* [metric](metric.md)
* [resourceDiscoveryTagFilter](resourceDiscoveryTagFilter.md)

## Index

* [`fn withMetric(value)`](#fn-withmetric)
* [`fn withMetricMixin(value)`](#fn-withmetricmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withResourceDiscoveryTagFilter(value)`](#fn-withresourcediscoverytagfilter)
* [`fn withResourceDiscoveryTagFilterMixin(value)`](#fn-withresourcediscoverytagfiltermixin)
* [`fn withScrapeIntervalSeconds(value)`](#fn-withscrapeintervalseconds)
* [`fn withTagsToAddToMetrics(value)`](#fn-withtagstoaddtometrics)
* [`fn withTagsToAddToMetricsMixin(value)`](#fn-withtagstoaddtometricsmixin)

## Fields

### fn withMetric

```jsonnet
withMetric(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)
One or more configuration blocks to configure metrics and their statistics to scrape. Please note that AWS metric names must be supplied, and not their PromQL counterparts. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.
### fn withMetricMixin

```jsonnet
withMetricMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)
One or more configuration blocks to configure metrics and their statistics to scrape. Please note that AWS metric names must be supplied, and not their PromQL counterparts. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the CloudWatch Scrape Job.
The name of the service to scrape. See https://grafana.com/docs/grafana-cloud/monitor-infrastructure/monitor-cloud-provider/aws/cloudwatch-metrics/services/ for supported services.
### fn withResourceDiscoveryTagFilter

```jsonnet
withResourceDiscoveryTagFilter(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)
One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects.
### fn withResourceDiscoveryTagFilterMixin

```jsonnet
withResourceDiscoveryTagFilterMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)
One or more configuration blocks to configure tag filters applied to discovery of resource entities in the associated AWS account. When accessing this as an attribute reference, it is a list of objects.
### fn withScrapeIntervalSeconds

```jsonnet
withScrapeIntervalSeconds(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The interval in seconds to scrape the custom namespace.
The interval in seconds to scrape the service. See https://grafana.com/docs/grafana-cloud/monitor-infrastructure/monitor-cloud-provider/aws/cloudwatch-metrics/services/ for supported scrape intervals.
### fn withTagsToAddToMetrics

```jsonnet
withTagsToAddToMetrics(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.
A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.
### fn withTagsToAddToMetricsMixin

```jsonnet
withTagsToAddToMetricsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.
A set of tags to add to all metrics exported by this scrape job, for use in PromQL queries.