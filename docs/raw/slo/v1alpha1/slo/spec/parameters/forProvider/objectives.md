# objectives



## Index

* [`fn withValue(value)`](#fn-withvalue)
* [`fn withWindow(value)`](#fn-withwindow)

## Fields

### fn withValue

```jsonnet
withValue(value)
```

PARAMETERS:

* **value** (`number`)

(String) Templatable value
Value between 0 and 1. If the value of the query is above the objective, the SLO is met.
### fn withWindow

```jsonnet
withWindow(value)
```

PARAMETERS:

* **value** (`string`)

parsable time duration string like 24h, 60m. This is the time window the objective is measured over.
A Prometheus-parsable time duration string like 24h, 60m. This is the time window the objective is measured over.