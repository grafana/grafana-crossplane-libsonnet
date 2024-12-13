# settings



## Subpackages

* [browser](browser.md)
* [dns](dns/index.md)
* [grpc](grpc/index.md)
* [http](http/index.md)
* [multihttp](multihttp/index.md)
* [ping](ping.md)
* [scripted](scripted.md)
* [tcp](tcp/index.md)
* [traceroute](traceroute.md)

## Index

* [`fn withBrowser(value)`](#fn-withbrowser)
* [`fn withBrowserMixin(value)`](#fn-withbrowsermixin)
* [`fn withDns(value)`](#fn-withdns)
* [`fn withDnsMixin(value)`](#fn-withdnsmixin)
* [`fn withGrpc(value)`](#fn-withgrpc)
* [`fn withGrpcMixin(value)`](#fn-withgrpcmixin)
* [`fn withHttp(value)`](#fn-withhttp)
* [`fn withHttpMixin(value)`](#fn-withhttpmixin)
* [`fn withMultihttp(value)`](#fn-withmultihttp)
* [`fn withMultihttpMixin(value)`](#fn-withmultihttpmixin)
* [`fn withPing(value)`](#fn-withping)
* [`fn withPingMixin(value)`](#fn-withpingmixin)
* [`fn withScripted(value)`](#fn-withscripted)
* [`fn withScriptedMixin(value)`](#fn-withscriptedmixin)
* [`fn withTcp(value)`](#fn-withtcp)
* [`fn withTcpMixin(value)`](#fn-withtcpmixin)
* [`fn withTraceroute(value)`](#fn-withtraceroute)
* [`fn withTracerouteMixin(value)`](#fn-withtraceroutemixin)

## Fields

### fn withBrowser

```jsonnet
withBrowser(value)
```

PARAMETERS:

* **value** (`array`)

cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/. (see below for nested schema)
Settings for browser check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/.
### fn withBrowserMixin

```jsonnet
withBrowserMixin(value)
```

PARAMETERS:

* **value** (`array`)

cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/. (see below for nested schema)
Settings for browser check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6-browser/.
### fn withDns

```jsonnet
withDns(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for DNS check. The target must be a valid hostname (or IP address for PTR records). (see below for nested schema)
Settings for DNS check. The target must be a valid hostname (or IP address for `PTR` records).
### fn withDnsMixin

```jsonnet
withDnsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for DNS check. The target must be a valid hostname (or IP address for PTR records). (see below for nested schema)
Settings for DNS check. The target must be a valid hostname (or IP address for `PTR` records).
### fn withGrpc

```jsonnet
withGrpc(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for gRPC Health check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)
Settings for gRPC Health check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.
### fn withGrpcMixin

```jsonnet
withGrpcMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for gRPC Health check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)
Settings for gRPC Health check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.
### fn withHttp

```jsonnet
withHttp(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for HTTP check. The target must be a URL (http or https). (see below for nested schema)
Settings for HTTP check. The target must be a URL (http or https).
### fn withHttpMixin

```jsonnet
withHttpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for HTTP check. The target must be a URL (http or https). (see below for nested schema)
Settings for HTTP check. The target must be a URL (http or https).
### fn withMultihttp

```jsonnet
withMultihttp(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for MultiHTTP check. The target must be a URL (http or https) (see below for nested schema)
Settings for MultiHTTP check. The target must be a URL (http or https)
### fn withMultihttpMixin

```jsonnet
withMultihttpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for MultiHTTP check. The target must be a URL (http or https) (see below for nested schema)
Settings for MultiHTTP check. The target must be a URL (http or https)
### fn withPing

```jsonnet
withPing(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for ping (ICMP) check. The target must be a valid hostname or IP address. (see below for nested schema)
Settings for ping (ICMP) check. The target must be a valid hostname or IP address.
### fn withPingMixin

```jsonnet
withPingMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for ping (ICMP) check. The target must be a valid hostname or IP address. (see below for nested schema)
Settings for ping (ICMP) check. The target must be a valid hostname or IP address.
### fn withScripted

```jsonnet
withScripted(value)
```

PARAMETERS:

* **value** (`array`)

cloud/testing/synthetic-monitoring/create-checks/checks/k6/. (see below for nested schema)
Settings for scripted check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6/.
### fn withScriptedMixin

```jsonnet
withScriptedMixin(value)
```

PARAMETERS:

* **value** (`array`)

cloud/testing/synthetic-monitoring/create-checks/checks/k6/. (see below for nested schema)
Settings for scripted check. See https://grafana.com/docs/grafana-cloud/testing/synthetic-monitoring/create-checks/checks/k6/.
### fn withTcp

```jsonnet
withTcp(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for TCP check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)
Settings for TCP check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.
### fn withTcpMixin

```jsonnet
withTcpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for TCP check. The target must be of the form <host>:<port>, where the host portion must be a valid hostname or IP address. (see below for nested schema)
Settings for TCP check. The target must be of the form `<host>:<port>`, where the host portion must be a valid hostname or IP address.
### fn withTraceroute

```jsonnet
withTraceroute(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for traceroute check. The target must be a valid hostname or IP address (see below for nested schema)
Settings for traceroute check. The target must be a valid hostname or IP address
### fn withTracerouteMixin

```jsonnet
withTracerouteMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Settings for traceroute check. The target must be a valid hostname or IP address (see below for nested schema)
Settings for traceroute check. The target must be a valid hostname or IP address