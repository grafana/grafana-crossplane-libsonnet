# logsQuery



## Index

* [`fn withDataSourceType(value)`](#fn-withdatasourcetype)
* [`fn withDataSourceUid(value)`](#fn-withdatasourceuid)
* [`fn withExpr(value)`](#fn-withexpr)
* [`fn withMaxLines(value)`](#fn-withmaxlines)

## Fields

### fn withDataSourceType

```jsonnet
withDataSourceType(value)
```

PARAMETERS:

* **value** (`string`)

Data source type (e.g., 'loki').
### fn withDataSourceUid

```jsonnet
withDataSourceUid(value)
```

PARAMETERS:

* **value** (`string`)

UID of the data source to query.
### fn withExpr

```jsonnet
withExpr(value)
```

PARAMETERS:

* **value** (`string`)

Log query expression to execute.
### fn withMaxLines

```jsonnet
withMaxLines(value)
```

PARAMETERS:

* **value** (`number`)

Maximum number of log lines to include. Defaults to 3.