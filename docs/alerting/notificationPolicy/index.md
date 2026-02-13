# notificationPolicy

Provides functions to set up a notification policy.

## Subpackages

* [policy](policy/index.md)
* [util](util.md)

## Index

* [`fn new(name, defaultContactPointName, groupBy=["..."])`](#fn-new)
* [`fn withContactPoint(value)`](#fn-withcontactpoint)
* [`fn withContactPointRef(value)`](#fn-withcontactpointref)
* [`fn withContactPointSelector(value)`](#fn-withcontactpointselector)
* [`fn withDisableProvenance(value=true)`](#fn-withdisableprovenance)
* [`fn withGroupBy(value)`](#fn-withgroupby)
* [`fn withGroupByMixin(value)`](#fn-withgroupbymixin)
* [`fn withGroupInterval(value)`](#fn-withgroupinterval)
* [`fn withGroupWait(value)`](#fn-withgroupwait)
* [`fn withPolicy(value)`](#fn-withpolicy)
* [`fn withPolicyMixin(value)`](#fn-withpolicymixin)
* [`fn withRepeatInterval(value)`](#fn-withrepeatinterval)
* [`obj contactPointRef`](#obj-contactpointref)
  * [`fn withName(value)`](#fn-contactpointrefwithname)
  * [`fn withPolicy(value)`](#fn-contactpointrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-contactpointrefwithpolicymixin)
  * [`obj policy`](#obj-contactpointrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-contactpointrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-contactpointrefpolicywithresolve)
* [`obj contactPointSelector`](#obj-contactpointselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-contactpointselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-contactpointselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-contactpointselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-contactpointselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-contactpointselectorwithpolicymixin)
  * [`obj policy`](#obj-contactpointselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-contactpointselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-contactpointselectorpolicywithresolve)

## Fields

### fn new

```jsonnet
new(name, defaultContactPointName, groupBy=["..."])
```

PARAMETERS:

* **name** (`string`)
* **defaultContactPointName** (`string`)
* **groupBy** (`array`)
   - default value: `["..."]`

`new` creates a new notificationPolicy resource.
### fn withContactPoint

```jsonnet
withContactPoint(value)
```

PARAMETERS:

* **value** (`string`)

(String) The default contact point to route all unmatched notifications to.
The default contact point to route all unmatched notifications to.
### fn withContactPointRef

```jsonnet
withContactPointRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a ContactPoint in alerting to populate contactPoint.
### fn withContactPointSelector

```jsonnet
withContactPointSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a ContactPoint in alerting to populate contactPoint.
### fn withDisableProvenance

```jsonnet
withDisableProvenance(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

Defaults to false. Defaults to `false`.
### fn withGroupBy

```jsonnet
withGroupBy(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.
A list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping.
### fn withGroupByMixin

```jsonnet
withGroupByMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.
A list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping.
### fn withGroupInterval

```jsonnet
withGroupInterval(value)
```

PARAMETERS:

* **value** (`string`)

(String) Minimum time interval between two notifications for the same group. Default is 5 minutes.
Minimum time interval between two notifications for the same group. Default is 5 minutes.
### fn withGroupWait

```jsonnet
withGroupWait(value)
```

PARAMETERS:

* **value** (`string`)

(String) Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.
Time to wait to buffer alerts of the same group before sending a notification. Default is 30 seconds.
### fn withPolicy

```jsonnet
withPolicy(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Routing rules for specific label sets. (see below for nested schema)
Routing rules for specific label sets.
### fn withPolicyMixin

```jsonnet
withPolicyMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) Routing rules for specific label sets. (see below for nested schema)
Routing rules for specific label sets.
### fn withRepeatInterval

```jsonnet
withRepeatInterval(value)
```

PARAMETERS:

* **value** (`string`)

sending a notification if an alert is still firing. Default is 4 hours.
Minimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.
### obj contactPointRef


#### fn contactPointRef.withName

```jsonnet
contactPointRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn contactPointRef.withPolicy

```jsonnet
contactPointRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn contactPointRef.withPolicyMixin

```jsonnet
contactPointRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj contactPointRef.policy


##### fn contactPointRef.policy.withResolution

```jsonnet
contactPointRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn contactPointRef.policy.withResolve

```jsonnet
contactPointRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj contactPointSelector


#### fn contactPointSelector.withMatchControllerRef

```jsonnet
contactPointSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn contactPointSelector.withMatchLabels

```jsonnet
contactPointSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn contactPointSelector.withMatchLabelsMixin

```jsonnet
contactPointSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn contactPointSelector.withPolicy

```jsonnet
contactPointSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn contactPointSelector.withPolicyMixin

```jsonnet
contactPointSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj contactPointSelector.policy


##### fn contactPointSelector.policy.withResolution

```jsonnet
contactPointSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn contactPointSelector.policy.withResolve

```jsonnet
contactPointSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.