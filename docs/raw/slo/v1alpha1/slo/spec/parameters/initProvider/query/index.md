# query



## Subpackages

* [freeform](freeform.md)
* [grafanaQueries](grafanaQueries.md)
* [ratio](ratio.md)

## Index

* [`fn withFreeform(value)`](#fn-withfreeform)
* [`fn withFreeformMixin(value)`](#fn-withfreeformmixin)
* [`fn withGrafanaQueries(value)`](#fn-withgrafanaqueries)
* [`fn withGrafanaQueriesMixin(value)`](#fn-withgrafanaqueriesmixin)
* [`fn withRatio(value)`](#fn-withratio)
* [`fn withRatioMixin(value)`](#fn-withratiomixin)
* [`fn withType(value)`](#fn-withtype)

## Fields

### fn withFreeform

```jsonnet
withFreeform(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Freeform query configuration. (see below for nested schema)
Freeform query configuration.
### fn withFreeformMixin

```jsonnet
withFreeformMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Freeform query configuration. (see below for nested schema)
Freeform query configuration.
### fn withGrafanaQueries

```jsonnet
withGrafanaQueries(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Array for holding a set of grafana queries (see below for nested schema)
Array for holding a set of grafana queries
### fn withGrafanaQueriesMixin

```jsonnet
withGrafanaQueriesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Array for holding a set of grafana queries (see below for nested schema)
Array for holding a set of grafana queries
### fn withRatio

```jsonnet
withRatio(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Ratio query configuration. (see below for nested schema)
Ratio query configuration.
### fn withRatioMixin

```jsonnet
withRatioMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Ratio query configuration. (see below for nested schema)
Ratio query configuration.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) Type of the alert enrichment. Currently only "assistantInvestigation" is supported.
Query type must be one of: "freeform", "query", "ratio", "grafana_queries" or "threshold"