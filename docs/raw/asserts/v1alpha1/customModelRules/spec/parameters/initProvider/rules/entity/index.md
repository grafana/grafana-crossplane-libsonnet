# entity



## Subpackages

* [definedBy](definedBy.md)

## Index

* [`fn withDefinedBy(value)`](#fn-withdefinedby)
* [`fn withDefinedByMixin(value)`](#fn-withdefinedbymixin)
* [`fn withDisabled(value=true)`](#fn-withdisabled)
* [`fn withEnrichedBy(value)`](#fn-withenrichedby)
* [`fn withEnrichedByMixin(value)`](#fn-withenrichedbymixin)
* [`fn withLookup(value)`](#fn-withlookup)
* [`fn withLookupMixin(value)`](#fn-withlookupmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withScope(value)`](#fn-withscope)
* [`fn withScopeMixin(value)`](#fn-withscopemixin)
* [`fn withType(value)`](#fn-withtype)

## Fields

### fn withDefinedBy

```jsonnet
withDefinedBy(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1) List of queries that define this entity. (see below for nested schema)
List of queries that define this entity.
### fn withDefinedByMixin

```jsonnet
withDefinedByMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1) List of queries that define this entity. (see below for nested schema)
List of queries that define this entity.
### fn withDisabled

```jsonnet
withDisabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether this entity is disabled.
Whether this entity is disabled.
### fn withEnrichedBy

```jsonnet
withEnrichedBy(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) List of enrichment sources for the entity.
List of enrichment sources for the entity.
### fn withEnrichedByMixin

```jsonnet
withEnrichedByMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) List of enrichment sources for the entity.
List of enrichment sources for the entity.
### fn withLookup

```jsonnet
withLookup(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Lookup mappings for the entity.
Lookup mappings for the entity.
### fn withLookupMixin

```jsonnet
withLookupMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Lookup mappings for the entity.
Lookup mappings for the entity.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the custom model rules.
The name of the entity.
### fn withScope

```jsonnet
withScope(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Scope labels for the entity.
Scope labels for the entity.
### fn withScopeMixin

```jsonnet
withScopeMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Scope labels for the entity.
Scope labels for the entity.
### fn withType

```jsonnet
withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The type of the entity (e.g., Service, Pod, Namespace).
The type of the entity (e.g., Service, Pod, Namespace).