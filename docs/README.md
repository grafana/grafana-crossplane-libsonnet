# grafanaplane

This repository provides a set of Crossplane Configurations packages and and accompanying Jsonnet library.

The Configuration packages provide a set of (namespaced) composition/XRD pairs that map directly to their non-namespaced Managed resources equivalents.

The library consists of two parts, the manually written functions to get started quicly and the full library in `zz/`. They can be used in combination with each other.

Most of this library is generated: the Compositions/XRDs packages, Configurations and the library in `zz/`.

## Install

```
jb install github.com/grafana/grafana-crossplane-libsonnet/grafanaplane@0.7.0-0.30.0
```

## Usage

```jsonnet
local grafanaplane = import 'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
```


## Subpackages

* [cloud](cloud.md)
* [configurations](configurations.md)
* [global](global.md)
* [oncall](oncall.md)
* [oss](oss/index.md)
* [raw](raw/index.md)
* [sm](sm/index.md)
