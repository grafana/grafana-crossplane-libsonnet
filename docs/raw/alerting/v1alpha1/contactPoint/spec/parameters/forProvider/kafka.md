# kafka



## Index

* [`fn withApiVersion(value)`](#fn-withapiversion)
* [`fn withClusterId(value)`](#fn-withclusterid)
* [`fn withDescription(value)`](#fn-withdescription)
* [`fn withDetails(value)`](#fn-withdetails)
* [`fn withDisableResolveMessage(value=true)`](#fn-withdisableresolvemessage)
* [`fn withPasswordSecretRef(value)`](#fn-withpasswordsecretref)
* [`fn withPasswordSecretRefMixin(value)`](#fn-withpasswordsecretrefmixin)
* [`fn withRestProxyUrlSecretRef(value)`](#fn-withrestproxyurlsecretref)
* [`fn withRestProxyUrlSecretRefMixin(value)`](#fn-withrestproxyurlsecretrefmixin)
* [`fn withSettingsSecretRef(value)`](#fn-withsettingssecretref)
* [`fn withSettingsSecretRefMixin(value)`](#fn-withsettingssecretrefmixin)
* [`fn withTopic(value)`](#fn-withtopic)
* [`fn withUsername(value)`](#fn-withusername)
* [`obj passwordSecretRef`](#obj-passwordsecretref)
  * [`fn withKey(value)`](#fn-passwordsecretrefwithkey)
  * [`fn withName(value)`](#fn-passwordsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-passwordsecretrefwithnamespace)
* [`obj restProxyUrlSecretRef`](#obj-restproxyurlsecretref)
  * [`fn withKey(value)`](#fn-restproxyurlsecretrefwithkey)
  * [`fn withName(value)`](#fn-restproxyurlsecretrefwithname)
  * [`fn withNamespace(value)`](#fn-restproxyurlsecretrefwithnamespace)
* [`obj settingsSecretRef`](#obj-settingssecretref)
  * [`fn withName(value)`](#fn-settingssecretrefwithname)
  * [`fn withNamespace(value)`](#fn-settingssecretrefwithnamespace)

## Fields

### fn withApiVersion

```jsonnet
withApiVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) The API version to use when contacting the Kafka REST Server. Supported: v2 (default) and v3. Defaults to v2.
The API version to use when contacting the Kafka REST Server. Supported: v2 (default) and v3. Defaults to `v2`.
### fn withClusterId

```jsonnet
withClusterId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Id of cluster to use when contacting the Kafka REST Server. Required api_version to be 'v3'
The Id of cluster to use when contacting the Kafka REST Server. Required api_version to be 'v3'
### fn withDescription

```jsonnet
withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated description of the Jira issue. Maximum length is 32767 characters.
The templated description of the Kafka message.
### fn withDetails

```jsonnet
withDetails(value)
```

PARAMETERS:

* **value** (`string`)

(String) The templated details to include with the message.
The templated details to include with the message.
### fn withDisableResolveMessage

```jsonnet
withDisableResolveMessage(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to disable sending resolve messages. Defaults to false.
Whether to disable sending resolve messages. Defaults to `false`.
### fn withPasswordSecretRef

```jsonnet
withPasswordSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Password to use for Jira authentication.
The password to use when making a call to the Kafka REST Proxy
### fn withPasswordSecretRefMixin

```jsonnet
withPasswordSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Password to use for Jira authentication.
The password to use when making a call to the Kafka REST Proxy
### fn withRestProxyUrlSecretRef

```jsonnet
withRestProxyUrlSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The URL of the Kafka REST proxy to send requests to.
The URL of the Kafka REST proxy to send requests to.
### fn withRestProxyUrlSecretRefMixin

```jsonnet
withRestProxyUrlSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) The URL of the Kafka REST proxy to send requests to.
The URL of the Kafka REST proxy to send requests to.
### fn withSettingsSecretRef

```jsonnet
withSettingsSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].
Additional custom properties to attach to the notifier. Defaults to `map[]`.
### fn withSettingsSecretRefMixin

```jsonnet
withSettingsSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String, Sensitive) Additional custom properties to attach to the notifier. Defaults to map[].
Additional custom properties to attach to the notifier. Defaults to `map[]`.
### fn withTopic

```jsonnet
withTopic(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the Kafka topic to publish to.
The name of the Kafka topic to publish to.
### fn withUsername

```jsonnet
withUsername(value)
```

PARAMETERS:

* **value** (`string`)

(String) The user name to use when making a call to the Kafka REST Proxy
The user name to use when making a call to the Kafka REST Proxy
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
### obj restProxyUrlSecretRef


#### fn restProxyUrlSecretRef.withKey

```jsonnet
restProxyUrlSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn restProxyUrlSecretRef.withName

```jsonnet
restProxyUrlSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn restProxyUrlSecretRef.withNamespace

```jsonnet
restProxyUrlSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj settingsSecretRef


#### fn settingsSecretRef.withName

```jsonnet
settingsSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn settingsSecretRef.withNamespace

```jsonnet
settingsSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.