# schedule



## Index

* [`fn withCustomInterval(value)`](#fn-withcustominterval)
* [`fn withEndTime(value)`](#fn-withendtime)
* [`fn withFrequency(value)`](#fn-withfrequency)
* [`fn withLastDayOfMonth(value=true)`](#fn-withlastdayofmonth)
* [`fn withStartTime(value)`](#fn-withstarttime)
* [`fn withTimezone(value)`](#fn-withtimezone)
* [`fn withWorkdaysOnly(value=true)`](#fn-withworkdaysonly)

## Fields

### fn withCustomInterval

```jsonnet
withCustomInterval(value)
```

PARAMETERS:

* **value** (`string`)

(String) Custom interval of the report.
Note: This field is only available when frequency is set to custom.
Custom interval of the report.
**Note:** This field is only available when frequency is set to `custom`.
### fn withEndTime

```jsonnet
withEndTime(value)
```

PARAMETERS:

* **value** (`string`)

01-02T15:04:05 format if you want to set a custom timezone
End time of the report. If empty, the report will be sent indefinitely (according to frequency). Note that times will be saved as UTC in Grafana. Use 2006-01-02T15:04:05 format if you want to set a custom timezone
### fn withFrequency

```jsonnet
withFrequency(value)
```

PARAMETERS:

* **value** (`string`)

(String) Frequency of the report. Allowed values: never, once, hourly, daily, weekly, monthly, custom.
Frequency of the report. Allowed values: `never`, `once`, `hourly`, `daily`, `weekly`, `monthly`, `custom`.
### fn withLastDayOfMonth

```jsonnet
withLastDayOfMonth(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Send the report on the last day of the month
Send the report on the last day of the month
### fn withStartTime

```jsonnet
withStartTime(value)
```

PARAMETERS:

* **value** (`string`)

01-02T15:04:05 format if you want to set a custom timezone
Start time of the report. If empty, the start date will be set to the creation time. Note that times will be saved as UTC in Grafana. Use 2006-01-02T15:04:05 format if you want to set a custom timezone
### fn withTimezone

```jsonnet
withTimezone(value)
```

PARAMETERS:

* **value** (`string`)

(String) Set the report time zone.
Set the report time zone.
### fn withWorkdaysOnly

```jsonnet
withWorkdaysOnly(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to send the report only on work days.
Whether to send the report only on work days.