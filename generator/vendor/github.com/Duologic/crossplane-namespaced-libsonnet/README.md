# crossplane-namespaced-libsonnet

A POC that turns a Crossplane CRD resource into a Composition/CompositeResourceDefinition
pair. This directly maps a non-namespaced provider resource to a namespaced XRD.

Rationale: Often I find myself adding a bunch of parameters from a provider resource to
the XRD, eventually all parameters end up being synced almost entirely to make sure that
the namespaced object can modify them. With this library, I can avoid a lot of boilerplate
code and provide a consistent base Composition/XRD to build upon at different abstraction
layers.

## Usage

```jsonnet
local namespaced = import 'github.com/Duologic/crossplane-namespaced-libsonnet/main.libsonnet';

namespaced.fromCRD(import 'crd.json')
```

This returns a `Composition` and `CompositeResourceDefinition` for this CRD:

```json
{
   "composition": {
      "apiVersion": "apiextensions.crossplane.io/v1",
      "kind": "Composition",
      ...
   },
   "definition": {
      "apiVersion": "apiextensions.crossplane.io/v1",
      "kind": "CompositeResourceDefinition",
      ...
   }
}
```
