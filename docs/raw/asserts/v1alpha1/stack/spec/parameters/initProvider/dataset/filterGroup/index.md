# filterGroup



## Subpackages

* [filter](filter.md)

## Index

* [`fn withEnvLabel(value)`](#fn-withenvlabel)
* [`fn withEnvLabelValues(value)`](#fn-withenvlabelvalues)
* [`fn withEnvLabelValuesMixin(value)`](#fn-withenvlabelvaluesmixin)
* [`fn withEnvName(value)`](#fn-withenvname)
* [`fn withFilter(value)`](#fn-withfilter)
* [`fn withFilterMixin(value)`](#fn-withfiltermixin)
* [`fn withSiteLabel(value)`](#fn-withsitelabel)
* [`fn withSiteLabelValues(value)`](#fn-withsitelabelvalues)
* [`fn withSiteLabelValuesMixin(value)`](#fn-withsitelabelvaluesmixin)

## Fields

### fn withEnvLabel

```jsonnet
withEnvLabel(value)
```

PARAMETERS:

* **value** (`string`)

(String) The metric label name used for environment (e.g., env, environment, deployment_environment). Defaults to standard labels if not set.
The metric label name used for environment (e.g., `env`, `environment`, `deployment_environment`). Defaults to standard labels if not set.
### fn withEnvLabelValues

```jsonnet
withEnvLabelValues(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Specific values of the environment label to match.
Specific values of the environment label to match.
### fn withEnvLabelValuesMixin

```jsonnet
withEnvLabelValuesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Specific values of the environment label to match.
Specific values of the environment label to match.
### fn withEnvName

```jsonnet
withEnvName(value)
```

PARAMETERS:

* **value** (`string`)

(String) A friendly name for the environment.
A friendly name for the environment.
### fn withFilter

```jsonnet
withFilter(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Additional metric filters. (see below for nested schema)
Additional metric filters.
### fn withFilterMixin

```jsonnet
withFilterMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Additional metric filters. (see below for nested schema)
Additional metric filters.
### fn withSiteLabel

```jsonnet
withSiteLabel(value)
```

PARAMETERS:

* **value** (`string`)

(String) The metric label name used for site/cluster.
The metric label name used for site/cluster.
### fn withSiteLabelValues

```jsonnet
withSiteLabelValues(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Specific values of the site label to match.
Specific values of the site label to match.
### fn withSiteLabelValuesMixin

```jsonnet
withSiteLabelValuesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Specific values of the site label to match.
Specific values of the site label to match.