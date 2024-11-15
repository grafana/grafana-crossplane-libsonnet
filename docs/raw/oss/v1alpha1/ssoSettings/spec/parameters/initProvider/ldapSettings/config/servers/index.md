# servers



## Subpackages

* [groupMappings](groupMappings.md)

## Index

* [`fn withAttributes(value)`](#fn-withattributes)
* [`fn withAttributesMixin(value)`](#fn-withattributesmixin)
* [`fn withBindDn(value)`](#fn-withbinddn)
* [`fn withBindPasswordSecretRef(value)`](#fn-withbindpasswordsecretref)
* [`fn withBindPasswordSecretRefMixin(value)`](#fn-withbindpasswordsecretrefmixin)
* [`fn withClientCert(value)`](#fn-withclientcert)
* [`fn withClientCertValue(value)`](#fn-withclientcertvalue)
* [`fn withClientKeySecretRef(value)`](#fn-withclientkeysecretref)
* [`fn withClientKeySecretRefMixin(value)`](#fn-withclientkeysecretrefmixin)
* [`fn withClientKeyValueSecretRef(value)`](#fn-withclientkeyvaluesecretref)
* [`fn withClientKeyValueSecretRefMixin(value)`](#fn-withclientkeyvaluesecretrefmixin)
* [`fn withGroupMappings(value)`](#fn-withgroupmappings)
* [`fn withGroupMappingsMixin(value)`](#fn-withgroupmappingsmixin)
* [`fn withGroupSearchBaseDns(value)`](#fn-withgroupsearchbasedns)
* [`fn withGroupSearchBaseDnsMixin(value)`](#fn-withgroupsearchbasednsmixin)
* [`fn withGroupSearchFilter(value)`](#fn-withgroupsearchfilter)
* [`fn withGroupSearchFilterUserAttribute(value)`](#fn-withgroupsearchfilteruserattribute)
* [`fn withHost(value)`](#fn-withhost)
* [`fn withMinTlsVersion(value)`](#fn-withmintlsversion)
* [`fn withPort(value)`](#fn-withport)
* [`fn withRootCaCert(value)`](#fn-withrootcacert)
* [`fn withRootCaCertValue(value)`](#fn-withrootcacertvalue)
* [`fn withRootCaCertValueMixin(value)`](#fn-withrootcacertvaluemixin)
* [`fn withSearchBaseDns(value)`](#fn-withsearchbasedns)
* [`fn withSearchBaseDnsMixin(value)`](#fn-withsearchbasednsmixin)
* [`fn withSearchFilter(value)`](#fn-withsearchfilter)
* [`fn withSslSkipVerify(value=true)`](#fn-withsslskipverify)
* [`fn withStartTls(value=true)`](#fn-withstarttls)
* [`fn withTimeout(value)`](#fn-withtimeout)
* [`fn withTlsCiphers(value)`](#fn-withtlsciphers)
* [`fn withTlsCiphersMixin(value)`](#fn-withtlsciphersmixin)
* [`fn withUseSsl(value=true)`](#fn-withusessl)
* [`obj bindPasswordSecretRef`](#obj-bindpasswordsecretref)
  * [`fn withKey(value)`](#fn-bindpasswordsecretrefwithkey)
  * [`fn withName(value)`](#fn-bindpasswordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-bindpasswordsecretrefwithnamespace)
* [`obj clientKeySecretRef`](#obj-clientkeysecretref)
  * [`fn withKey(value)`](#fn-clientkeysecretrefwithkey)
  * [`fn withName(value)`](#fn-clientkeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientkeysecretrefwithnamespace)
* [`obj clientKeyValueSecretRef`](#obj-clientkeyvaluesecretref)
  * [`fn withKey(value)`](#fn-clientkeyvaluesecretrefwithkey)
  * [`fn withName(value)`](#fn-clientkeyvaluesecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientkeyvaluesecretrefwithnamespace)

## Fields

### fn withAttributes

```jsonnet
withAttributes(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.
The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.
### fn withAttributesMixin

```jsonnet
withAttributesMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.
The LDAP server attributes. The following attributes can be configured: email, member_of, name, surname, username.
### fn withBindDn

```jsonnet
withBindDn(value)
```

PARAMETERS:

* **value** (`string`)

(String) The search user bind DN.
The search user bind DN.
### fn withBindPasswordSecretRef

```jsonnet
withBindPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The search user bind password.
The search user bind password.
### fn withBindPasswordSecretRefMixin

```jsonnet
withBindPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The search user bind password.
The search user bind password.
### fn withClientCert

```jsonnet
withClientCert(value)
```

PARAMETERS:

* **value** (`string`)

(String) The path to the client certificate.
The path to the client certificate.
### fn withClientCertValue

```jsonnet
withClientCertValue(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Base64 encoded value of the client certificate.
The Base64 encoded value of the client certificate.
### fn withClientKeySecretRef

```jsonnet
withClientKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The path to the client private key.
The path to the client private key.
### fn withClientKeySecretRefMixin

```jsonnet
withClientKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The path to the client private key.
The path to the client private key.
### fn withClientKeyValueSecretRef

```jsonnet
withClientKeyValueSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The Base64 encoded value of the client private key.
The Base64 encoded value of the client private key.
### fn withClientKeyValueSecretRefMixin

```jsonnet
withClientKeyValueSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The Base64 encoded value of the client private key.
The Base64 encoded value of the client private key.
### fn withGroupMappings

```jsonnet
withGroupMappings(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) For mapping an LDAP group to a Grafana organization and role. (see below for nested schema)
For mapping an LDAP group to a Grafana organization and role.
### fn withGroupMappingsMixin

```jsonnet
withGroupMappingsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block List) For mapping an LDAP group to a Grafana organization and role. (see below for nested schema)
For mapping an LDAP group to a Grafana organization and role.
### fn withGroupSearchBaseDns

```jsonnet
withGroupSearchBaseDns(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An array of the base DNs to search through for groups. Typically uses ou=groups.
An array of the base DNs to search through for groups. Typically uses ou=groups.
### fn withGroupSearchBaseDnsMixin

```jsonnet
withGroupSearchBaseDnsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An array of the base DNs to search through for groups. Typically uses ou=groups.
An array of the base DNs to search through for groups. Typically uses ou=groups.
### fn withGroupSearchFilter

```jsonnet
withGroupSearchFilter(value)
```

PARAMETERS:

* **value** (`string`)

(String) Group search filter, to retrieve the groups of which the user is a member (only set if memberOf attribute is not available).
Group search filter, to retrieve the groups of which the user is a member (only set if memberOf attribute is not available).
### fn withGroupSearchFilterUserAttribute

```jsonnet
withGroupSearchFilterUserAttribute(value)
```

PARAMETERS:

* **value** (`string`)

(String) The %s in the search filter will be replaced with the attribute defined in this field.
The %s in the search filter will be replaced with the attribute defined in this field.
### fn withHost

```jsonnet
withHost(value)
```

PARAMETERS:

* **value** (`string`)

(String) The LDAP server host.
The LDAP server host.
### fn withMinTlsVersion

```jsonnet
withMinTlsVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) Minimum TLS version allowed. Accepted values are: TLS1.2, TLS1.3.
Minimum TLS version allowed. Accepted values are: TLS1.2, TLS1.3.
### fn withPort

```jsonnet
withPort(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The LDAP server port.
The LDAP server port.
### fn withRootCaCert

```jsonnet
withRootCaCert(value)
```

PARAMETERS:

* **value** (`string`)

(String) The path to the root CA certificate.
The path to the root CA certificate.
### fn withRootCaCertValue

```jsonnet
withRootCaCertValue(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) The Base64 encoded values of the root CA certificates.
The Base64 encoded values of the root CA certificates.
### fn withRootCaCertValueMixin

```jsonnet
withRootCaCertValueMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) The Base64 encoded values of the root CA certificates.
The Base64 encoded values of the root CA certificates.
### fn withSearchBaseDns

```jsonnet
withSearchBaseDns(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An array of base DNs to search through.
An array of base DNs to search through.
### fn withSearchBaseDnsMixin

```jsonnet
withSearchBaseDnsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) An array of base DNs to search through.
An array of base DNs to search through.
### fn withSearchFilter

```jsonnet
withSearchFilter(value)
```

PARAMETERS:

* **value** (`string`)

(String) The user search filter, for example "(cn=%s)" or "(sAMAccountName=%s)" or "(uid=%s)".
The user search filter, for example "(cn=%s)" or "(sAMAccountName=%s)" or "(uid=%s)".
### fn withSslSkipVerify

```jsonnet
withSslSkipVerify(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If set to true, the SSL cert validation will be skipped.
If set to true, the SSL cert validation will be skipped.
### fn withStartTls

```jsonnet
withStartTls(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If set to true, use LDAP with STARTTLS instead of LDAPS.
If set to true, use LDAP with STARTTLS instead of LDAPS.
### fn withTimeout

```jsonnet
withTimeout(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The timeout in seconds for connecting to the LDAP host.
The timeout in seconds for connecting to the LDAP host.
### fn withTlsCiphers

```jsonnet
withTlsCiphers(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.
Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.
### fn withTlsCiphersMixin

```jsonnet
withTlsCiphersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.
Accepted TLS ciphers. For a complete list of supported ciphers, refer to: https://go.dev/src/crypto/tls/cipher_suites.go.
### fn withUseSsl

```jsonnet
withUseSsl(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Set to true if LDAP server should use an encrypted TLS connection (either with STARTTLS or LDAPS).
Set to true if LDAP server should use an encrypted TLS connection (either with STARTTLS or LDAPS).
### obj bindPasswordSecretRef


#### fn bindPasswordSecretRef.withKey

```jsonnet
bindPasswordSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn bindPasswordSecretRef.withName

```jsonnet
bindPasswordSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn bindPasswordSecretRef.withNamespace

```jsonnet
bindPasswordSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj clientKeySecretRef


#### fn clientKeySecretRef.withKey

```jsonnet
clientKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn clientKeySecretRef.withName

```jsonnet
clientKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn clientKeySecretRef.withNamespace

```jsonnet
clientKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj clientKeyValueSecretRef


#### fn clientKeyValueSecretRef.withKey

```jsonnet
clientKeyValueSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn clientKeyValueSecretRef.withName

```jsonnet
clientKeyValueSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn clientKeyValueSecretRef.withNamespace

```jsonnet
clientKeyValueSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.