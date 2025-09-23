# step



## Index

* [`fn withAsserts(value)`](#fn-withasserts)
* [`fn withAssertsMixin(value)`](#fn-withassertsmixin)
* [`fn withAssign(value)`](#fn-withassign)
* [`fn withAssignMixin(value)`](#fn-withassignmixin)
* [`fn withAssistantInvestigations(value)`](#fn-withassistantinvestigations)
* [`fn withAssistantInvestigationsMixin(value)`](#fn-withassistantinvestigationsmixin)
* [`fn withDataSource(value)`](#fn-withdatasource)
* [`fn withDataSourceMixin(value)`](#fn-withdatasourcemixin)
* [`fn withExplain(value)`](#fn-withexplain)
* [`fn withExplainMixin(value)`](#fn-withexplainmixin)
* [`fn withExternal(value)`](#fn-withexternal)
* [`fn withExternalMixin(value)`](#fn-withexternalmixin)
* [`fn withSift(value)`](#fn-withsift)
* [`fn withSiftMixin(value)`](#fn-withsiftmixin)
* [`obj asserts`](#obj-asserts)
  * [`fn withTimeout(value)`](#fn-assertswithtimeout)
* [`obj assign`](#obj-assign)
  * [`fn withAnnotations(value)`](#fn-assignwithannotations)
  * [`fn withAnnotationsMixin(value)`](#fn-assignwithannotationsmixin)
  * [`fn withTimeout(value)`](#fn-assignwithtimeout)
* [`obj assistantInvestigations`](#obj-assistantinvestigations)
  * [`fn withTimeout(value)`](#fn-assistantinvestigationswithtimeout)
* [`obj dataSource`](#obj-datasource)
  * [`fn withLogsQuery(value)`](#fn-datasourcewithlogsquery)
  * [`fn withLogsQueryMixin(value)`](#fn-datasourcewithlogsquerymixin)
  * [`fn withRawQuery(value)`](#fn-datasourcewithrawquery)
  * [`fn withRawQueryMixin(value)`](#fn-datasourcewithrawquerymixin)
  * [`fn withTimeout(value)`](#fn-datasourcewithtimeout)
  * [`obj logsQuery`](#obj-datasourcelogsquery)
    * [`fn withDataSourceType(value)`](#fn-datasourcelogsquerywithdatasourcetype)
    * [`fn withDataSourceUid(value)`](#fn-datasourcelogsquerywithdatasourceuid)
    * [`fn withExpr(value)`](#fn-datasourcelogsquerywithexpr)
    * [`fn withMaxLines(value)`](#fn-datasourcelogsquerywithmaxlines)
  * [`obj rawQuery`](#obj-datasourcerawquery)
    * [`fn withRefId(value)`](#fn-datasourcerawquerywithrefid)
    * [`fn withRequest(value)`](#fn-datasourcerawquerywithrequest)
* [`obj explain`](#obj-explain)
  * [`fn withAnnotation(value)`](#fn-explainwithannotation)
  * [`fn withTimeout(value)`](#fn-explainwithtimeout)
* [`obj external`](#obj-external)
  * [`fn withTimeout(value)`](#fn-externalwithtimeout)
  * [`fn withUrl(value)`](#fn-externalwithurl)
* [`obj sift`](#obj-sift)
  * [`fn withTimeout(value)`](#fn-siftwithtimeout)

## Fields

### fn withAsserts

```jsonnet
withAsserts(value)
```

PARAMETERS:

* **value** (`object`)

Integrate with Grafana Asserts for enrichment.
### fn withAssertsMixin

```jsonnet
withAssertsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Integrate with Grafana Asserts for enrichment.
### fn withAssign

```jsonnet
withAssign(value)
```

PARAMETERS:

* **value** (`object`)

Assign annotations to an alert.
### fn withAssignMixin

```jsonnet
withAssignMixin(value)
```

PARAMETERS:

* **value** (`object`)

Assign annotations to an alert.
### fn withAssistantInvestigations

```jsonnet
withAssistantInvestigations(value)
```

PARAMETERS:

* **value** (`object`)

Use AI assistant to investigate alerts and add insights.
### fn withAssistantInvestigationsMixin

```jsonnet
withAssistantInvestigationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Use AI assistant to investigate alerts and add insights.
### fn withDataSource

```jsonnet
withDataSource(value)
```

PARAMETERS:

* **value** (`object`)

Query Grafana data sources and add results to alerts.
### fn withDataSourceMixin

```jsonnet
withDataSourceMixin(value)
```

PARAMETERS:

* **value** (`object`)

Query Grafana data sources and add results to alerts.
### fn withExplain

```jsonnet
withExplain(value)
```

PARAMETERS:

* **value** (`object`)

Generate AI explanation and store in an annotation.
### fn withExplainMixin

```jsonnet
withExplainMixin(value)
```

PARAMETERS:

* **value** (`object`)

Generate AI explanation and store in an annotation.
### fn withExternal

```jsonnet
withExternal(value)
```

PARAMETERS:

* **value** (`object`)

Call an external HTTP service for enrichment.
### fn withExternalMixin

```jsonnet
withExternalMixin(value)
```

PARAMETERS:

* **value** (`object`)

Call an external HTTP service for enrichment.
### fn withSift

```jsonnet
withSift(value)
```

PARAMETERS:

* **value** (`object`)

Analyze alerts for patterns and insights.
### fn withSiftMixin

```jsonnet
withSiftMixin(value)
```

PARAMETERS:

* **value** (`object`)

Analyze alerts for patterns and insights.
### obj asserts


#### fn asserts.withTimeout

```jsonnet
asserts.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
### obj assign


#### fn assign.withAnnotations

```jsonnet
assign.withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Map of annotation names to values to set on matching alerts.
#### fn assign.withAnnotationsMixin

```jsonnet
assign.withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Map of annotation names to values to set on matching alerts.
#### fn assign.withTimeout

```jsonnet
assign.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
### obj assistantInvestigations


#### fn assistantInvestigations.withTimeout

```jsonnet
assistantInvestigations.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
### obj dataSource


#### fn dataSource.withLogsQuery

```jsonnet
dataSource.withLogsQuery(value)
```

PARAMETERS:

* **value** (`object`)

Logs query configuration for querying log data sources.
#### fn dataSource.withLogsQueryMixin

```jsonnet
dataSource.withLogsQueryMixin(value)
```

PARAMETERS:

* **value** (`object`)

Logs query configuration for querying log data sources.
#### fn dataSource.withRawQuery

```jsonnet
dataSource.withRawQuery(value)
```

PARAMETERS:

* **value** (`object`)

Raw query configuration for advanced data source queries.
#### fn dataSource.withRawQueryMixin

```jsonnet
dataSource.withRawQueryMixin(value)
```

PARAMETERS:

* **value** (`object`)

Raw query configuration for advanced data source queries.
#### fn dataSource.withTimeout

```jsonnet
dataSource.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
#### obj dataSource.logsQuery


##### fn dataSource.logsQuery.withDataSourceType

```jsonnet
dataSource.logsQuery.withDataSourceType(value)
```

PARAMETERS:

* **value** (`string`)

Data source type (e.g., 'loki').
##### fn dataSource.logsQuery.withDataSourceUid

```jsonnet
dataSource.logsQuery.withDataSourceUid(value)
```

PARAMETERS:

* **value** (`string`)

UID of the data source to query.
##### fn dataSource.logsQuery.withExpr

```jsonnet
dataSource.logsQuery.withExpr(value)
```

PARAMETERS:

* **value** (`string`)

Log query expression to execute.
##### fn dataSource.logsQuery.withMaxLines

```jsonnet
dataSource.logsQuery.withMaxLines(value)
```

PARAMETERS:

* **value** (`number`)

Maximum number of log lines to include. Defaults to 3.
#### obj dataSource.rawQuery


##### fn dataSource.rawQuery.withRefId

```jsonnet
dataSource.rawQuery.withRefId(value)
```

PARAMETERS:

* **value** (`string`)

Reference ID for correlating queries.
##### fn dataSource.rawQuery.withRequest

```jsonnet
dataSource.rawQuery.withRequest(value)
```

PARAMETERS:

* **value** (`string`)

Raw request payload for the data source query.
### obj explain


#### fn explain.withAnnotation

```jsonnet
explain.withAnnotation(value)
```

PARAMETERS:

* **value** (`string`)

Annotation name to set the explanation in. Defaults to 'ai_explanation'.
#### fn explain.withTimeout

```jsonnet
explain.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
### obj external


#### fn external.withTimeout

```jsonnet
external.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
#### fn external.withUrl

```jsonnet
external.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

HTTP endpoint URL to call for enrichment
### obj sift


#### fn sift.withTimeout

```jsonnet
sift.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')