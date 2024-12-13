# samlSettings



## Index

* [`fn withAllowIdpInitiated(value=true)`](#fn-withallowidpinitiated)
* [`fn withAllowSignUp(value=true)`](#fn-withallowsignup)
* [`fn withAllowedOrganizations(value)`](#fn-withallowedorganizations)
* [`fn withAssertionAttributeEmail(value)`](#fn-withassertionattributeemail)
* [`fn withAssertionAttributeGroups(value)`](#fn-withassertionattributegroups)
* [`fn withAssertionAttributeLogin(value)`](#fn-withassertionattributelogin)
* [`fn withAssertionAttributeName(value)`](#fn-withassertionattributename)
* [`fn withAssertionAttributeOrg(value)`](#fn-withassertionattributeorg)
* [`fn withAssertionAttributeRole(value)`](#fn-withassertionattributerole)
* [`fn withAutoLogin(value=true)`](#fn-withautologin)
* [`fn withCertificatePath(value)`](#fn-withcertificatepath)
* [`fn withCertificateSecretRef(value)`](#fn-withcertificatesecretref)
* [`fn withCertificateSecretRefMixin(value)`](#fn-withcertificatesecretrefmixin)
* [`fn withClientId(value)`](#fn-withclientid)
* [`fn withClientSecret(value)`](#fn-withclientsecret)
* [`fn withEnabled(value=true)`](#fn-withenabled)
* [`fn withEntityId(value)`](#fn-withentityid)
* [`fn withForceUseGraphApi(value=true)`](#fn-withforceusegraphapi)
* [`fn withIdpMetadata(value)`](#fn-withidpmetadata)
* [`fn withIdpMetadataPath(value)`](#fn-withidpmetadatapath)
* [`fn withIdpMetadataUrl(value)`](#fn-withidpmetadataurl)
* [`fn withMaxIssueDelay(value)`](#fn-withmaxissuedelay)
* [`fn withMetadataValidDuration(value)`](#fn-withmetadatavalidduration)
* [`fn withName(value)`](#fn-withname)
* [`fn withNameIdFormat(value)`](#fn-withnameidformat)
* [`fn withOrgMapping(value)`](#fn-withorgmapping)
* [`fn withPrivateKeyPath(value)`](#fn-withprivatekeypath)
* [`fn withPrivateKeySecretRef(value)`](#fn-withprivatekeysecretref)
* [`fn withPrivateKeySecretRefMixin(value)`](#fn-withprivatekeysecretrefmixin)
* [`fn withRelayState(value)`](#fn-withrelaystate)
* [`fn withRoleValuesAdmin(value)`](#fn-withrolevaluesadmin)
* [`fn withRoleValuesEditor(value)`](#fn-withrolevalueseditor)
* [`fn withRoleValuesGrafanaAdmin(value)`](#fn-withrolevaluesgrafanaadmin)
* [`fn withRoleValuesNone(value)`](#fn-withrolevaluesnone)
* [`fn withRoleValuesViewer(value)`](#fn-withrolevaluesviewer)
* [`fn withSignatureAlgorithm(value)`](#fn-withsignaturealgorithm)
* [`fn withSingleLogout(value=true)`](#fn-withsinglelogout)
* [`fn withSkipOrgRoleSync(value=true)`](#fn-withskiporgrolesync)
* [`fn withTokenUrl(value)`](#fn-withtokenurl)
* [`obj certificateSecretRef`](#obj-certificatesecretref)
  * [`fn withKey(value)`](#fn-certificatesecretrefwithkey)
  * [`fn withName(value)`](#fn-certificatesecretrefwithname)
  * [`fn withNamespace(value)`](#fn-certificatesecretrefwithnamespace)
* [`obj privateKeySecretRef`](#obj-privatekeysecretref)
  * [`fn withKey(value)`](#fn-privatekeysecretrefwithkey)
  * [`fn withName(value)`](#fn-privatekeysecretrefwithname)
  * [`fn withNamespace(value)`](#fn-privatekeysecretrefwithnamespace)

## Fields

### fn withAllowIdpInitiated

```jsonnet
withAllowIdpInitiated(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

initiated login is allowed.
Whether SAML IdP-initiated login is allowed.
### fn withAllowSignUp

```jsonnet
withAllowSignUp(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.
Whether to allow new Grafana user creation through SAML login. If set to false, then only existing Grafana users can log in with SAML.
### fn withAllowedOrganizations

```jsonnet
withAllowedOrganizations(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated organizations. The user should be a member of at least one organization to log in.
List of comma- or space-separated organizations. User should be a member of at least one organization to log in.
### fn withAssertionAttributeEmail

```jsonnet
withAssertionAttributeEmail(value)
```

PARAMETERS:

* **value** (`string`)

(String) Friendly name or name of the attribute within the SAML assertion to use as the user email.
Friendly name or name of the attribute within the SAML assertion to use as the user email.
### fn withAssertionAttributeGroups

```jsonnet
withAssertionAttributeGroups(value)
```

PARAMETERS:

* **value** (`string`)

(String) Friendly name or name of the attribute within the SAML assertion to use as the user groups.
Friendly name or name of the attribute within the SAML assertion to use as the user groups.
### fn withAssertionAttributeLogin

```jsonnet
withAssertionAttributeLogin(value)
```

PARAMETERS:

* **value** (`string`)

(String) Friendly name or name of the attribute within the SAML assertion to use as the user login handle.
Friendly name or name of the attribute within the SAML assertion to use as the user login handle.
### fn withAssertionAttributeName

```jsonnet
withAssertionAttributeName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Friendly name or name of the attribute within the SAML assertion to use as the user name. Alternatively, this can be a template with variables that match the names of attributes within the SAML assertion.
Friendly name or name of the attribute within the SAML assertion to use as the user name. Alternatively, this can be a template with variables that match the names of attributes within the SAML assertion.
### fn withAssertionAttributeOrg

```jsonnet
withAssertionAttributeOrg(value)
```

PARAMETERS:

* **value** (`string`)

(String) Friendly name or name of the attribute within the SAML assertion to use as the user organization.
Friendly name or name of the attribute within the SAML assertion to use as the user organization.
### fn withAssertionAttributeRole

```jsonnet
withAssertionAttributeRole(value)
```

PARAMETERS:

* **value** (`string`)

(String) Friendly name or name of the attribute within the SAML assertion to use as the user roles.
Friendly name or name of the attribute within the SAML assertion to use as the user roles.
### fn withAutoLogin

```jsonnet
withAutoLogin(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Log in automatically, skipping the login screen.
Whether SAML auto login is enabled.
### fn withCertificatePath

```jsonnet
withCertificatePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Path for the SP X.509 certificate.
Path for the SP X.509 certificate.
### fn withCertificateSecretRef

```jsonnet
withCertificateSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

encoded string for the SP X.509 certificate.
Base64-encoded string for the SP X.509 certificate.
### fn withCertificateSecretRefMixin

```jsonnet
withCertificateSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

encoded string for the SP X.509 certificate.
Base64-encoded string for the SP X.509 certificate.
### fn withClientId

```jsonnet
withClientId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The client Id of your OAuth2 app.
The client Id of your OAuth2 app.
### fn withClientSecret

```jsonnet
withClientSecret(value)
```

PARAMETERS:

* **value** (`string`)

(String, Sensitive) The client secret of your OAuth2 app.
The client secret of your OAuth2 app.
### fn withEnabled

```jsonnet
withEnabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.
Define whether this configuration is enabled for SAML. Defaults to `true`.
### fn withEntityId

```jsonnet
withEntityId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The entity ID is a globally unique identifier for the service provider. It is used to identify the service provider to the identity provider. Defaults to the URL of the Grafana instance if not set.
The entity ID is a globally unique identifier for the service provider. It is used to identify the service provider to the identity provider. Defaults to the URL of the Grafana instance if not set.
### fn withForceUseGraphApi

```jsonnet
withForceUseGraphApi(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If enabled, Grafana will fetch groups from Microsoft Graph API instead of using the groups claim from the ID token.
If enabled, Grafana will fetch groups from Microsoft Graph API instead of using the groups claim from the ID token.
### fn withIdpMetadata

```jsonnet
withIdpMetadata(value)
```

PARAMETERS:

* **value** (`string`)

encoded string for the IdP SAML metadata XML.
Base64-encoded string for the IdP SAML metadata XML.
### fn withIdpMetadataPath

```jsonnet
withIdpMetadataPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Path for the IdP SAML metadata XML.
Path for the IdP SAML metadata XML.
### fn withIdpMetadataUrl

```jsonnet
withIdpMetadataUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) URL for the IdP SAML metadata XML.
URL for the IdP SAML metadata XML.
### fn withMaxIssueDelay

```jsonnet
withMaxIssueDelay(value)
```

PARAMETERS:

* **value** (`string`)

(String) Duration, since the IdP issued a response and the SP is allowed to process it. For example: 90s, 1h.
Duration, since the IdP issued a response and the SP is allowed to process it. For example: 90s, 1h.
### fn withMetadataValidDuration

```jsonnet
withMetadataValidDuration(value)
```

PARAMETERS:

* **value** (`string`)

(String) Duration, for how long the SP metadata is valid. For example: 48h, 5d.
Duration, for how long the SP metadata is valid. For example: 48h, 5d.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Helpful if you use more than one identity providers or SSO protocols.
Name used to refer to the SAML authentication.
### fn withNameIdFormat

```jsonnet
withNameIdFormat(value)
```

PARAMETERS:

* **value** (`string`)

format:transient
The Name ID Format to request within the SAML assertion. Defaults to urn:oasis:names:tc:SAML:2.0:nameid-format:transient
### fn withOrgMapping

```jsonnet
withOrgMapping(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.
List of comma- or space-separated Organization:OrgId:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: Viewer, Editor or Admin.
### fn withPrivateKeyPath

```jsonnet
withPrivateKeyPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Path for the SP private key.
Path for the SP private key.
### fn withPrivateKeySecretRef

```jsonnet
withPrivateKeySecretRef(value)
```

PARAMETERS:

* **value** (`object`)

encoded string for the SP private key.
Base64-encoded string for the SP private key.
### fn withPrivateKeySecretRefMixin

```jsonnet
withPrivateKeySecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

encoded string for the SP private key.
Base64-encoded string for the SP private key.
### fn withRelayState

```jsonnet
withRelayState(value)
```

PARAMETERS:

* **value** (`string`)

initiated login. Should match relay state configured in IdP.
Relay state for IdP-initiated login. Should match relay state configured in IdP.
### fn withRoleValuesAdmin

```jsonnet
withRoleValuesAdmin(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated roles which will be mapped into the Admin role.
List of comma- or space-separated roles which will be mapped into the Admin role.
### fn withRoleValuesEditor

```jsonnet
withRoleValuesEditor(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated roles which will be mapped into the Editor role.
List of comma- or space-separated roles which will be mapped into the Editor role.
### fn withRoleValuesGrafanaAdmin

```jsonnet
withRoleValuesGrafanaAdmin(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated roles which will be mapped into the Grafana Admin (Super Admin) role.
List of comma- or space-separated roles which will be mapped into the Grafana Admin (Super Admin) role.
### fn withRoleValuesNone

```jsonnet
withRoleValuesNone(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated roles which will be mapped into the None role.
List of comma- or space-separated roles which will be mapped into the None role.
### fn withRoleValuesViewer

```jsonnet
withRoleValuesViewer(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated roles which will be mapped into the Viewer role.
List of comma- or space-separated roles which will be mapped into the Viewer role.
### fn withSignatureAlgorithm

```jsonnet
withSignatureAlgorithm(value)
```

PARAMETERS:

* **value** (`string`)

sha1, rsa-sha256, rsa-sha512.
Signature algorithm used for signing requests to the IdP. Supported values are rsa-sha1, rsa-sha256, rsa-sha512.
### fn withSingleLogout

```jsonnet
withSingleLogout(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether SAML Single Logout is enabled.
Whether SAML Single Logout is enabled.
### fn withSkipOrgRoleSync

```jsonnet
withSkipOrgRoleSync(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Prevent synchronizing users’ organization roles from LDAP.
Prevent synchronizing users’ organization roles from your IdP.
### fn withTokenUrl

```jsonnet
withTokenUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.
The token endpoint of your OAuth2 provider. Required for Azure AD providers.
### obj certificateSecretRef


#### fn certificateSecretRef.withKey

```jsonnet
certificateSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn certificateSecretRef.withName

```jsonnet
certificateSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn certificateSecretRef.withNamespace

```jsonnet
certificateSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj privateKeySecretRef


#### fn privateKeySecretRef.withKey

```jsonnet
privateKeySecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn privateKeySecretRef.withName

```jsonnet
privateKeySecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn privateKeySecretRef.withNamespace

```jsonnet
privateKeySecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.