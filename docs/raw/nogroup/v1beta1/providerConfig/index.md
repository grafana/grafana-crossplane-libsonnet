# providerConfig



## Subpackages

* [status.conditions](status/conditions.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion()`](#fn-withapiversion)
* [`fn withKind()`](#fn-withkind)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
* [`fn withStatus(value)`](#fn-withstatus)
* [`fn withStatusMixin(value)`](#fn-withstatusmixin)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(value)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(value)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(value)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(value)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(value)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(value)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(value)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(value)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(value)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(value)`](#fn-metadatawithgeneration)
  * [`fn withLabels(value)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(value)`](#fn-metadatawithlabelsmixin)
  * [`fn withManagedFields(value)`](#fn-metadatawithmanagedfields)
  * [`fn withManagedFieldsMixin(value)`](#fn-metadatawithmanagedfieldsmixin)
  * [`fn withName(value)`](#fn-metadatawithname)
  * [`fn withNamespace(value)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(value)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(value)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(value)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(value)`](#fn-metadatawithselflink)
  * [`fn withUid(value)`](#fn-metadatawithuid)
* [`obj spec`](#obj-spec)
  * [`fn withCloudApiUrl(value)`](#fn-specwithcloudapiurl)
  * [`fn withCloudProviderUrl(value)`](#fn-specwithcloudproviderurl)
  * [`fn withConnectionsApiUrl(value)`](#fn-specwithconnectionsapiurl)
  * [`fn withCredentials(value)`](#fn-specwithcredentials)
  * [`fn withCredentialsMixin(value)`](#fn-specwithcredentialsmixin)
  * [`fn withFleetManagementUrl(value)`](#fn-specwithfleetmanagementurl)
  * [`fn withOncallUrl(value)`](#fn-specwithoncallurl)
  * [`fn withSmUrl(value)`](#fn-specwithsmurl)
  * [`fn withUrl(value)`](#fn-specwithurl)
  * [`obj credentials`](#obj-speccredentials)
    * [`fn withEnv(value)`](#fn-speccredentialswithenv)
    * [`fn withEnvMixin(value)`](#fn-speccredentialswithenvmixin)
    * [`fn withFs(value)`](#fn-speccredentialswithfs)
    * [`fn withFsMixin(value)`](#fn-speccredentialswithfsmixin)
    * [`fn withSecretRef(value)`](#fn-speccredentialswithsecretref)
    * [`fn withSecretRefMixin(value)`](#fn-speccredentialswithsecretrefmixin)
    * [`fn withSource(value)`](#fn-speccredentialswithsource)
    * [`obj env`](#obj-speccredentialsenv)
      * [`fn withName(value)`](#fn-speccredentialsenvwithname)
    * [`obj fs`](#obj-speccredentialsfs)
      * [`fn withPath(value)`](#fn-speccredentialsfswithpath)
    * [`obj secretRef`](#obj-speccredentialssecretref)
      * [`fn withKey(value)`](#fn-speccredentialssecretrefwithkey)
      * [`fn withName(value)`](#fn-speccredentialssecretrefwithname)
      * [`fn withNamespace(value)`](#fn-speccredentialssecretrefwithnamespace)
* [`obj status`](#obj-status)
  * [`fn withConditions(value)`](#fn-statuswithconditions)
  * [`fn withConditionsMixin(value)`](#fn-statuswithconditionsmixin)
  * [`fn withUsers(value)`](#fn-statuswithusers)

## Fields

### fn new

```jsonnet
new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates a new instance
### fn withApiVersion

```jsonnet
withApiVersion()
```


APIVersion defines the versioned schema of this representation of an object.
Servers should convert recognized schemas to the latest internal value, and
may reject unrecognized values.
More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
### fn withKind

```jsonnet
withKind()
```


Kind is a string value representing the REST resource this object represents.
Servers may infer this from the endpoint the client submits requests to.
Cannot be updated.
In CamelCase.
More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
### fn withMetadata

```jsonnet
withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
### fn withMetadataMixin

```jsonnet
withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
### fn withSpec

```jsonnet
withSpec(value)
```

PARAMETERS:

* **value** (`object`)

A ProviderConfigSpec defines the desired state of a ProviderConfig.
### fn withSpecMixin

```jsonnet
withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)

A ProviderConfigSpec defines the desired state of a ProviderConfig.
### fn withStatus

```jsonnet
withStatus(value)
```

PARAMETERS:

* **value** (`object`)

A ProviderConfigStatus reflects the observed state of a ProviderConfig.
### fn withStatusMixin

```jsonnet
withStatusMixin(value)
```

PARAMETERS:

* **value** (`object`)

A ProviderConfigStatus reflects the observed state of a ProviderConfig.
### obj metadata


#### fn metadata.withAnnotations

```jsonnet
metadata.withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
#### fn metadata.withAnnotationsMixin

```jsonnet
metadata.withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
#### fn metadata.withClusterName

```jsonnet
metadata.withClusterName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
#### fn metadata.withCreationTimestamp

```jsonnet
metadata.withCreationTimestamp(value)
```

PARAMETERS:

* **value** (`string`)

CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.

Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
#### fn metadata.withDeletionGracePeriodSeconds

```jsonnet
metadata.withDeletionGracePeriodSeconds(value)
```

PARAMETERS:

* **value** (`integer`)

Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
#### fn metadata.withDeletionTimestamp

```jsonnet
metadata.withDeletionTimestamp(value)
```

PARAMETERS:

* **value** (`string`)

DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.

Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
#### fn metadata.withFinalizers

```jsonnet
metadata.withFinalizers(value)
```

PARAMETERS:

* **value** (`array`)

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
#### fn metadata.withFinalizersMixin

```jsonnet
metadata.withFinalizersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
#### fn metadata.withGenerateName

```jsonnet
metadata.withGenerateName(value)
```

PARAMETERS:

* **value** (`string`)

GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.

If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).

Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
#### fn metadata.withGeneration

```jsonnet
metadata.withGeneration(value)
```

PARAMETERS:

* **value** (`integer`)

A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
#### fn metadata.withLabels

```jsonnet
metadata.withLabels(value)
```

PARAMETERS:

* **value** (`object`)

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
#### fn metadata.withLabelsMixin

```jsonnet
metadata.withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
#### fn metadata.withManagedFields

```jsonnet
metadata.withManagedFields(value)
```

PARAMETERS:

* **value** (`array`)

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
#### fn metadata.withManagedFieldsMixin

```jsonnet
metadata.withManagedFieldsMixin(value)
```

PARAMETERS:

* **value** (`array`)

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
#### fn metadata.withName

```jsonnet
metadata.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
#### fn metadata.withNamespace

```jsonnet
metadata.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
#### fn metadata.withOwnerReferences

```jsonnet
metadata.withOwnerReferences(value)
```

PARAMETERS:

* **value** (`array`)

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
#### fn metadata.withOwnerReferencesMixin

```jsonnet
metadata.withOwnerReferencesMixin(value)
```

PARAMETERS:

* **value** (`array`)

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
#### fn metadata.withResourceVersion

```jsonnet
metadata.withResourceVersion(value)
```

PARAMETERS:

* **value** (`string`)

An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.

Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
#### fn metadata.withSelfLink

```jsonnet
metadata.withSelfLink(value)
```

PARAMETERS:

* **value** (`string`)

SelfLink is a URL representing this object. Populated by the system. Read-only.

DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
#### fn metadata.withUid

```jsonnet
metadata.withUid(value)
```

PARAMETERS:

* **value** (`string`)

UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.

Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
### obj spec


#### fn spec.withCloudApiUrl

```jsonnet
spec.withCloudApiUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the Grafana Cloud API URL from the credentials reference attribute.
#### fn spec.withCloudProviderUrl

```jsonnet
spec.withCloudProviderUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the Cloud Provider API from the credentials reference attribute.
#### fn spec.withConnectionsApiUrl

```jsonnet
spec.withConnectionsApiUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the Connections API from the credentials reference attribute.
#### fn spec.withCredentials

```jsonnet
spec.withCredentials(value)
```

PARAMETERS:

* **value** (`object`)

Credentials required to authenticate to this provider.
#### fn spec.withCredentialsMixin

```jsonnet
spec.withCredentialsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Credentials required to authenticate to this provider.
#### fn spec.withFleetManagementUrl

```jsonnet
spec.withFleetManagementUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the FleetManagement API from the credentials reference attribute.
#### fn spec.withOncallUrl

```jsonnet
spec.withOncallUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the OnCall API URL from the credentials reference attribute.
#### fn spec.withSmUrl

```jsonnet
spec.withSmUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the Synthetic Monitoring API URL from the credentials reference attribute.
#### fn spec.withUrl

```jsonnet
spec.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

Override the Grafana URL from the credentials reference attribute.
#### obj spec.credentials


##### fn spec.credentials.withEnv

```jsonnet
spec.credentials.withEnv(value)
```

PARAMETERS:

* **value** (`object`)

Env is a reference to an environment variable that contains credentials
that must be used to connect to the provider.
##### fn spec.credentials.withEnvMixin

```jsonnet
spec.credentials.withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`)

Env is a reference to an environment variable that contains credentials
that must be used to connect to the provider.
##### fn spec.credentials.withFs

```jsonnet
spec.credentials.withFs(value)
```

PARAMETERS:

* **value** (`object`)

Fs is a reference to a filesystem location that contains credentials that
must be used to connect to the provider.
##### fn spec.credentials.withFsMixin

```jsonnet
spec.credentials.withFsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Fs is a reference to a filesystem location that contains credentials that
must be used to connect to the provider.
##### fn spec.credentials.withSecretRef

```jsonnet
spec.credentials.withSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

A SecretRef is a reference to a secret key that contains the credentials
that must be used to connect to the provider.
##### fn spec.credentials.withSecretRefMixin

```jsonnet
spec.credentials.withSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

A SecretRef is a reference to a secret key that contains the credentials
that must be used to connect to the provider.
##### fn spec.credentials.withSource

```jsonnet
spec.credentials.withSource(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"None"`, `"Secret"`, `"InjectedIdentity"`, `"Environment"`, `"Filesystem"`

Source of the provider credentials.
##### obj spec.credentials.env


###### fn spec.credentials.env.withName

```jsonnet
spec.credentials.env.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name is the name of an environment variable.
##### obj spec.credentials.fs


###### fn spec.credentials.fs.withPath

```jsonnet
spec.credentials.fs.withPath(value)
```

PARAMETERS:

* **value** (`string`)

Path is a filesystem path.
##### obj spec.credentials.secretRef


###### fn spec.credentials.secretRef.withKey

```jsonnet
spec.credentials.secretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
###### fn spec.credentials.secretRef.withName

```jsonnet
spec.credentials.secretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
###### fn spec.credentials.secretRef.withNamespace

```jsonnet
spec.credentials.secretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
### obj status


#### fn status.withConditions

```jsonnet
status.withConditions(value)
```

PARAMETERS:

* **value** (`array`)

Conditions of the resource.
#### fn status.withConditionsMixin

```jsonnet
status.withConditionsMixin(value)
```

PARAMETERS:

* **value** (`array`)

Conditions of the resource.
#### fn status.withUsers

```jsonnet
status.withUsers(value)
```

PARAMETERS:

* **value** (`integer`)

Users of this provider configuration.