# recurrenceRule



## Index

* [`fn withByday(value)`](#fn-withbyday)
* [`fn withBydayMixin(value)`](#fn-withbydaymixin)
* [`fn withCount(value)`](#fn-withcount)
* [`fn withFrequency(value)`](#fn-withfrequency)
* [`fn withInterval(value)`](#fn-withinterval)
* [`fn withUntil(value)`](#fn-withuntil)

## Fields

### fn withByday

```jsonnet
withByday(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) The weekdays when the 'WEEKLY' recurrence will be applied (e.g., ['MO', 'WE', 'FR']). Cannot be set for other frequencies.
The weekdays when the 'WEEKLY' recurrence will be applied (e.g., ['MO', 'WE', 'FR']). Cannot be set for other frequencies.
### fn withBydayMixin

```jsonnet
withBydayMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) The weekdays when the 'WEEKLY' recurrence will be applied (e.g., ['MO', 'WE', 'FR']). Cannot be set for other frequencies.
The weekdays when the 'WEEKLY' recurrence will be applied (e.g., ['MO', 'WE', 'FR']). Cannot be set for other frequencies.
### fn withCount

```jsonnet
withCount(value)
```

PARAMETERS:

* **value** (`number`)

(Number) How many times the recurrence will repeat.
How many times the recurrence will repeat.
### fn withFrequency

```jsonnet
withFrequency(value)
```

PARAMETERS:

* **value** (`string`)

(String) The frequency of the schedule (HOURLY, DAILY, WEEKLY, MONTHLY, YEARLY).
The frequency of the schedule (HOURLY, DAILY, WEEKLY, MONTHLY, YEARLY).
### fn withInterval

```jsonnet
withInterval(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The interval between each frequency iteration (e.g., 2 = every 2 hours for HOURLY). Defaults to 1.
The interval between each frequency iteration (e.g., 2 = every 2 hours for HOURLY). Defaults to 1.
### fn withUntil

```jsonnet
withUntil(value)
```

PARAMETERS:

* **value** (`string`)

(String) The end time for the recurrence (RFC3339 format).
The end time for the recurrence (RFC3339 format).