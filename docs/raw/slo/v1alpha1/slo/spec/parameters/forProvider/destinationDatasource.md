# destinationDatasource



## Index

* [`fn withRef(value)`](#fn-withref)
* [`fn withRefMixin(value)`](#fn-withrefmixin)
* [`fn withSelector(value)`](#fn-withselector)
* [`fn withSelectorMixin(value)`](#fn-withselectormixin)
* [`fn withUid(value)`](#fn-withuid)
* [`obj ref`](#obj-ref)
  * [`fn withName(value)`](#fn-refwithname)
  * [`fn withPolicy(value)`](#fn-refwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-refwithpolicymixin)
  * [`obj policy`](#obj-refpolicy)
    * [`fn withResolution(value="Required")`](#fn-refpolicywithresolution)
    * [`fn withResolve(value)`](#fn-refpolicywithresolve)
* [`obj selector`](#obj-selector)
  * [`fn withMatchControllerRef(value=true)`](#fn-selectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-selectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-selectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-selectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-selectorwithpolicymixin)
  * [`obj policy`](#obj-selectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-selectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-selectorpolicywithresolve)

## Fields

### fn withRef

```jsonnet
withRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a DataSource in oss to populate uid.
### fn withRefMixin

```jsonnet
withRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a DataSource in oss to populate uid.
### fn withSelector

```jsonnet
withSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a DataSource in oss to populate uid.
### fn withSelectorMixin

```jsonnet
withSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a DataSource in oss to populate uid.
### fn withUid

```jsonnet
withUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) UID for the Datasource
UID for the Datasource
### obj ref


#### fn ref.withName

```jsonnet
ref.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn ref.withPolicy

```jsonnet
ref.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn ref.withPolicyMixin

```jsonnet
ref.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj ref.policy


##### fn ref.policy.withResolution

```jsonnet
ref.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn ref.policy.withResolve

```jsonnet
ref.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj selector


#### fn selector.withMatchControllerRef

```jsonnet
selector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn selector.withMatchLabels

```jsonnet
selector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn selector.withMatchLabelsMixin

```jsonnet
selector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn selector.withPolicy

```jsonnet
selector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn selector.withPolicyMixin

```jsonnet
selector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj selector.policy


##### fn selector.policy.withResolution

```jsonnet
selector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn selector.policy.withResolve

```jsonnet
selector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.