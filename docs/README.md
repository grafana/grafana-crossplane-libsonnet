# grafanaplane

Jsonnet library providing a namespaced set of compositions/XRDs for the Grafana Crossplane provider. The compositions, XRDs and the library for creating the XRD objects is generated.

## Install

```
jb install github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane@0.0.4-0.21.0
```

## Usage

```jsonnet
local grafanaplane = import 'github.com/Duologic/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
```


## Subpackages

* [compositions](compositions.md)
* [oss](oss/index.md)
* [raw](raw/index.md)
* [sm](sm/index.md)
