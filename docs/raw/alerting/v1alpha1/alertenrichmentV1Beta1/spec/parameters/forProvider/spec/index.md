# spec



## Subpackages

* [annotationMatchers](annotationMatchers.md)
* [labelMatchers](labelMatchers.md)
* [step](step/index.md)

## Index

* [`fn withAlertRuleUids(value)`](#fn-withalertruleuids)
* [`fn withAlertRuleUidsMixin(value)`](#fn-withalertruleuidsmixin)
* [`fn withAnnotationMatchers(value)`](#fn-withannotationmatchers)
* [`fn withAnnotationMatchersMixin(value)`](#fn-withannotationmatchersmixin)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withLabelMatchers(value)`](#fn-withlabelmatchers)
* [`fn withLabelMatchersMixin(value)`](#fn-withlabelmatchersmixin)
* [`fn withReceivers(value)`](#fn-withreceivers)
* [`fn withReceiversMixin(value)`](#fn-withreceiversmixin)
* [`fn withStep(value)`](#fn-withstep)
* [`fn withStepMixin(value)`](#fn-withstepmixin)
* [`fn withTitle(value)`](#fn-withtitle)

## Fields

### fn withAlertRuleUids

```jsonnet
withAlertRuleUids(value)
```

PARAMETERS:

* **value** (`array`)

UIDs of alert rules this enrichment applies to. If empty, applies to all alert rules.
### fn withAlertRuleUidsMixin

```jsonnet
withAlertRuleUidsMixin(value)
```

PARAMETERS:

* **value** (`array`)

UIDs of alert rules this enrichment applies to. If empty, applies to all alert rules.
### fn withAnnotationMatchers

```jsonnet
withAnnotationMatchers(value)
```

PARAMETERS:

* **value** (`array`)

Annotation matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, annotation key to match), 'value' (string, annotation value to compare against, supports regex for =~/!~ operators).
### fn withAnnotationMatchersMixin

```jsonnet
withAnnotationMatchersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Annotation matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, annotation key to match), 'value' (string, annotation value to compare against, supports regex for =~/!~ operators).
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

Description of the alert enrichment.
### fn withLabelMatchers

```jsonnet
withLabelMatchers(value)
```

PARAMETERS:

* **value** (`array`)

Label matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, label key to match), 'value' (string, label value to compare against, supports regex for =~/!~ operators).
### fn withLabelMatchersMixin

```jsonnet
withLabelMatchersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Label matchers that an alert must satisfy for this enrichment to apply. Each matcher is an object with: 'type' (string, one of: =, !=, =~, !~), 'name' (string, label key to match), 'value' (string, label value to compare against, supports regex for =~/!~ operators).
### fn withReceivers

```jsonnet
withReceivers(value)
```

PARAMETERS:

* **value** (`array`)

Receiver names to match. If empty, applies to all receivers.
### fn withReceiversMixin

```jsonnet
withReceiversMixin(value)
```

PARAMETERS:

* **value** (`array`)

Receiver names to match. If empty, applies to all receivers.
### fn withStep

```jsonnet
withStep(value)
```

PARAMETERS:

* **value** (`array`)

Enrichment step. Can be repeated multiple times to define a sequence of steps. Each step must contain exactly one enrichment block.
### fn withStepMixin

```jsonnet
withStepMixin(value)
```

PARAMETERS:

* **value** (`array`)

Enrichment step. Can be repeated multiple times to define a sequence of steps. Each step must contain exactly one enrichment block.
### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

The title of the alert enrichment.