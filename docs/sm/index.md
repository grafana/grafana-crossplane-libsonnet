# sm



## Subpackages

* [check.settings.http](check/settings/http/index.md)

## Index

* [`obj check`](#obj-check)
  * [`fn new(name, job, url)`](#fn-checknew)
  * [`fn withHttpSettings(http)`](#fn-checkwithhttpsettings)
  * [`fn withHttpStatusCheck(validStatusCodes=[200])`](#fn-checkwithhttpstatuscheck)
  * [`fn withLabels(labels)`](#fn-checkwithlabels)
  * [`fn withProbes(probes)`](#fn-checkwithprobes)

## Fields

### obj check


#### fn check.new

```jsonnet
check.new(name, job, url)
```

PARAMETERS:

* **name** (`string`)
* **job** (`string`)
* **url** (`string`)

`new` creates a new synthetic monitoring check for the betterops Grafana Cloud environment.

Parameters:
- `name`: Name of the check
- `job`: Job identifier for the check
- `url`: Target URL to monitor

#### fn check.withHttpSettings

```jsonnet
check.withHttpSettings(http)
```

PARAMETERS:

* **http** (`object`)

`withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

The `http` object can be created with `check.settings.http.new()`.

Parameters:
- `httpSettings`: HTTP settings object to override defaults

#### fn check.withHttpStatusCheck

```jsonnet
check.withHttpStatusCheck(validStatusCodes=[200])
```

PARAMETERS:

* **validStatusCodes** (`array`)
   - default value: `[200]`

`withHttpStatusCheck` configures a simple HTTP status check for the target URL.

#### fn check.withLabels

```jsonnet
check.withLabels(labels)
```

PARAMETERS:

* **labels** (`object`)

`withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.

Parameters:
- `labels`: Labels object to add to the check

#### fn check.withProbes

```jsonnet
check.withProbes(probes)
```

PARAMETERS:

* **probes** (`array`)

`withProbes` takes a list of probe location IDs where the target will be checked from.

The IDs can be found by using the 'Synthetic Monitoring' data source in Explore.

NOTE: The IDs may be different depending on the stack's location.

Parameters:
- `probes`: Array of probe IDs to use for monitoring
