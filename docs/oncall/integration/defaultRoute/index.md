# defaultRoute



## Subpackages

* [msteams](msteams.md)
* [slack](slack.md)
* [telegram](telegram.md)

## Index

* [`fn withEscalationChainId(value)`](#fn-withescalationchainid)
* [`fn withEscalationChainRef(value)`](#fn-withescalationchainref)
* [`fn withEscalationChainRefMixin(value)`](#fn-withescalationchainrefmixin)
* [`fn withEscalationChainSelector(value)`](#fn-withescalationchainselector)
* [`fn withEscalationChainSelectorMixin(value)`](#fn-withescalationchainselectormixin)
* [`fn withMsteams(value)`](#fn-withmsteams)
* [`fn withMsteamsMixin(value)`](#fn-withmsteamsmixin)
* [`fn withSlack(value)`](#fn-withslack)
* [`fn withSlackMixin(value)`](#fn-withslackmixin)
* [`fn withTelegram(value)`](#fn-withtelegram)
* [`fn withTelegramMixin(value)`](#fn-withtelegrammixin)
* [`obj escalationChainRef`](#obj-escalationchainref)
  * [`fn withName(value)`](#fn-escalationchainrefwithname)
  * [`fn withPolicy(value)`](#fn-escalationchainrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-escalationchainrefwithpolicymixin)
  * [`obj policy`](#obj-escalationchainrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-escalationchainrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-escalationchainrefpolicywithresolve)
* [`obj escalationChainSelector`](#obj-escalationchainselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-escalationchainselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-escalationchainselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-escalationchainselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-escalationchainselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-escalationchainselectorwithpolicymixin)
  * [`obj policy`](#obj-escalationchainselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-escalationchainselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-escalationchainselectorpolicywithresolve)

## Fields

### fn withEscalationChainId

```jsonnet
withEscalationChainId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the escalation chain.
The ID of the escalation chain.
### fn withEscalationChainRef

```jsonnet
withEscalationChainRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a EscalationChain in oncall to populate escalationChainId.
### fn withEscalationChainRefMixin

```jsonnet
withEscalationChainRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a EscalationChain in oncall to populate escalationChainId.
### fn withEscalationChainSelector

```jsonnet
withEscalationChainSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a EscalationChain in oncall to populate escalationChainId.
### fn withEscalationChainSelectorMixin

```jsonnet
withEscalationChainSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a EscalationChain in oncall to populate escalationChainId.
### fn withMsteams

```jsonnet
withMsteams(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a route. (see below for nested schema)
MS teams-specific settings for a route.
### fn withMsteamsMixin

```jsonnet
withMsteamsMixin(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a route. (see below for nested schema)
MS teams-specific settings for a route.
### fn withSlack

```jsonnet
withSlack(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a route. (see below for nested schema)
Slack-specific settings for a route.
### fn withSlackMixin

```jsonnet
withSlackMixin(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a route. (see below for nested schema)
Slack-specific settings for a route.
### fn withTelegram

```jsonnet
withTelegram(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a route. (see below for nested schema)
Telegram-specific settings for a route.
### fn withTelegramMixin

```jsonnet
withTelegramMixin(value)
```

PARAMETERS:

* **value** (`array`)

specific settings for a route. (see below for nested schema)
Telegram-specific settings for a route.
### obj escalationChainRef


#### fn escalationChainRef.withName

```jsonnet
escalationChainRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn escalationChainRef.withPolicy

```jsonnet
escalationChainRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn escalationChainRef.withPolicyMixin

```jsonnet
escalationChainRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj escalationChainRef.policy


##### fn escalationChainRef.policy.withResolution

```jsonnet
escalationChainRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn escalationChainRef.policy.withResolve

```jsonnet
escalationChainRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj escalationChainSelector


#### fn escalationChainSelector.withMatchControllerRef

```jsonnet
escalationChainSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn escalationChainSelector.withMatchLabels

```jsonnet
escalationChainSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn escalationChainSelector.withMatchLabelsMixin

```jsonnet
escalationChainSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn escalationChainSelector.withPolicy

```jsonnet
escalationChainSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn escalationChainSelector.withPolicyMixin

```jsonnet
escalationChainSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj escalationChainSelector.policy


##### fn escalationChainSelector.policy.withResolution

```jsonnet
escalationChainSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn escalationChainSelector.policy.withResolve

```jsonnet
escalationChainSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.