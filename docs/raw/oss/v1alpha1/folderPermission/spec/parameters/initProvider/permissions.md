# permissions



## Index

* [`fn withPermission(value)`](#fn-withpermission)
* [`fn withRole(value)`](#fn-withrole)
* [`fn withTeamId(value)`](#fn-withteamid)
* [`fn withTeamRef(value)`](#fn-withteamref)
* [`fn withTeamRefMixin(value)`](#fn-withteamrefmixin)
* [`fn withTeamSelector(value)`](#fn-withteamselector)
* [`fn withTeamSelectorMixin(value)`](#fn-withteamselectormixin)
* [`fn withUserId(value)`](#fn-withuserid)
* [`fn withUserRef(value)`](#fn-withuserref)
* [`fn withUserRefMixin(value)`](#fn-withuserrefmixin)
* [`fn withUserSelector(value)`](#fn-withuserselector)
* [`fn withUserSelectorMixin(value)`](#fn-withuserselectormixin)
* [`obj teamRef`](#obj-teamref)
  * [`fn withName(value)`](#fn-teamrefwithname)
  * [`fn withPolicy(value)`](#fn-teamrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-teamrefwithpolicymixin)
  * [`obj policy`](#obj-teamrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-teamrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-teamrefpolicywithresolve)
* [`obj teamSelector`](#obj-teamselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-teamselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-teamselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-teamselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-teamselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-teamselectorwithpolicymixin)
  * [`obj policy`](#obj-teamselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-teamselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-teamselectorpolicywithresolve)
* [`obj userRef`](#obj-userref)
  * [`fn withName(value)`](#fn-userrefwithname)
  * [`fn withPolicy(value)`](#fn-userrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-userrefwithpolicymixin)
  * [`obj policy`](#obj-userrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-userrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-userrefpolicywithresolve)
* [`obj userSelector`](#obj-userselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-userselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-userselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-userselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-userselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-userselectorwithpolicymixin)
  * [`obj policy`](#obj-userselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-userselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-userselectorpolicywithresolve)

## Fields

### fn withPermission

```jsonnet
withPermission(value)
```

PARAMETERS:

* **value** (`string`)

(String) Permission to associate with item. Options: View, Edit, Admin.
Permission to associate with item. Options: View, Edit, Admin.
### fn withRole

```jsonnet
withRole(value)
```

PARAMETERS:

* **value** (`string`)

(String) Name of the basic role to manage permissions for. Options: Viewer, Editor or Admin.
Name of the basic role to manage permissions for. Options: `Viewer`, `Editor` or `Admin`.
### fn withTeamId

```jsonnet
withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) ID of the team to manage permissions for.
ID of the team to manage permissions for.
### fn withTeamRef

```jsonnet
withTeamRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Team in oss to populate teamId.
### fn withTeamRefMixin

```jsonnet
withTeamRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Team in oss to populate teamId.
### fn withTeamSelector

```jsonnet
withTeamSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Team in oss to populate teamId.
### fn withTeamSelectorMixin

```jsonnet
withTeamSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Team in oss to populate teamId.
### fn withUserId

```jsonnet
withUserId(value)
```

PARAMETERS:

* **value** (`string`)

(String) ID of the user or service account to manage permissions for.
ID of the user or service account to manage permissions for.
### fn withUserRef

```jsonnet
withUserRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a User in oss to populate userId.
### fn withUserRefMixin

```jsonnet
withUserRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a User in oss to populate userId.
### fn withUserSelector

```jsonnet
withUserSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a User in oss to populate userId.
### fn withUserSelectorMixin

```jsonnet
withUserSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a User in oss to populate userId.
### obj teamRef


#### fn teamRef.withName

```jsonnet
teamRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn teamRef.withPolicy

```jsonnet
teamRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn teamRef.withPolicyMixin

```jsonnet
teamRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj teamRef.policy


##### fn teamRef.policy.withResolution

```jsonnet
teamRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn teamRef.policy.withResolve

```jsonnet
teamRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj teamSelector


#### fn teamSelector.withMatchControllerRef

```jsonnet
teamSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn teamSelector.withMatchLabels

```jsonnet
teamSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn teamSelector.withMatchLabelsMixin

```jsonnet
teamSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn teamSelector.withPolicy

```jsonnet
teamSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn teamSelector.withPolicyMixin

```jsonnet
teamSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj teamSelector.policy


##### fn teamSelector.policy.withResolution

```jsonnet
teamSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn teamSelector.policy.withResolve

```jsonnet
teamSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj userRef


#### fn userRef.withName

```jsonnet
userRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn userRef.withPolicy

```jsonnet
userRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn userRef.withPolicyMixin

```jsonnet
userRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj userRef.policy


##### fn userRef.policy.withResolution

```jsonnet
userRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn userRef.policy.withResolve

```jsonnet
userRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj userSelector


#### fn userSelector.withMatchControllerRef

```jsonnet
userSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn userSelector.withMatchLabels

```jsonnet
userSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn userSelector.withMatchLabelsMixin

```jsonnet
userSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn userSelector.withPolicy

```jsonnet
userSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn userSelector.withPolicyMixin

```jsonnet
userSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj userSelector.policy


##### fn userSelector.policy.withResolution

```jsonnet
userSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn userSelector.policy.withResolve

```jsonnet
userSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.