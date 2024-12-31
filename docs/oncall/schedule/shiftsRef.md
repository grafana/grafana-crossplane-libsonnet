# shiftsRef



## Index

* [`fn withName(value)`](#fn-withname)
* [`fn withPolicy(value)`](#fn-withpolicy)
* [`fn withPolicyMixin(value)`](#fn-withpolicymixin)
* [`obj policy`](#obj-policy)
  * [`fn withResolution(value="Required")`](#fn-policywithresolution)
  * [`fn withResolve(value)`](#fn-policywithresolve)

## Fields

### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
### fn withPolicy

```jsonnet
withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
### fn withPolicyMixin

```jsonnet
withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
### obj policy


#### fn policy.withResolution

```jsonnet
policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
#### fn policy.withResolve

```jsonnet
policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.