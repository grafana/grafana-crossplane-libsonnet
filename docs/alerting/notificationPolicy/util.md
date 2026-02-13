# NotificationPolicy.util



## Index

* [`fn matchArrayOrString(key, arr)`](#fn-matcharrayorstring)
* [`fn splitMatcherString(str)`](#fn-splitmatcherstring)
* [`fn transformAlertmanagerRoute(route)`](#fn-transformalertmanagerroute)
* [`obj commonMatchers`](#obj-commonmatchers)
  * [`fn alert(alertname)`](#fn-commonmatchersalert)
  * [`fn cluster(cluster)`](#fn-commonmatcherscluster)
  * [`fn exportedNamespace(namespace)`](#fn-commonmatchersexportednamespace)
  * [`fn job(job)`](#fn-commonmatchersjob)
  * [`fn namespace(namespace)`](#fn-commonmatchersnamespace)
  * [`fn severity(severity)`](#fn-commonmatchersseverity)
  * [`fn team(team)`](#fn-commonmatchersteam)
  * [`obj severityMatcher`](#obj-commonmatchersseveritymatcher)
    * [`fn critical()`](#fn-commonmatchersseveritymatchercritical)
    * [`fn info()`](#fn-commonmatchersseveritymatcherinfo)
    * [`fn warning()`](#fn-commonmatchersseveritymatcherwarning)

## Fields

### fn matchArrayOrString

```jsonnet
matchArrayOrString(key, arr)
```

PARAMETERS:

* **key** (`string`)
* **arr** (`array`)

`matchArrayOrString` creates a matcher string.
### fn splitMatcherString

```jsonnet
splitMatcherString(str)
```

PARAMETERS:

* **str** (`string`)

`splitMatcherString` splits the key!=value string into notification policy matcher object.
### fn transformAlertmanagerRoute

```jsonnet
transformAlertmanagerRoute(route)
```

PARAMETERS:

* **route** (`object`)

`transformAlertmanagerRoute` transforms a Prometheus Alertmanager route into a notification policy.
### obj commonMatchers

`commonMatchers` provides a set of common matchers. Adding them will append them to already configured matchers.


#### fn commonMatchers.alert

```jsonnet
commonMatchers.alert(alertname)
```

PARAMETERS:

* **alertname** (`array`)

`alert` matches one or more alert names.
#### fn commonMatchers.cluster

```jsonnet
commonMatchers.cluster(cluster)
```

PARAMETERS:

* **cluster** (`array`)

`cluster` matches a cluster.
#### fn commonMatchers.exportedNamespace

```jsonnet
commonMatchers.exportedNamespace(namespace)
```

PARAMETERS:

* **namespace** (`array`)

`exportedNamespace` matches one or more exported_namespaces.
#### fn commonMatchers.job

```jsonnet
commonMatchers.job(job)
```

PARAMETERS:

* **job** (`array`)

`job` matches one or more jobs.
#### fn commonMatchers.namespace

```jsonnet
commonMatchers.namespace(namespace)
```

PARAMETERS:

* **namespace** (`array`)

`namespace` matches one or more namespaces.
#### fn commonMatchers.severity

```jsonnet
commonMatchers.severity(severity)
```

PARAMETERS:

* **severity** (`array`)

`severity` matches a severity.
#### fn commonMatchers.team

```jsonnet
commonMatchers.team(team)
```

PARAMETERS:

* **team** (`array`)

`team` matches a team.
#### obj commonMatchers.severityMatcher


##### fn commonMatchers.severityMatcher.critical

```jsonnet
commonMatchers.severityMatcher.critical()
```


`critical` matches a critical severity.
##### fn commonMatchers.severityMatcher.info

```jsonnet
commonMatchers.severityMatcher.info()
```


`info` matches a info severity.
##### fn commonMatchers.severityMatcher.warning

```jsonnet
commonMatchers.severityMatcher.warning()
```


`warning` matches a warning severity.