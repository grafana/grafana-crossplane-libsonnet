# grafanaplane

This repository provides a set of Crossplane Configurations packages and and accompanying Jsonnet library.

The Configuration packages provide a set of (namespaced) composition/XRD pairs that map directly to their non-namespaced Managed resources equivalents.

The library consists of two parts, the manually written functions to get started quicly and the full library in `zz/`. They can be used in combination with each other.

Most of this library is generated: the Compositions/XRDs packages, Configurations and the library in `zz/`.

## Install

```
jb install github.com/grafana/grafana-crossplane-libsonnet/grafanaplane@main
```

## Usage

```jsonnet
local grafanaplane = import 'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
```


## Subpackages

* [alerting](alerting/index.md)
* [cloud](cloud.md)
* [configurations](configurations.md)
* [enterprise](enterprise/index.md)
* [global](global.md)
* [oncall](oncall/index.md)
* [oss](oss/index.md)
* [raw](raw/index.md)
* [sm](sm/index.md)
