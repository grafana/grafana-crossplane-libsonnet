# policy



## Subpackages

* [matcher](matcher.md)

## Index

* [`fn withActiveTimings(value)`](#fn-withactivetimings)
* [`fn withActiveTimingsMixin(value)`](#fn-withactivetimingsmixin)
* [`fn withContactPoint(value)`](#fn-withcontactpoint)
* [`fn withContinue(value=true)`](#fn-withcontinue)
* [`fn withGroupBy(value)`](#fn-withgroupby)
* [`fn withGroupByMixin(value)`](#fn-withgroupbymixin)
* [`fn withGroupInterval(value)`](#fn-withgroupinterval)
* [`fn withGroupWait(value)`](#fn-withgroupwait)
* [`fn withMatcher(value)`](#fn-withmatcher)
* [`fn withMatcherMixin(value)`](#fn-withmatchermixin)
* [`fn withMuteTimings(value)`](#fn-withmutetimings)
* [`fn withMuteTimingsMixin(value)`](#fn-withmutetimingsmixin)
* [`fn withRepeatInterval(value)`](#fn-withrepeatinterval)

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

(String) The default contact point to route all unmatched notifications to.
The contact point to route notifications that match this rule to.
### fn withContinue

```jsonnet
withContinue(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.
Whether to continue matching subsequent rules if an alert matches the current rule. Otherwise, the rule will be 'consumed' by the first policy to match it.
### fn withGroupBy

```jsonnet
withGroupBy(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.
A list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.
### fn withGroupByMixin

```jsonnet
withGroupByMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of alert labels to group alerts into notifications by. Use the special label ... to group alerts by all labels, effectively disabling grouping.
A list of alert labels to group alerts into notifications by. Use the special label `...` to group alerts by all labels, effectively disabling grouping. Required for root policy only. If empty, the parent grouping is used.
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
### fn withMatcher

```jsonnet
withMatcher(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)
Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.
### fn withMatcherMixin

```jsonnet
withMatcherMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances. (see below for nested schema)
Describes which labels this rule should match. When multiple matchers are supplied, an alert must match ALL matchers to be accepted by this policy. When no matchers are supplied, the rule will match all alert instances.
### fn withMuteTimings

```jsonnet
withMuteTimings(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.
A list of time intervals to apply to alerts that match this policy to mute them for the specified time.
### fn withMuteTimingsMixin

```jsonnet
withMuteTimingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) A list of time intervals to apply to alerts that match this policy to mute them for the specified time.
A list of time intervals to apply to alerts that match this policy to mute them for the specified time.
### fn withRepeatInterval

```jsonnet
withRepeatInterval(value)
```

PARAMETERS:

* **value** (`string`)

sending a notification if an alert is still firing. Default is 4 hours.
Minimum time interval for re-sending a notification if an alert is still firing. Default is 4 hours.