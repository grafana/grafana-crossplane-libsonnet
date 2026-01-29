# jira



## Index

* [`fn withApiTokenSecretRef(value)`](#fn-withapitokensecretref)
* [`fn withApiTokenSecretRefMixin(value)`](#fn-withapitokensecretrefmixin)
* [`fn withApiUrl(value)`](#fn-withapiurl)
* [`fn withDedupKeyField(value)`](#fn-withdedupkeyfield)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withFields(value)`](#fn-withfields)
* [`fn withFieldsMixin(value)`](#fn-withfieldsmixin)
* [`fn withIssueType(value)`](#fn-withissuetype)
* [`fn withLabels(value)`](#fn-withlabels)
* [`fn withLabelsMixin(value)`](#fn-withlabelsmixin)
* [`fn withPasswordSecretRef(value)`](#fn-withpasswordsecretref)
* [`fn withPasswordSecretRefMixin(value)`](#fn-withpasswordsecretrefmixin)
* [`fn withPriority(value)`](#fn-withpriority)
* [`fn withProject(value)`](#fn-withproject)
* [`fn withReopenDuration(value)`](#fn-withreopenduration)
* [`fn withReopenTransition(value)`](#fn-withreopentransition)
* [`fn withResolveTransition(value)`](#fn-withresolvetransition)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withSummary(value)`](#fn-withsummary)
* [`fn withUserSecretRef(value)`](#fn-withusersecretref)
* [`fn withUserSecretRefMixin(value)`](#fn-withusersecretrefmixin)
* [`fn withWontFixResolution(value)`](#fn-withwontfixresolution)
* [`obj apiTokenSecretRef`](#obj-apitokensecretref)
  * [`fn withKey(value)`](#fn-apitokensecretrefwithkey)
  * [`fn withName(value)`](#fn-apitokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-apitokensecretrefwithnamespace)
* [`obj passwordSecretRef`](#obj-passwordsecretref)
  * [`fn withKey(value)`](#fn-passwordsecretrefwithkey)
  * [`fn withName(value)`](#fn-passwordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-passwordsecretrefwithnamespace)
* [`obj userSecretRef`](#obj-usersecretref)
  * [`fn withKey(value)`](#fn-usersecretrefwithkey)
  * [`fn withName(value)`](#fn-usersecretrefwithname)
  * [`fn withNamespace(value)`](#fn-usersecretrefwithnamespace)

## Fields

### fn withApiTokenSecretRef

```jsonnet
withApiTokenSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Personal Access Token that is used as a bearer authorization header.
Personal Access Token that is used as a bearer authorization header.
### fn withApiTokenSecretRefMixin

```jsonnet
withApiTokenSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Personal Access Token that is used as a bearer authorization header.
Personal Access Token that is used as a bearer authorization header.
### fn withApiUrl

```jsonnet
withApiUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The URL of the Jira REST API (v2 or v3).
The URL of the Jira REST API (v2 or v3).
### fn withDedupKeyField

```jsonnet
withDedupKeyField(value)
```

PARAMETERS:

* **value** (`string`)

(String) Custom field ID for storing deduplication keys. Must be numeric.
Custom field ID for storing deduplication keys. Must be numeric.
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated description of the Jira issue. Maximum length is 32767 characters.
The templated description of the Jira issue. Maximum length is 32767 characters.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withFields

```jsonnet
withFields(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Custom Jira issue fields.
Custom Jira issue fields.
### fn withFieldsMixin

```jsonnet
withFieldsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Custom Jira issue fields.
Custom Jira issue fields.
### fn withIssueType

```jsonnet
withIssueType(value)
```

PARAMETERS:

* **value** (`string`)

(String) The type of issue to create (e.g., Bug, Task, Story).
The type of issue to create (e.g., Bug, Task, Story).
### fn withLabels

```jsonnet
withLabels(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Labels to assign to the Jira issue.
Labels to assign to the Jira issue.
### fn withLabelsMixin

```jsonnet
withLabelsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Labels to assign to the Jira issue.
Labels to assign to the Jira issue.
### fn withPasswordSecretRef

```jsonnet
withPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Password to use for Jira authentication.
Password to use for Jira authentication.
### fn withPasswordSecretRefMixin

```jsonnet
withPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Password to use for Jira authentication.
Password to use for Jira authentication.
### fn withPriority

```jsonnet
withPriority(value)
```

PARAMETERS:

* **value** (`string`)

(String) The priority level of the issue (e.g., High, Medium, Low).
The priority level of the issue (e.g., High, Medium, Low).
### fn withProject

```jsonnet
withProject(value)
```

PARAMETERS:

* **value** (`string`)

(String) The project key in Jira.
The project key in Jira.
### fn withReopenDuration

```jsonnet
withReopenDuration(value)
```

PARAMETERS:

* **value** (`string`)

(String) Duration to consider reopening issues (e.g., '10m').
Duration to consider reopening issues (e.g., '10m').
### fn withReopenTransition

```jsonnet
withReopenTransition(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the workflow transition to reopen an issue.
The name of the workflow transition to reopen an issue.
### fn withResolveTransition

```jsonnet
withResolveTransition(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the workflow transition to resolve an issue.
The name of the workflow transition to resolve an issue.
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


### fn withSummary

```jsonnet
withSummary(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated summary of the Jira issue. Maximum length is 255 characters.
The templated summary of the Jira issue. Maximum length is 255 characters.
### fn withUserSecretRef

```jsonnet
withUserSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Username to use for Jira authentication.
Username to use for Jira authentication.
### fn withUserSecretRefMixin

```jsonnet
withUserSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Username to use for Jira authentication.
Username to use for Jira authentication.
### fn withWontFixResolution

```jsonnet
withWontFixResolution(value)
```

PARAMETERS:

* **value** (`string`)

(String) Resolution status to exclude from reopening/updating.
Resolution status to exclude from reopening/updating.
### obj apiTokenSecretRef


#### fn apiTokenSecretRef.withKey

```jsonnet
apiTokenSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn apiTokenSecretRef.withName

```jsonnet
apiTokenSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn apiTokenSecretRef.withNamespace

```jsonnet
apiTokenSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj passwordSecretRef


#### fn passwordSecretRef.withKey

```jsonnet
passwordSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn passwordSecretRef.withName

```jsonnet
passwordSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn passwordSecretRef.withNamespace

```jsonnet
passwordSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj userSecretRef


#### fn userSecretRef.withKey

```jsonnet
userSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn userSecretRef.withName

```jsonnet
userSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn userSecretRef.withNamespace

```jsonnet
userSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.