# slack



## Index

* [`fn withChannelId(value)`](#fn-withchannelid)
* [`fn withSlackChannelRef(value)`](#fn-withslackchannelref)
* [`fn withSlackChannelRefMixin(value)`](#fn-withslackchannelrefmixin)
* [`fn withSlackChannelSelector(value)`](#fn-withslackchannelselector)
* [`fn withSlackChannelSelectorMixin(value)`](#fn-withslackchannelselectormixin)
* [`fn withSlackUserGroupRef(value)`](#fn-withslackusergroupref)
* [`fn withSlackUserGroupRefMixin(value)`](#fn-withslackusergrouprefmixin)
* [`fn withSlackUserGroupSelector(value)`](#fn-withslackusergroupselector)
* [`fn withSlackUserGroupSelectorMixin(value)`](#fn-withslackusergroupselectormixin)
* [`fn withUserGroupId(value)`](#fn-withusergroupid)
* [`obj slackChannelRef`](#obj-slackchannelref)
  * [`fn withName(value)`](#fn-slackchannelrefwithname)
  * [`fn withPolicy(value)`](#fn-slackchannelrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-slackchannelrefwithpolicymixin)
  * [`obj policy`](#obj-slackchannelrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-slackchannelrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-slackchannelrefpolicywithresolve)
* [`obj slackChannelSelector`](#obj-slackchannelselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-slackchannelselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-slackchannelselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-slackchannelselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-slackchannelselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-slackchannelselectorwithpolicymixin)
  * [`obj policy`](#obj-slackchannelselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-slackchannelselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-slackchannelselectorpolicywithresolve)
* [`obj slackUserGroupRef`](#obj-slackusergroupref)
  * [`fn withName(value)`](#fn-slackusergrouprefwithname)
  * [`fn withPolicy(value)`](#fn-slackusergrouprefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-slackusergrouprefwithpolicymixin)
  * [`obj policy`](#obj-slackusergrouprefpolicy)
    * [`fn withResolution(value="Required")`](#fn-slackusergrouprefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-slackusergrouprefpolicywithresolve)
* [`obj slackUserGroupSelector`](#obj-slackusergroupselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-slackusergroupselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-slackusergroupselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-slackusergroupselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-slackusergroupselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-slackusergroupselectorwithpolicymixin)
  * [`obj policy`](#obj-slackusergroupselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-slackusergroupselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-slackusergroupselectorpolicywithresolve)

## Fields

### fn withChannelId

```jsonnet
withChannelId(value)
```

PARAMETERS:

* **value** (`string`)

(String) Slack channel id. Reminder about schedule shifts will be directed to this channel in Slack.
Slack channel id. Reminder about schedule shifts will be directed to this channel in Slack.
### fn withSlackChannelRef

```jsonnet
withSlackChannelRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a SlackChannel in oncall to populate channelId.
### fn withSlackChannelRefMixin

```jsonnet
withSlackChannelRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a SlackChannel in oncall to populate channelId.
### fn withSlackChannelSelector

```jsonnet
withSlackChannelSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a SlackChannel in oncall to populate channelId.
### fn withSlackChannelSelectorMixin

```jsonnet
withSlackChannelSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a SlackChannel in oncall to populate channelId.
### fn withSlackUserGroupRef

```jsonnet
withSlackUserGroupRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a UserGroup in oncall to populate userGroupId.
### fn withSlackUserGroupRefMixin

```jsonnet
withSlackUserGroupRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a UserGroup in oncall to populate userGroupId.
### fn withSlackUserGroupSelector

```jsonnet
withSlackUserGroupSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a UserGroup in oncall to populate userGroupId.
### fn withSlackUserGroupSelectorMixin

```jsonnet
withSlackUserGroupSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a UserGroup in oncall to populate userGroupId.
### fn withUserGroupId

```jsonnet
withUserGroupId(value)
```

PARAMETERS:

* **value** (`string`)

call users change.
Slack user group id. Members of user group will be updated when on-call users change.
### obj slackChannelRef


#### fn slackChannelRef.withName

```jsonnet
slackChannelRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn slackChannelRef.withPolicy

```jsonnet
slackChannelRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn slackChannelRef.withPolicyMixin

```jsonnet
slackChannelRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj slackChannelRef.policy


##### fn slackChannelRef.policy.withResolution

```jsonnet
slackChannelRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn slackChannelRef.policy.withResolve

```jsonnet
slackChannelRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj slackChannelSelector


#### fn slackChannelSelector.withMatchControllerRef

```jsonnet
slackChannelSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn slackChannelSelector.withMatchLabels

```jsonnet
slackChannelSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn slackChannelSelector.withMatchLabelsMixin

```jsonnet
slackChannelSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn slackChannelSelector.withPolicy

```jsonnet
slackChannelSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn slackChannelSelector.withPolicyMixin

```jsonnet
slackChannelSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj slackChannelSelector.policy


##### fn slackChannelSelector.policy.withResolution

```jsonnet
slackChannelSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn slackChannelSelector.policy.withResolve

```jsonnet
slackChannelSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj slackUserGroupRef


#### fn slackUserGroupRef.withName

```jsonnet
slackUserGroupRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn slackUserGroupRef.withPolicy

```jsonnet
slackUserGroupRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn slackUserGroupRef.withPolicyMixin

```jsonnet
slackUserGroupRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj slackUserGroupRef.policy


##### fn slackUserGroupRef.policy.withResolution

```jsonnet
slackUserGroupRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn slackUserGroupRef.policy.withResolve

```jsonnet
slackUserGroupRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj slackUserGroupSelector


#### fn slackUserGroupSelector.withMatchControllerRef

```jsonnet
slackUserGroupSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn slackUserGroupSelector.withMatchLabels

```jsonnet
slackUserGroupSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn slackUserGroupSelector.withMatchLabelsMixin

```jsonnet
slackUserGroupSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn slackUserGroupSelector.withPolicy

```jsonnet
slackUserGroupSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn slackUserGroupSelector.withPolicyMixin

```jsonnet
slackUserGroupSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj slackUserGroupSelector.policy


##### fn slackUserGroupSelector.policy.withResolution

```jsonnet
slackUserGroupSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn slackUserGroupSelector.policy.withResolve

```jsonnet
slackUserGroupSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.