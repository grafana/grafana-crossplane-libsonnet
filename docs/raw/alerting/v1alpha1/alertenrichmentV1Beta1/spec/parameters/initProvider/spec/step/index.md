# step



## Subpackages

* [conditional.else.step](conditional/else/step.md)
* [conditional.if.annotationMatchers](conditional/if/annotationMatchers.md)
* [conditional.if.labelMatchers](conditional/if/labelMatchers.md)
* [conditional.then.step](conditional/then/step.md)

## Index

* [`fn withAsserts(value)`](#fn-withasserts)
* [`fn withAssertsMixin(value)`](#fn-withassertsmixin)
* [`fn withAssign(value)`](#fn-withassign)
* [`fn withAssignMixin(value)`](#fn-withassignmixin)
* [`fn withAssistantInvestigations(value)`](#fn-withassistantinvestigations)
* [`fn withAssistantInvestigationsMixin(value)`](#fn-withassistantinvestigationsmixin)
* [`fn withConditional(value)`](#fn-withconditional)
* [`fn withConditionalMixin(value)`](#fn-withconditionalmixin)
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
* [`obj conditional`](#obj-conditional)
  * [`fn withElse(value)`](#fn-conditionalwithelse)
  * [`fn withElseMixin(value)`](#fn-conditionalwithelsemixin)
  * [`fn withIf(value)`](#fn-conditionalwithif)
  * [`fn withIfMixin(value)`](#fn-conditionalwithifmixin)
  * [`fn withThen(value)`](#fn-conditionalwiththen)
  * [`fn withThenMixin(value)`](#fn-conditionalwiththenmixin)
  * [`fn withTimeout(value)`](#fn-conditionalwithtimeout)
  * [`obj else`](#obj-conditionalelse)
    * [`fn withStep(value)`](#fn-conditionalelsewithstep)
    * [`fn withStepMixin(value)`](#fn-conditionalelsewithstepmixin)
  * [`obj if`](#obj-conditionalif)
    * [`fn withAnnotationMatchers(value)`](#fn-conditionalifwithannotationmatchers)
    * [`fn withAnnotationMatchersMixin(value)`](#fn-conditionalifwithannotationmatchersmixin)
    * [`fn withDataSourceCondition(value)`](#fn-conditionalifwithdatasourcecondition)
    * [`fn withDataSourceConditionMixin(value)`](#fn-conditionalifwithdatasourceconditionmixin)
    * [`fn withLabelMatchers(value)`](#fn-conditionalifwithlabelmatchers)
    * [`fn withLabelMatchersMixin(value)`](#fn-conditionalifwithlabelmatchersmixin)
    * [`obj dataSourceCondition`](#obj-conditionalifdatasourcecondition)
      * [`fn withRequest(value)`](#fn-conditionalifdatasourceconditionwithrequest)
  * [`obj then`](#obj-conditionalthen)
    * [`fn withStep(value)`](#fn-conditionalthenwithstep)
    * [`fn withStepMixin(value)`](#fn-conditionalthenwithstepmixin)
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
### fn withConditional

```jsonnet
withConditional(value)
```

PARAMETERS:

* **value** (`object`)

Conditional step with if/then/else.
### fn withConditionalMixin

```jsonnet
withConditionalMixin(value)
```

PARAMETERS:

* **value** (`object`)

Conditional step with if/then/else.
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
### obj conditional


#### fn conditional.withElse

```jsonnet
conditional.withElse(value)
```

PARAMETERS:

* **value** (`object`)

Steps when condition is false.
#### fn conditional.withElseMixin

```jsonnet
conditional.withElseMixin(value)
```

PARAMETERS:

* **value** (`object`)

Steps when condition is false.
#### fn conditional.withIf

```jsonnet
conditional.withIf(value)
```

PARAMETERS:

* **value** (`object`)

Condition to evaluate.
#### fn conditional.withIfMixin

```jsonnet
conditional.withIfMixin(value)
```

PARAMETERS:

* **value** (`object`)

Condition to evaluate.
#### fn conditional.withThen

```jsonnet
conditional.withThen(value)
```

PARAMETERS:

* **value** (`object`)

Steps when condition is true.
#### fn conditional.withThenMixin

```jsonnet
conditional.withThenMixin(value)
```

PARAMETERS:

* **value** (`object`)

Steps when condition is true.
#### fn conditional.withTimeout

```jsonnet
conditional.withTimeout(value)
```

PARAMETERS:

* **value** (`string`)

Maximum execution time (e.g., '30s', '1m')
#### obj conditional.else


##### fn conditional.else.withStep

```jsonnet
conditional.else.withStep(value)
```

PARAMETERS:

* **value** (`array`)


##### fn conditional.else.withStepMixin

```jsonnet
conditional.else.withStepMixin(value)
```

PARAMETERS:

* **value** (`array`)


#### obj conditional.if


##### fn conditional.if.withAnnotationMatchers

```jsonnet
conditional.if.withAnnotationMatchers(value)
```

PARAMETERS:

* **value** (`array`)

Annotation matchers for the condition.
##### fn conditional.if.withAnnotationMatchersMixin

```jsonnet
conditional.if.withAnnotationMatchersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Annotation matchers for the condition.
##### fn conditional.if.withDataSourceCondition

```jsonnet
conditional.if.withDataSourceCondition(value)
```

PARAMETERS:

* **value** (`object`)

Data source condition.
##### fn conditional.if.withDataSourceConditionMixin

```jsonnet
conditional.if.withDataSourceConditionMixin(value)
```

PARAMETERS:

* **value** (`object`)

Data source condition.
##### fn conditional.if.withLabelMatchers

```jsonnet
conditional.if.withLabelMatchers(value)
```

PARAMETERS:

* **value** (`array`)

Label matchers for the condition.
##### fn conditional.if.withLabelMatchersMixin

```jsonnet
conditional.if.withLabelMatchersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Label matchers for the condition.
##### obj conditional.if.dataSourceCondition


###### fn conditional.if.dataSourceCondition.withRequest

```jsonnet
conditional.if.dataSourceCondition.withRequest(value)
```

PARAMETERS:

* **value** (`string`)

Data source request payload.
#### obj conditional.then


##### fn conditional.then.withStep

```jsonnet
conditional.then.withStep(value)
```

PARAMETERS:

* **value** (`array`)


##### fn conditional.then.withStepMixin

```jsonnet
conditional.then.withStepMixin(value)
```

PARAMETERS:

* **value** (`array`)


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