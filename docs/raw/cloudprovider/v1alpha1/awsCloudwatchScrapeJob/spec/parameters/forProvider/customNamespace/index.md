# customNamespace



## Subpackages

* [metric](metric.md)

## Index

* [`fn withMetric(value)`](#fn-withmetric)
* [`fn withMetricMixin(value)`](#fn-withmetricmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withScrapeIntervalSeconds(value)`](#fn-withscrapeintervalseconds)

## Fields

### fn withMetric

```jsonnet
withMetric(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)
One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.
### fn withMetricMixin

```jsonnet
withMetricMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects. (see below for nested schema)
One or more configuration blocks to configure metrics and their statistics to scrape. Each block must represent a distinct metric name. When accessing this as an attribute reference, it is a list of objects.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the AWS CloudWatch Scrape Job.
The name of the custom namespace to scrape.
### fn withScrapeIntervalSeconds

```jsonnet
withScrapeIntervalSeconds(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The interval in seconds to scrape the custom namespace. Defaults to 300.
The interval in seconds to scrape the custom namespace. Defaults to `300`.