# definedBy



## Index

* [`fn withDisabled(value=true)`](#fn-withdisabled)
* [`fn withLabelValues(value)`](#fn-withlabelvalues)
* [`fn withLabelValuesMixin(value)`](#fn-withlabelvaluesmixin)
* [`fn withLiterals(value)`](#fn-withliterals)
* [`fn withLiteralsMixin(value)`](#fn-withliteralsmixin)
* [`fn withMetricValue(value)`](#fn-withmetricvalue)
* [`fn withQuery(value)`](#fn-withquery)

## Fields

### fn withDisabled

```jsonnet
withDisabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether this entity is disabled.
Whether this rule is disabled. When true, only the 'query' field is used to match an existing rule to disable; other fields are ignored.
### fn withLabelValues

```jsonnet
withLabelValues(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Label value mappings for the query.
Label value mappings for the query.
### fn withLabelValuesMixin

```jsonnet
withLabelValuesMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Label value mappings for the query.
Label value mappings for the query.
### fn withLiterals

```jsonnet
withLiterals(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Literal value mappings for the query.
Literal value mappings for the query.
### fn withLiteralsMixin

```jsonnet
withLiteralsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Literal value mappings for the query.
Literal value mappings for the query.
### fn withMetricValue

```jsonnet
withMetricValue(value)
```

PARAMETERS:

* **value** (`string`)

(String) Metric value for the query.
Metric value for the query.
### fn withQuery

```jsonnet
withQuery(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Prometheus query that defines this entity.
The Prometheus query that defines this entity.