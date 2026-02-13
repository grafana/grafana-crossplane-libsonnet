# oncall



## Index

* [`fn withAuthorizationCredentialsSecretRef(value)`](#fn-withauthorizationcredentialssecretref)
* [`fn withAuthorizationCredentialsSecretRefMixin(value)`](#fn-withauthorizationcredentialssecretrefmixin)
* [`fn withAuthorizationScheme(value)`](#fn-withauthorizationscheme)
* [`fn withBasicAuthPasswordSecretRef(value)`](#fn-withbasicauthpasswordsecretref)
* [`fn withBasicAuthPasswordSecretRefMixin(value)`](#fn-withbasicauthpasswordsecretrefmixin)
* [`fn withBasicAuthUser(value)`](#fn-withbasicauthuser)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withHttpMethod(value)`](#fn-withhttpmethod)
* [`fn withMaxAlerts(value)`](#fn-withmaxalerts)
* [`fn withMessage(value)`](#fn-withmessage)
* [`fn withOncallIntegrationRef(value)`](#fn-withoncallintegrationref)
* [`fn withOncallIntegrationRefMixin(value)`](#fn-withoncallintegrationrefmixin)
* [`fn withOncallIntegrationSelector(value)`](#fn-withoncallintegrationselector)
* [`fn withOncallIntegrationSelectorMixin(value)`](#fn-withoncallintegrationselectormixin)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTitle(value)`](#fn-withtitle)
* [`fn withUrl(value)`](#fn-withurl)
* [`obj authorizationCredentialsSecretRef`](#obj-authorizationcredentialssecretref)
  * [`fn withKey(value)`](#fn-authorizationcredentialssecretrefwithkey)
  * [`fn withName(value)`](#fn-authorizationcredentialssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-authorizationcredentialssecretrefwithnamespace)
* [`obj basicAuthPasswordSecretRef`](#obj-basicauthpasswordsecretref)
  * [`fn withKey(value)`](#fn-basicauthpasswordsecretrefwithkey)
  * [`fn withName(value)`](#fn-basicauthpasswordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-basicauthpasswordsecretrefwithnamespace)
* [`obj oncallIntegrationRef`](#obj-oncallintegrationref)
  * [`fn withName(value)`](#fn-oncallintegrationrefwithname)
  * [`fn withPolicy(value)`](#fn-oncallintegrationrefwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-oncallintegrationrefwithpolicymixin)
  * [`obj policy`](#obj-oncallintegrationrefpolicy)
    * [`fn withResolution(value="Required")`](#fn-oncallintegrationrefpolicywithresolution)
    * [`fn withResolve(value)`](#fn-oncallintegrationrefpolicywithresolve)
* [`obj oncallIntegrationSelector`](#obj-oncallintegrationselector)
  * [`fn withMatchControllerRef(value=true)`](#fn-oncallintegrationselectorwithmatchcontrollerref)
  * [`fn withMatchLabels(value)`](#fn-oncallintegrationselectorwithmatchlabels)
  * [`fn withMatchLabelsMixin(value)`](#fn-oncallintegrationselectorwithmatchlabelsmixin)
  * [`fn withPolicy(value)`](#fn-oncallintegrationselectorwithpolicy)
  * [`fn withPolicyMixin(value)`](#fn-oncallintegrationselectorwithpolicymixin)
  * [`obj policy`](#obj-oncallintegrationselectorpolicy)
    * [`fn withResolution(value="Required")`](#fn-oncallintegrationselectorpolicywithresolution)
    * [`fn withResolve(value)`](#fn-oncallintegrationselectorpolicywithresolve)

## Fields

### fn withAuthorizationCredentialsSecretRef

```jsonnet
withAuthorizationCredentialsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
Allows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
### fn withAuthorizationCredentialsSecretRefMixin

```jsonnet
withAuthorizationCredentialsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
Allows a custom authorization scheme - attaches an auth header with this value. Do not use in conjunction with basic auth parameters.
### fn withAuthorizationScheme

```jsonnet
withAuthorizationScheme(value)
```

PARAMETERS:

* **value** (`string`)

attaches an auth header with this name. Do not use in conjunction with basic auth parameters.
Allows a custom authorization scheme - attaches an auth header with this name. Do not use in conjunction with basic auth parameters.
### fn withBasicAuthPasswordSecretRef

```jsonnet
withBasicAuthPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The password component of the basic auth credentials to use.
The username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.
### fn withBasicAuthPasswordSecretRefMixin

```jsonnet
withBasicAuthPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The password component of the basic auth credentials to use.
The username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.
### fn withBasicAuthUser

```jsonnet
withBasicAuthUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) The username component of the basic auth credentials to use.
The username to use in basic auth headers attached to the request. If omitted, basic auth will not be used.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withHttpMethod

```jsonnet
withHttpMethod(value)
```

PARAMETERS:

* **value** (`string`)

(String) The HTTP method to use in the request. Defaults to POST.
The HTTP method to use in the request. Defaults to `POST`.
### fn withMaxAlerts

```jsonnet
withMaxAlerts(value)
```

PARAMETERS:

* **value** (`number`)

(Number) The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.
The maximum number of alerts to send in a single request. This can be helpful in limiting the size of the request body. The default is 0, which indicates no limit.
### fn withMessage

```jsonnet
withMessage(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated content of the message.
Custom message. You can use template variables.
### fn withOncallIntegrationRef

```jsonnet
withOncallIntegrationRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Integration in oncall to populate url.
### fn withOncallIntegrationRefMixin

```jsonnet
withOncallIntegrationRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Integration in oncall to populate url.
### fn withOncallIntegrationSelector

```jsonnet
withOncallIntegrationSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Integration in oncall to populate url.
### fn withOncallIntegrationSelectorMixin

```jsonnet
withOncallIntegrationSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Integration in oncall to populate url.
### fn withSettingsSecretRef

```jsonnet
withSettingsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)


### fn withSettingsSecretRefMixin

```jsonnet
withSettingsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


### fn withTitle

```jsonnet
withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated title of the message.
Templated title of the message.
### fn withUrl

```jsonnet
withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Alertmanager instance.
The URL to send webhook requests to.
### obj authorizationCredentialsSecretRef


#### fn authorizationCredentialsSecretRef.withKey

```jsonnet
authorizationCredentialsSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn authorizationCredentialsSecretRef.withName

```jsonnet
authorizationCredentialsSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn authorizationCredentialsSecretRef.withNamespace

```jsonnet
authorizationCredentialsSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj basicAuthPasswordSecretRef


#### fn basicAuthPasswordSecretRef.withKey

```jsonnet
basicAuthPasswordSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn basicAuthPasswordSecretRef.withName

```jsonnet
basicAuthPasswordSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn basicAuthPasswordSecretRef.withNamespace

```jsonnet
basicAuthPasswordSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj oncallIntegrationRef


#### fn oncallIntegrationRef.withName

```jsonnet
oncallIntegrationRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
#### fn oncallIntegrationRef.withPolicy

```jsonnet
oncallIntegrationRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### fn oncallIntegrationRef.withPolicyMixin

```jsonnet
oncallIntegrationRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
#### obj oncallIntegrationRef.policy


##### fn oncallIntegrationRef.policy.withResolution

```jsonnet
oncallIntegrationRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn oncallIntegrationRef.policy.withResolve

```jsonnet
oncallIntegrationRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
### obj oncallIntegrationSelector


#### fn oncallIntegrationSelector.withMatchControllerRef

```jsonnet
oncallIntegrationSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
#### fn oncallIntegrationSelector.withMatchLabels

```jsonnet
oncallIntegrationSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn oncallIntegrationSelector.withMatchLabelsMixin

```jsonnet
oncallIntegrationSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
#### fn oncallIntegrationSelector.withPolicy

```jsonnet
oncallIntegrationSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### fn oncallIntegrationSelector.withPolicyMixin

```jsonnet
oncallIntegrationSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
#### obj oncallIntegrationSelector.policy


##### fn oncallIntegrationSelector.policy.withResolution

```jsonnet
oncallIntegrationSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
##### fn oncallIntegrationSelector.policy.withResolve

```jsonnet
oncallIntegrationSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.