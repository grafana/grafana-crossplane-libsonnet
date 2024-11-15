# ldapSettings



## Subpackages

* [config](config/index.md)

## Index

* [`fn withAllowSignUp(value=true)`](#fn-withallowsignup)
* [`fn withConfig(value)`](#fn-withconfig)
* [`fn withConfigMixin(value)`](#fn-withconfigmixin)
* [`fn withEnabled(value=true)`](#fn-withenabled)
* [`fn withSkipOrgRoleSync(value=true)`](#fn-withskiporgrolesync)

## Fields

### fn withAllowSignUp

```jsonnet
withAllowSignUp(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.
Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.
### fn withConfig

```jsonnet
withConfig(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1, Max: 1) The LDAP configuration. (see below for nested schema)
The LDAP configuration.
### fn withConfigMixin

```jsonnet
withConfigMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List, Min: 1, Max: 1) The LDAP configuration. (see below for nested schema)
The LDAP configuration.
### fn withEnabled

```jsonnet
withEnabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.
Define whether this configuration is enabled for LDAP. Defaults to `true`.
### fn withSkipOrgRoleSync

```jsonnet
withSkipOrgRoleSync(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Prevent synchronizing users’ organization roles from LDAP.
Prevent synchronizing users’ organization roles from LDAP.