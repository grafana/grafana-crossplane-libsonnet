# sm.check



## Subpackages

* [settings.grpc](settings/grpc/index.md)
* [settings.http](settings/http/index.md)

## Index

* [`fn new(name, job, url)`](#fn-new)
* [`fn withGrpcSettings(grpc)`](#fn-withgrpcsettings)
* [`fn withHttpSettings(http)`](#fn-withhttpsettings)
* [`fn withHttpStatusCheck(validStatusCodes=[200])`](#fn-withhttpstatuscheck)
* [`fn withLabels(labels)`](#fn-withlabels)
* [`fn withProbes(probes)`](#fn-withprobes)

## Fields

### fn new

```jsonnet
new(name, job, url)
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

### fn withGrpcSettings

```jsonnet
withGrpcSettings(grpc)
```

PARAMETERS:

* **grpc** (`object`)

`withGrpcSettings` configures the settings for a gRPC check. The target must be of the form `host:port`.

The `grpc` object can be created with `check.settings.grpc.new()`.

Parameters:
- `grpc`: gRPC settings object to override defaults

### fn withHttpSettings

```jsonnet
withHttpSettings(http)
```

PARAMETERS:

* **http** (`object`)

`withHttpSettings` configures the settings for a HTTP check. The target must be a URL (http or https).

The `http` object can be created with `check.settings.http.new()`.

Parameters:
- `httpSettings`: HTTP settings object to override defaults

### fn withHttpStatusCheck

```jsonnet
withHttpStatusCheck(validStatusCodes=[200])
```

PARAMETERS:

* **validStatusCodes** (`array`)
   - default value: `[200]`

`withHttpStatusCheck` configures a simple HTTP status check for the target URL.

### fn withLabels

```jsonnet
withLabels(labels)
```

PARAMETERS:

* **labels** (`object`)

`withLabels` adds custom labels to be included with collected metrics and logs. The maximum number of labels that can be specified per check is 5. These are applied, along with the probe-specific labels, to the outgoing metrics. The names and values of the labels cannot be empty, and the maximum length is 32 bytes.

Parameters:
- `labels`: Labels object to add to the check

### fn withProbes

```jsonnet
withProbes(probes)
```

PARAMETERS:

* **probes** (`array`)

`withProbes` takes a list of probe location IDs where the target will be checked from.

The IDs can be found by using the 'Synthetic Monitoring' data source in Explore.

NOTE: The IDs may be different depending on the stack's location.

Parameters:
- `probes`: Array of probe IDs to use for monitoring
