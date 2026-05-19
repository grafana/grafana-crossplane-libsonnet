# dataset



## Subpackages

* [filterGroup](filterGroup/index.md)

## Index

* [`fn withDisabledVendors(value)`](#fn-withdisabledvendors)
* [`fn withDisabledVendorsMixin(value)`](#fn-withdisabledvendorsmixin)
* [`fn withFilterGroup(value)`](#fn-withfiltergroup)
* [`fn withFilterGroupMixin(value)`](#fn-withfiltergroupmixin)
* [`fn withType(value)`](#fn-withtype)

## Fields

### fn withDisabledVendors

```jsonnet
withDisabledVendors(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) List of vendors to disable for this dataset.
List of vendors to disable for this dataset.
### fn withDisabledVendorsMixin

```jsonnet
withDisabledVendorsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) List of vendors to disable for this dataset.
List of vendors to disable for this dataset.
### fn withFilterGroup

```jsonnet
withFilterGroup(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Filter groups for this dataset. Use when you need custom label mappings. (see below for nested schema)
Filter groups for this dataset. Use when you need custom label mappings.
### fn withFilterGroupMixin

```jsonnet
withFilterGroupMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Filter groups for this dataset. Use when you need custom label mappings. (see below for nested schema)
Filter groups for this dataset. Use when you need custom label mappings.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The dataset type. Available types: kubernetes, otel (App O11y), prometheus, aws. Note: kubernetes requires K8s Monitoring to be enabled, and otel requires Application Observability to be enabled on the stack.
The dataset type. Available types: `kubernetes`, `otel` (App O11y), `prometheus`, `aws`. Note: `kubernetes` requires K8s Monitoring to be enabled, and `otel` requires Application Observability to be enabled on the stack.