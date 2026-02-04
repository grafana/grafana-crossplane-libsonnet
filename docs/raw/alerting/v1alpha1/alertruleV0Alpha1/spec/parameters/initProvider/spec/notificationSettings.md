# notificationSettings



## Index

* [`fn withActiveTimings(value)`](#fn-withactivetimings)
* [`fn withActiveTimingsMixin(value)`](#fn-withactivetimingsmixin)
* [`fn withContactPoint(value)`](#fn-withcontactpoint)
* [`fn withGroupBy(value)`](#fn-withgroupby)
* [`fn withGroupByMixin(value)`](#fn-withgroupbymixin)
* [`fn withGroupInterval(value)`](#fn-withgroupinterval)
* [`fn withGroupWait(value)`](#fn-withgroupwait)
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

A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time.
### fn withActiveTimingsMixin

```jsonnet
withActiveTimingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

A list of time interval names to apply to alerts that match this policy to suppress them unless they are sent at the specified time.
### fn withContactPoint

```jsonnet
withContactPoint(value)
```

PARAMETERS:

* **value** (`string`)

The contact point to route notifications that match this rule to.
### fn withGroupBy

```jsonnet
withGroupBy(value)
```

PARAMETERS:

* **value** (`array`)

A list of alert labels to group alerts into notifications by.
### fn withGroupByMixin

```jsonnet
withGroupByMixin(value)
```

PARAMETERS:

* **value** (`array`)

A list of alert labels to group alerts into notifications by.
### fn withGroupInterval

```jsonnet
withGroupInterval(value)
```

PARAMETERS:

* **value** (`string`)

Minimum time interval between two notifications for the same group.
### fn withGroupWait

```jsonnet
withGroupWait(value)
```

PARAMETERS:

* **value** (`string`)

Time to wait to buffer alerts of the same group before sending a notification.
### fn withMuteTimings

```jsonnet
withMuteTimings(value)
```

PARAMETERS:

* **value** (`array`)

A list of mute timing names to apply to alerts that match this policy.
### fn withMuteTimingsMixin

```jsonnet
withMuteTimingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

A list of mute timing names to apply to alerts that match this policy.
### fn withRepeatInterval

```jsonnet
withRepeatInterval(value)
```

PARAMETERS:

* **value** (`string`)

Minimum time interval for re-sending a notification if an alert is still firing.