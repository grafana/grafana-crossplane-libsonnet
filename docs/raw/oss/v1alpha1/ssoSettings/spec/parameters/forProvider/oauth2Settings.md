# oauth2Settings



## Index

* [`fn withAllowAssignGrafanaAdmin(value=true)`](#fn-withallowassigngrafanaadmin)
* [`fn withAllowSignUp(value=true)`](#fn-withallowsignup)
* [`fn withAllowedDomains(value)`](#fn-withalloweddomains)
* [`fn withAllowedGroups(value)`](#fn-withallowedgroups)
* [`fn withAllowedOrganizations(value)`](#fn-withallowedorganizations)
* [`fn withApiUrl(value)`](#fn-withapiurl)
* [`fn withAuthStyle(value)`](#fn-withauthstyle)
* [`fn withAuthUrl(value)`](#fn-withauthurl)
* [`fn withAutoLogin(value=true)`](#fn-withautologin)
* [`fn withClientId(value)`](#fn-withclientid)
* [`fn withClientSecretSecretRef(value)`](#fn-withclientsecretsecretref)
* [`fn withClientSecretSecretRefMixin(value)`](#fn-withclientsecretsecretrefmixin)
* [`fn withCustom(value)`](#fn-withcustom)
* [`fn withCustomMixin(value)`](#fn-withcustommixin)
* [`fn withDefineAllowedGroups(value=true)`](#fn-withdefineallowedgroups)
* [`fn withDefineAllowedTeamsIds(value=true)`](#fn-withdefineallowedteamsids)
* [`fn withEmailAttributeName(value)`](#fn-withemailattributename)
* [`fn withEmailAttributePath(value)`](#fn-withemailattributepath)
* [`fn withEmptyScopes(value=true)`](#fn-withemptyscopes)
* [`fn withEnabled(value=true)`](#fn-withenabled)
* [`fn withGroupsAttributePath(value)`](#fn-withgroupsattributepath)
* [`fn withIdTokenAttributeName(value)`](#fn-withidtokenattributename)
* [`fn withLoginAttributePath(value)`](#fn-withloginattributepath)
* [`fn withLoginPrompt(value)`](#fn-withloginprompt)
* [`fn withName(value)`](#fn-withname)
* [`fn withNameAttributePath(value)`](#fn-withnameattributepath)
* [`fn withOrgAttributePath(value)`](#fn-withorgattributepath)
* [`fn withOrgMapping(value)`](#fn-withorgmapping)
* [`fn withRoleAttributePath(value)`](#fn-withroleattributepath)
* [`fn withRoleAttributeStrict(value=true)`](#fn-withroleattributestrict)
* [`fn withScopes(value)`](#fn-withscopes)
* [`fn withSignoutRedirectUrl(value)`](#fn-withsignoutredirecturl)
* [`fn withSkipOrgRoleSync(value=true)`](#fn-withskiporgrolesync)
* [`fn withTeamIds(value)`](#fn-withteamids)
* [`fn withTeamIdsAttributePath(value)`](#fn-withteamidsattributepath)
* [`fn withTeamsUrl(value)`](#fn-withteamsurl)
* [`fn withTlsClientCa(value)`](#fn-withtlsclientca)
* [`fn withTlsClientCert(value)`](#fn-withtlsclientcert)
* [`fn withTlsClientKey(value)`](#fn-withtlsclientkey)
* [`fn withTlsSkipVerifyInsecure(value=true)`](#fn-withtlsskipverifyinsecure)
* [`fn withTokenUrl(value)`](#fn-withtokenurl)
* [`fn withUsePkce(value=true)`](#fn-withusepkce)
* [`fn withUseRefreshToken(value=true)`](#fn-withuserefreshtoken)
* [`obj clientSecretSecretRef`](#obj-clientsecretsecretref)
  * [`fn withKey(value)`](#fn-clientsecretsecretrefwithkey)
  * [`fn withName(value)`](#fn-clientsecretsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-clientsecretsecretrefwithnamespace)

## Fields

### fn withAllowAssignGrafanaAdmin

```jsonnet
withAllowAssignGrafanaAdmin(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If enabled, it will automatically sync the Grafana server administrator role.
If enabled, it will automatically sync the Grafana server administrator role.
### fn withAllowSignUp

```jsonnet
withAllowSignUp(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to allow new Grafana user creation through LDAP login. If set to false, then only existing Grafana users can log in with LDAP.
If not enabled, only existing Grafana users can log in using OAuth.
### fn withAllowedDomains

```jsonnet
withAllowedDomains(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated domains. The user should belong to at least one domain to log in.
List of comma- or space-separated domains. The user should belong to at least one domain to log in.
### fn withAllowedGroups

```jsonnet
withAllowedGroups(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated groups. The user should be a member of at least one group to log in. For Generic OAuth, if you configure allowed_groups, you must also configure groups_attribute_path.
List of comma- or space-separated groups. The user should be a member of at least one group to log in. For Generic OAuth, if you configure allowed_groups, you must also configure groups_attribute_path.
### fn withAllowedOrganizations

```jsonnet
withAllowedOrganizations(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated organizations. The user should be a member of at least one organization to log in.
List of comma- or space-separated organizations. The user should be a member of at least one organization to log in.
### fn withApiUrl

```jsonnet
withApiUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The user information endpoint of your OAuth2 provider. Required for okta and generic_oauth providers.
The user information endpoint of your OAuth2 provider. Required for okta and generic_oauth providers.
### fn withAuthStyle

```jsonnet
withAuthStyle(value)
```

PARAMETERS:

* **value** (`string`)

(String) It determines how client_id and client_secret are sent to Oauth2 provider. Possible values are AutoDetect, InParams, InHeader. Default is AutoDetect.
It determines how client_id and client_secret are sent to Oauth2 provider. Possible values are AutoDetect, InParams, InHeader. Default is AutoDetect.
### fn withAuthUrl

```jsonnet
withAuthUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The authorization endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.
The authorization endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.
### fn withAutoLogin

```jsonnet
withAutoLogin(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Log in automatically, skipping the login screen.
Log in automatically, skipping the login screen.
### fn withClientId

```jsonnet
withClientId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The client Id of your OAuth2 app.
The client Id of your OAuth2 app.
### fn withClientSecretSecretRef

```jsonnet
withClientSecretSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The client secret of your OAuth2 app.
The client secret of your OAuth2 app.
### fn withClientSecretSecretRefMixin

```jsonnet
withClientSecretSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The client secret of your OAuth2 app.
The client secret of your OAuth2 app.
### fn withCustom

```jsonnet
withCustom(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Custom fields to configure for OAuth2 such as the force_use_graph_api field.
Custom fields to configure for OAuth2 such as the [force_use_graph_api](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/azuread/#force-fetching-groups-from-microsoft-graph-api) field.
### fn withCustomMixin

```jsonnet
withCustomMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Custom fields to configure for OAuth2 such as the force_use_graph_api field.
Custom fields to configure for OAuth2 such as the [force_use_graph_api](https://grafana.com/docs/grafana/latest/setup-grafana/configure-security/configure-authentication/azuread/#force-fetching-groups-from-microsoft-graph-api) field.
### fn withDefineAllowedGroups

```jsonnet
withDefineAllowedGroups(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Define allowed groups.
Define allowed groups.
### fn withDefineAllowedTeamsIds

```jsonnet
withDefineAllowedTeamsIds(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Define allowed teams ids.
Define allowed teams ids.
### fn withEmailAttributeName

```jsonnet
withEmailAttributeName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Name of the key to use for user email lookup within the attributes map of OAuth2 ID token. Only applicable to Generic OAuth.
Name of the key to use for user email lookup within the attributes map of OAuth2 ID token. Only applicable to Generic OAuth.
### fn withEmailAttributePath

```jsonnet
withEmailAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) JMESPath expression to use for user email lookup from the user information. Only applicable to Generic OAuth.
JMESPath expression to use for user email lookup from the user information. Only applicable to Generic OAuth.
### fn withEmptyScopes

```jsonnet
withEmptyScopes(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If enabled, no scopes will be sent to the OAuth2 provider.
If enabled, no scopes will be sent to the OAuth2 provider.
### fn withEnabled

```jsonnet
withEnabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Define whether this configuration is enabled for LDAP. Defaults to true.
Define whether this configuration is enabled for the specified provider. Defaults to `true`.
### fn withGroupsAttributePath

```jsonnet
withGroupsAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) JMESPath expression to use for user group lookup. If you configure allowed_groups, you must also configure groups_attribute_path.
JMESPath expression to use for user group lookup. If you configure allowed_groups, you must also configure groups_attribute_path.
### fn withIdTokenAttributeName

```jsonnet
withIdTokenAttributeName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the key used to extract the ID token from the returned OAuth2 token. Only applicable to Generic OAuth.
The name of the key used to extract the ID token from the returned OAuth2 token. Only applicable to Generic OAuth.
### fn withLoginAttributePath

```jsonnet
withLoginAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) JMESPath expression to use for user login lookup from the user ID token. Only applicable to Generic OAuth.
JMESPath expression to use for user login lookup from the user ID token. Only applicable to Generic OAuth.
### fn withLoginPrompt

```jsonnet
withLoginPrompt(value)
```

PARAMETERS:

* **value** (`string`)

(String) Indicates the type of user interaction when the user logs in with the IdP. Available values are login, consent and select_account.
Indicates the type of user interaction when the user logs in with the IdP. Available values are `login`, `consent` and `select_account`.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Helpful if you use more than one identity providers or SSO protocols.
Helpful if you use more than one identity providers or SSO protocols.
### fn withNameAttributePath

```jsonnet
withNameAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) JMESPath expression to use for user name lookup from the user ID token. This name will be used as the user’s display name. Only applicable to Generic OAuth.
JMESPath expression to use for user name lookup from the user ID token. This name will be used as the user’s display name. Only applicable to Generic OAuth.
### fn withOrgAttributePath

```jsonnet
withOrgAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) JMESPath expression to use for the organization mapping lookup from the user ID token. The extracted list will be used for the organization mapping (to match "Organization" in the "org_mapping"). Only applicable to Generic OAuth and Okta.
JMESPath expression to use for the organization mapping lookup from the user ID token. The extracted list will be used for the organization mapping (to match "Organization" in the "org_mapping"). Only applicable to Generic OAuth and Okta.
### fn withOrgMapping

```jsonnet
withOrgMapping(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.
List of comma- or space-separated Organization:OrgIdOrOrgName:Role mappings. Organization can be * meaning “All users”. Role is optional and can have the following values: None, Viewer, Editor or Admin.
### fn withRoleAttributePath

```jsonnet
withRoleAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) JMESPath expression to use for Grafana role lookup.
JMESPath expression to use for Grafana role lookup.
### fn withRoleAttributeStrict

```jsonnet
withRoleAttributeStrict(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If enabled, denies user login if the Grafana role cannot be extracted using Role attribute path.
If enabled, denies user login if the Grafana role cannot be extracted using Role attribute path.
### fn withScopes

```jsonnet
withScopes(value)
```

PARAMETERS:

* **value** (`string`)

or space-separated OAuth2 scopes.
List of comma- or space-separated OAuth2 scopes.
### fn withSignoutRedirectUrl

```jsonnet
withSignoutRedirectUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL to redirect the user to after signing out from Grafana.
The URL to redirect the user to after signing out from Grafana.
### fn withSkipOrgRoleSync

```jsonnet
withSkipOrgRoleSync(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Prevent synchronizing users’ organization roles from LDAP.
Prevent synchronizing users’ organization roles from your IdP.
### fn withTeamIds

```jsonnet
withTeamIds(value)
```

PARAMETERS:

* **value** (`string`)

(String) String list of Team Ids. If set, the user must be a member of one of the given teams to log in. If you configure team_ids, you must also configure teams_url and team_ids_attribute_path.
String list of Team Ids. If set, the user must be a member of one of the given teams to log in. If you configure team_ids, you must also configure teams_url and team_ids_attribute_path.
### fn withTeamIdsAttributePath

```jsonnet
withTeamIdsAttributePath(value)
```

PARAMETERS:

* **value** (`string`)

(String) The JMESPath expression to use for Grafana Team Id lookup within the results returned by the teams_url endpoint. Only applicable to Generic OAuth.
The JMESPath expression to use for Grafana Team Id lookup within the results returned by the teams_url endpoint. Only applicable to Generic OAuth.
### fn withTeamsUrl

```jsonnet
withTeamsUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL used to query for Team Ids. If not set, the default value is /teams. If you configure teams_url, you must also configure team_ids_attribute_path. Only applicable to Generic OAuth.
The URL used to query for Team Ids. If not set, the default value is /teams. If you configure teams_url, you must also configure team_ids_attribute_path. Only applicable to Generic OAuth.
### fn withTlsClientCa

```jsonnet
withTlsClientCa(value)
```

PARAMETERS:

* **value** (`string`)

(String) The path to the trusted certificate authority list. Is not applicable on Grafana Cloud.
The path to the trusted certificate authority list. Is not applicable on Grafana Cloud.
### fn withTlsClientCert

```jsonnet
withTlsClientCert(value)
```

PARAMETERS:

* **value** (`string`)

(String) The path to the certificate. Is not applicable on Grafana Cloud.
The path to the certificate. Is not applicable on Grafana Cloud.
### fn withTlsClientKey

```jsonnet
withTlsClientKey(value)
```

PARAMETERS:

* **value** (`string`)

(String) The path to the key. Is not applicable on Grafana Cloud.
The path to the key. Is not applicable on Grafana Cloud.
### fn withTlsSkipVerifyInsecure

```jsonnet
withTlsSkipVerifyInsecure(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

in-the-middle attacks.
If enabled, the client accepts any certificate presented by the server and any host name in that certificate. You should only use this for testing, because this mode leaves SSL/TLS susceptible to man-in-the-middle attacks.
### fn withTokenUrl

```jsonnet
withTokenUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.
The token endpoint of your OAuth2 provider. Required for azuread, okta and generic_oauth providers.
### fn withUsePkce

```jsonnet
withUsePkce(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If enabled, Grafana will use Proof Key for Code Exchange (PKCE) with the OAuth2 Authorization Code Grant.
If enabled, Grafana will use Proof Key for Code Exchange (PKCE) with the OAuth2 Authorization Code Grant.
### fn withUseRefreshToken

```jsonnet
withUseRefreshToken(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) If enabled, Grafana will fetch a new access token using the refresh token provided by the OAuth2 provider.
If enabled, Grafana will fetch a new access token using the refresh token provided by the OAuth2 provider.
### obj clientSecretSecretRef


#### fn clientSecretSecretRef.withKey

```jsonnet
clientSecretSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn clientSecretSecretRef.withName

```jsonnet
clientSecretSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn clientSecretSecretRef.withNamespace

```jsonnet
clientSecretSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.