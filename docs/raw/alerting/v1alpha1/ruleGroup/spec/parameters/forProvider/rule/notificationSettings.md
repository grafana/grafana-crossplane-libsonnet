# notificationSettings



## Index

* [`fn withActiveTimings(value)`](#fn-withactivetimings)
* [`fn withActiveTimingsMixin(value)`](#fn-withactivetimingsmixin)
* [`fn withContactPoint(value)`](#fn-withcontactpoint)
* [`fn withContactPointRef(value)`](#fn-withcontactpointref)
* [`fn withContactPointRefMixin(value)`](#fn-withcontactpointrefmixin)
* [`fn withContactPointSelector(value)`](#fn-withcontactpointselector)
* [`fn withContactPointSelectorMixin(value)`](#fn-withcontactpointselectormixin)
* [`fn withGroupBy(value)`](#fn-withgroupby)
* [`fn withGroupByMixin(value)`](#fn-withgroupbymixin)
* [`fn withGroupInterval(value)`](#fn-withgroupinterval)
* [`fn withGroupWait(value)`](#fn-withgroupwait)
* [`fn withMuteTimings(value)`](#fn-withmutetimings)
* [`fn withMuteTimingsMixin(value)`](#fn-withmutetimingsmixin)
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

### fn withActiveTimings

```jsonnet
withActiveTimings(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later
A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later
### fn withActiveTimingsMixin

```jsonnet
withActiveTimingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later
A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time. Supported in Grafana 12.1.0 and later
### fn withContactPoint

```jsonnet
withContactPoint(value)
```

PARAMETERS:

* **value** (`string`)

(String) The contact point to route notifications that match this rule to.
The contact point to route notifications that match this rule to.
### fn withContactPointRef

```jsonnet
withContactPointRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a ContactPoint in alerting to populate contactPoint.
### fn withContactPointRefMixin

```jsonnet
withContactPointRefMixin(value)
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
### fn withContactPointSelectorMixin

```jsonnet
withContactPointSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a ContactPoint in alerting to populate contactPoint.
### fn withGroupBy

```jsonnet
withGroupBy(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.
A list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.
### fn withGroupByMixin

```jsonnet
withGroupByMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.
A list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. If empty, no grouping is used. If specified, requires labels 'alertname' and 'grafana_folder' to be included.
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
### fn withMuteTimings

```jsonnet
withMuteTimings(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of mute timing names to apply to alerts that match this policy.
A list of mute timing names to apply to alerts that match this policy.
### fn withMuteTimingsMixin

```jsonnet
withMuteTimingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of mute timing names to apply to alerts that match this policy.
A list of mute timing names to apply to alerts that match this policy.
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