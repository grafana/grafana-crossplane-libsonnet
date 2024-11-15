# groupMappings



## Index

* [`fn withGrafanaAdmin(value=true)`](#fn-withgrafanaadmin)
* [`fn withGroupDn(value)`](#fn-withgroupdn)
* [`fn withOrgId(value)`](#fn-withorgid)
* [`fn withOrgRole(value)`](#fn-withorgrole)

## Fields

### fn withGrafanaAdmin

```jsonnet
withGrafanaAdmin(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If set to true, it makes the user of group_dn Grafana server admin.
If set to true, it makes the user of group_dn Grafana server admin.
### fn withGroupDn

```jsonnet
withGroupDn(value)
```

PARAMETERS:

* **value** (`string`)

(String) LDAP distinguished name (DN) of LDAP group. If you want to match all (or no LDAP groups) then you can use wildcard ("*").
LDAP distinguished name (DN) of LDAP group. If you want to match all (or no LDAP groups) then you can use wildcard ("*").
### fn withOrgId

```jsonnet
withOrgId(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The Grafana organization database id.
The Grafana organization database id.
### fn withOrgRole

```jsonnet
withOrgRole(value)
```

PARAMETERS:

* **value** (`string`)

(String) Assign users of group_dn the organization role Admin, Editor, or Viewer.
Assign users of group_dn the organization role Admin, Editor, or Viewer.