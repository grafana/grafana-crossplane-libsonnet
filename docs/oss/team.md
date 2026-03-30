# oss.team



## Index

* [`fn new(name)`](#fn-new)
* [`fn withExternalName(externalName)`](#fn-withexternalname)
* [`fn withMembers(members)`](#fn-withmembers)

## Fields

### fn new

```jsonnet
new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates a team.
### fn withExternalName

```jsonnet
withExternalName(externalName)
```

PARAMETERS:

* **externalName** (`string`)

`withExternalName` can be used to import an existing team.
### fn withMembers

```jsonnet
withMembers(members)
```

PARAMETERS:

* **members** (`array`)

`withMembers` configures the team members, it expects a set of email addresses corresponding to users who should be given membership to the team.

Note: users specified here must already exist in Grafana.
