# repositoryV0Alpha1



## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion()`](#fn-withapiversion)
* [`fn withKind()`](#fn-withkind)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
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
  * [`fn withCompositionRef(value)`](#fn-specwithcompositionref)
  * [`fn withCompositionRefMixin(value)`](#fn-specwithcompositionrefmixin)
  * [`fn withCompositionRevisionRef(value)`](#fn-specwithcompositionrevisionref)
  * [`fn withCompositionRevisionRefMixin(value)`](#fn-specwithcompositionrevisionrefmixin)
  * [`fn withCompositionSelector(value)`](#fn-specwithcompositionselector)
  * [`fn withCompositionSelectorMixin(value)`](#fn-specwithcompositionselectormixin)
  * [`fn withCompositionUpdatePolicy(value)`](#fn-specwithcompositionupdatepolicy)
  * [`fn withParameters(value)`](#fn-specwithparameters)
  * [`fn withParametersMixin(value)`](#fn-specwithparametersmixin)
  * [`fn withWriteConnectionSecretToRef(value)`](#fn-specwithwriteconnectionsecrettoref)
  * [`fn withWriteConnectionSecretToRefMixin(value)`](#fn-specwithwriteconnectionsecrettorefmixin)
  * [`obj compositionRef`](#obj-speccompositionref)
    * [`fn withName(value)`](#fn-speccompositionrefwithname)
  * [`obj compositionRevisionRef`](#obj-speccompositionrevisionref)
    * [`fn withName(value)`](#fn-speccompositionrevisionrefwithname)
  * [`obj compositionSelector`](#obj-speccompositionselector)
    * [`fn withMatchLabels(value)`](#fn-speccompositionselectorwithmatchlabels)
    * [`fn withMatchLabelsMixin(value)`](#fn-speccompositionselectorwithmatchlabelsmixin)
  * [`obj parameters`](#obj-specparameters)
    * [`fn withDeletionPolicy(value="Delete")`](#fn-specparameterswithdeletionpolicy)
    * [`fn withExternalName(value)`](#fn-specparameterswithexternalname)
    * [`fn withForProvider(value)`](#fn-specparameterswithforprovider)
    * [`fn withForProviderMixin(value)`](#fn-specparameterswithforprovidermixin)
    * [`fn withInitProvider(value)`](#fn-specparameterswithinitprovider)
    * [`fn withInitProviderMixin(value)`](#fn-specparameterswithinitprovidermixin)
    * [`fn withManagementPolicies(value=["*"])`](#fn-specparameterswithmanagementpolicies)
    * [`fn withManagementPoliciesMixin(value=["*"])`](#fn-specparameterswithmanagementpoliciesmixin)
    * [`fn withProviderConfigRef(value={"name": "default"})`](#fn-specparameterswithproviderconfigref)
    * [`fn withProviderConfigRefMixin(value={"name": "default"})`](#fn-specparameterswithproviderconfigrefmixin)
    * [`fn withSelectorLabel(value)`](#fn-specparameterswithselectorlabel)
    * [`fn withWriteConnectionSecretToRef(value)`](#fn-specparameterswithwriteconnectionsecrettoref)
    * [`fn withWriteConnectionSecretToRefMixin(value)`](#fn-specparameterswithwriteconnectionsecrettorefmixin)
    * [`obj forProvider`](#obj-specparametersforprovider)
      * [`fn withMetadata(value)`](#fn-specparametersforproviderwithmetadata)
      * [`fn withMetadataMixin(value)`](#fn-specparametersforproviderwithmetadatamixin)
      * [`fn withOptions(value)`](#fn-specparametersforproviderwithoptions)
      * [`fn withOptionsMixin(value)`](#fn-specparametersforproviderwithoptionsmixin)
      * [`fn withSecure(value)`](#fn-specparametersforproviderwithsecure)
      * [`fn withSecureMixin(value)`](#fn-specparametersforproviderwithsecuremixin)
      * [`fn withSecureVersion(value)`](#fn-specparametersforproviderwithsecureversion)
      * [`fn withSpec(value)`](#fn-specparametersforproviderwithspec)
      * [`fn withSpecMixin(value)`](#fn-specparametersforproviderwithspecmixin)
      * [`obj metadata`](#obj-specparametersforprovidermetadata)
        * [`fn withFolderUid(value)`](#fn-specparametersforprovidermetadatawithfolderuid)
        * [`fn withUid(value)`](#fn-specparametersforprovidermetadatawithuid)
      * [`obj options`](#obj-specparametersforprovideroptions)
        * [`fn withManagerIdentity(value)`](#fn-specparametersforprovideroptionswithmanageridentity)
        * [`fn withOverwrite(value=true)`](#fn-specparametersforprovideroptionswithoverwrite)
      * [`obj secure`](#obj-specparametersforprovidersecure)
        * [`fn withToken(value)`](#fn-specparametersforprovidersecurewithtoken)
        * [`fn withTokenMixin(value)`](#fn-specparametersforprovidersecurewithtokenmixin)
        * [`fn withWebhookSecret(value)`](#fn-specparametersforprovidersecurewithwebhooksecret)
        * [`fn withWebhookSecretMixin(value)`](#fn-specparametersforprovidersecurewithwebhooksecretmixin)
      * [`obj spec`](#obj-specparametersforproviderspec)
        * [`fn withBitbucket(value)`](#fn-specparametersforproviderspecwithbitbucket)
        * [`fn withBitbucketMixin(value)`](#fn-specparametersforproviderspecwithbitbucketmixin)
        * [`fn withConnection(value)`](#fn-specparametersforproviderspecwithconnection)
        * [`fn withConnectionMixin(value)`](#fn-specparametersforproviderspecwithconnectionmixin)
        * [`fn withDescription(value)`](#fn-specparametersforproviderspecwithdescription)
        * [`fn withGit(value)`](#fn-specparametersforproviderspecwithgit)
        * [`fn withGitMixin(value)`](#fn-specparametersforproviderspecwithgitmixin)
        * [`fn withGithub(value)`](#fn-specparametersforproviderspecwithgithub)
        * [`fn withGithubMixin(value)`](#fn-specparametersforproviderspecwithgithubmixin)
        * [`fn withGitlab(value)`](#fn-specparametersforproviderspecwithgitlab)
        * [`fn withGitlabMixin(value)`](#fn-specparametersforproviderspecwithgitlabmixin)
        * [`fn withLocal(value)`](#fn-specparametersforproviderspecwithlocal)
        * [`fn withLocalMixin(value)`](#fn-specparametersforproviderspecwithlocalmixin)
        * [`fn withSync(value)`](#fn-specparametersforproviderspecwithsync)
        * [`fn withSyncMixin(value)`](#fn-specparametersforproviderspecwithsyncmixin)
        * [`fn withTitle(value)`](#fn-specparametersforproviderspecwithtitle)
        * [`fn withType(value)`](#fn-specparametersforproviderspecwithtype)
        * [`fn withWebhook(value)`](#fn-specparametersforproviderspecwithwebhook)
        * [`fn withWebhookMixin(value)`](#fn-specparametersforproviderspecwithwebhookmixin)
        * [`fn withWorkflows(value)`](#fn-specparametersforproviderspecwithworkflows)
        * [`fn withWorkflowsMixin(value)`](#fn-specparametersforproviderspecwithworkflowsmixin)
        * [`obj bitbucket`](#obj-specparametersforproviderspecbitbucket)
          * [`fn withBranch(value)`](#fn-specparametersforproviderspecbitbucketwithbranch)
          * [`fn withPath(value)`](#fn-specparametersforproviderspecbitbucketwithpath)
          * [`fn withTokenUser(value)`](#fn-specparametersforproviderspecbitbucketwithtokenuser)
          * [`fn withUrl(value)`](#fn-specparametersforproviderspecbitbucketwithurl)
        * [`obj connection`](#obj-specparametersforproviderspecconnection)
          * [`fn withName(value)`](#fn-specparametersforproviderspecconnectionwithname)
        * [`obj git`](#obj-specparametersforproviderspecgit)
          * [`fn withBranch(value)`](#fn-specparametersforproviderspecgitwithbranch)
          * [`fn withPath(value)`](#fn-specparametersforproviderspecgitwithpath)
          * [`fn withTokenUser(value)`](#fn-specparametersforproviderspecgitwithtokenuser)
          * [`fn withUrl(value)`](#fn-specparametersforproviderspecgitwithurl)
        * [`obj github`](#obj-specparametersforproviderspecgithub)
          * [`fn withBranch(value)`](#fn-specparametersforproviderspecgithubwithbranch)
          * [`fn withGenerateDashboardPreviews(value=true)`](#fn-specparametersforproviderspecgithubwithgeneratedashboardpreviews)
          * [`fn withPath(value)`](#fn-specparametersforproviderspecgithubwithpath)
          * [`fn withUrl(value)`](#fn-specparametersforproviderspecgithubwithurl)
        * [`obj gitlab`](#obj-specparametersforproviderspecgitlab)
          * [`fn withBranch(value)`](#fn-specparametersforproviderspecgitlabwithbranch)
          * [`fn withPath(value)`](#fn-specparametersforproviderspecgitlabwithpath)
          * [`fn withUrl(value)`](#fn-specparametersforproviderspecgitlabwithurl)
        * [`obj local`](#obj-specparametersforproviderspeclocal)
          * [`fn withPath(value)`](#fn-specparametersforproviderspeclocalwithpath)
        * [`obj sync`](#obj-specparametersforproviderspecsync)
          * [`fn withEnabled(value=true)`](#fn-specparametersforproviderspecsyncwithenabled)
          * [`fn withIntervalSeconds(value)`](#fn-specparametersforproviderspecsyncwithintervalseconds)
          * [`fn withTarget(value)`](#fn-specparametersforproviderspecsyncwithtarget)
        * [`obj webhook`](#obj-specparametersforproviderspecwebhook)
          * [`fn withBaseUrl(value)`](#fn-specparametersforproviderspecwebhookwithbaseurl)
    * [`obj initProvider`](#obj-specparametersinitprovider)
      * [`fn withMetadata(value)`](#fn-specparametersinitproviderwithmetadata)
      * [`fn withMetadataMixin(value)`](#fn-specparametersinitproviderwithmetadatamixin)
      * [`fn withOptions(value)`](#fn-specparametersinitproviderwithoptions)
      * [`fn withOptionsMixin(value)`](#fn-specparametersinitproviderwithoptionsmixin)
      * [`fn withSecure(value)`](#fn-specparametersinitproviderwithsecure)
      * [`fn withSecureMixin(value)`](#fn-specparametersinitproviderwithsecuremixin)
      * [`fn withSecureVersion(value)`](#fn-specparametersinitproviderwithsecureversion)
      * [`fn withSpec(value)`](#fn-specparametersinitproviderwithspec)
      * [`fn withSpecMixin(value)`](#fn-specparametersinitproviderwithspecmixin)
      * [`obj metadata`](#obj-specparametersinitprovidermetadata)
        * [`fn withFolderUid(value)`](#fn-specparametersinitprovidermetadatawithfolderuid)
        * [`fn withUid(value)`](#fn-specparametersinitprovidermetadatawithuid)
      * [`obj options`](#obj-specparametersinitprovideroptions)
        * [`fn withManagerIdentity(value)`](#fn-specparametersinitprovideroptionswithmanageridentity)
        * [`fn withOverwrite(value=true)`](#fn-specparametersinitprovideroptionswithoverwrite)
      * [`obj secure`](#obj-specparametersinitprovidersecure)
        * [`fn withToken(value)`](#fn-specparametersinitprovidersecurewithtoken)
        * [`fn withTokenMixin(value)`](#fn-specparametersinitprovidersecurewithtokenmixin)
        * [`fn withWebhookSecret(value)`](#fn-specparametersinitprovidersecurewithwebhooksecret)
        * [`fn withWebhookSecretMixin(value)`](#fn-specparametersinitprovidersecurewithwebhooksecretmixin)
      * [`obj spec`](#obj-specparametersinitproviderspec)
        * [`fn withBitbucket(value)`](#fn-specparametersinitproviderspecwithbitbucket)
        * [`fn withBitbucketMixin(value)`](#fn-specparametersinitproviderspecwithbitbucketmixin)
        * [`fn withConnection(value)`](#fn-specparametersinitproviderspecwithconnection)
        * [`fn withConnectionMixin(value)`](#fn-specparametersinitproviderspecwithconnectionmixin)
        * [`fn withDescription(value)`](#fn-specparametersinitproviderspecwithdescription)
        * [`fn withGit(value)`](#fn-specparametersinitproviderspecwithgit)
        * [`fn withGitMixin(value)`](#fn-specparametersinitproviderspecwithgitmixin)
        * [`fn withGithub(value)`](#fn-specparametersinitproviderspecwithgithub)
        * [`fn withGithubMixin(value)`](#fn-specparametersinitproviderspecwithgithubmixin)
        * [`fn withGitlab(value)`](#fn-specparametersinitproviderspecwithgitlab)
        * [`fn withGitlabMixin(value)`](#fn-specparametersinitproviderspecwithgitlabmixin)
        * [`fn withLocal(value)`](#fn-specparametersinitproviderspecwithlocal)
        * [`fn withLocalMixin(value)`](#fn-specparametersinitproviderspecwithlocalmixin)
        * [`fn withSync(value)`](#fn-specparametersinitproviderspecwithsync)
        * [`fn withSyncMixin(value)`](#fn-specparametersinitproviderspecwithsyncmixin)
        * [`fn withTitle(value)`](#fn-specparametersinitproviderspecwithtitle)
        * [`fn withType(value)`](#fn-specparametersinitproviderspecwithtype)
        * [`fn withWebhook(value)`](#fn-specparametersinitproviderspecwithwebhook)
        * [`fn withWebhookMixin(value)`](#fn-specparametersinitproviderspecwithwebhookmixin)
        * [`fn withWorkflows(value)`](#fn-specparametersinitproviderspecwithworkflows)
        * [`fn withWorkflowsMixin(value)`](#fn-specparametersinitproviderspecwithworkflowsmixin)
        * [`obj bitbucket`](#obj-specparametersinitproviderspecbitbucket)
          * [`fn withBranch(value)`](#fn-specparametersinitproviderspecbitbucketwithbranch)
          * [`fn withPath(value)`](#fn-specparametersinitproviderspecbitbucketwithpath)
          * [`fn withTokenUser(value)`](#fn-specparametersinitproviderspecbitbucketwithtokenuser)
          * [`fn withUrl(value)`](#fn-specparametersinitproviderspecbitbucketwithurl)
        * [`obj connection`](#obj-specparametersinitproviderspecconnection)
          * [`fn withName(value)`](#fn-specparametersinitproviderspecconnectionwithname)
        * [`obj git`](#obj-specparametersinitproviderspecgit)
          * [`fn withBranch(value)`](#fn-specparametersinitproviderspecgitwithbranch)
          * [`fn withPath(value)`](#fn-specparametersinitproviderspecgitwithpath)
          * [`fn withTokenUser(value)`](#fn-specparametersinitproviderspecgitwithtokenuser)
          * [`fn withUrl(value)`](#fn-specparametersinitproviderspecgitwithurl)
        * [`obj github`](#obj-specparametersinitproviderspecgithub)
          * [`fn withBranch(value)`](#fn-specparametersinitproviderspecgithubwithbranch)
          * [`fn withGenerateDashboardPreviews(value=true)`](#fn-specparametersinitproviderspecgithubwithgeneratedashboardpreviews)
          * [`fn withPath(value)`](#fn-specparametersinitproviderspecgithubwithpath)
          * [`fn withUrl(value)`](#fn-specparametersinitproviderspecgithubwithurl)
        * [`obj gitlab`](#obj-specparametersinitproviderspecgitlab)
          * [`fn withBranch(value)`](#fn-specparametersinitproviderspecgitlabwithbranch)
          * [`fn withPath(value)`](#fn-specparametersinitproviderspecgitlabwithpath)
          * [`fn withUrl(value)`](#fn-specparametersinitproviderspecgitlabwithurl)
        * [`obj local`](#obj-specparametersinitproviderspeclocal)
          * [`fn withPath(value)`](#fn-specparametersinitproviderspeclocalwithpath)
        * [`obj sync`](#obj-specparametersinitproviderspecsync)
          * [`fn withEnabled(value=true)`](#fn-specparametersinitproviderspecsyncwithenabled)
          * [`fn withIntervalSeconds(value)`](#fn-specparametersinitproviderspecsyncwithintervalseconds)
          * [`fn withTarget(value)`](#fn-specparametersinitproviderspecsyncwithtarget)
        * [`obj webhook`](#obj-specparametersinitproviderspecwebhook)
          * [`fn withBaseUrl(value)`](#fn-specparametersinitproviderspecwebhookwithbaseurl)
    * [`obj providerConfigRef`](#obj-specparametersproviderconfigref)
      * [`fn withName(value)`](#fn-specparametersproviderconfigrefwithname)
      * [`fn withPolicy(value)`](#fn-specparametersproviderconfigrefwithpolicy)
      * [`fn withPolicyMixin(value)`](#fn-specparametersproviderconfigrefwithpolicymixin)
      * [`obj policy`](#obj-specparametersproviderconfigrefpolicy)
        * [`fn withResolution(value="Required")`](#fn-specparametersproviderconfigrefpolicywithresolution)
        * [`fn withResolve(value)`](#fn-specparametersproviderconfigrefpolicywithresolve)
    * [`obj writeConnectionSecretToRef`](#obj-specparameterswriteconnectionsecrettoref)
      * [`fn withName(value)`](#fn-specparameterswriteconnectionsecrettorefwithname)
      * [`fn withNamespace(value)`](#fn-specparameterswriteconnectionsecrettorefwithnamespace)
  * [`obj writeConnectionSecretToRef`](#obj-specwriteconnectionsecrettoref)
    * [`fn withName(value)`](#fn-specwriteconnectionsecrettorefwithname)
    * [`fn withNamespace(value)`](#fn-specwriteconnectionsecrettorefwithnamespace)

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



### fn withKind

```jsonnet
withKind()
```



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


### fn withSpecMixin

```jsonnet
withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)


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


#### fn spec.withCompositionRef

```jsonnet
spec.withCompositionRef(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionRefMixin

```jsonnet
spec.withCompositionRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionRevisionRef

```jsonnet
spec.withCompositionRevisionRef(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionRevisionRefMixin

```jsonnet
spec.withCompositionRevisionRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionSelector

```jsonnet
spec.withCompositionSelector(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionSelectorMixin

```jsonnet
spec.withCompositionSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionUpdatePolicy

```jsonnet
spec.withCompositionUpdatePolicy(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Automatic"`, `"Manual"`


#### fn spec.withParameters

```jsonnet
spec.withParameters(value)
```

PARAMETERS:

* **value** (`object`)

RepositoryV0Alpha1Spec defines the desired state of RepositoryV0Alpha1
#### fn spec.withParametersMixin

```jsonnet
spec.withParametersMixin(value)
```

PARAMETERS:

* **value** (`object`)

RepositoryV0Alpha1Spec defines the desired state of RepositoryV0Alpha1
#### fn spec.withWriteConnectionSecretToRef

```jsonnet
spec.withWriteConnectionSecretToRef(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withWriteConnectionSecretToRefMixin

```jsonnet
spec.withWriteConnectionSecretToRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### obj spec.compositionRef


##### fn spec.compositionRef.withName

```jsonnet
spec.compositionRef.withName(value)
```

PARAMETERS:

* **value** (`string`)


#### obj spec.compositionRevisionRef


##### fn spec.compositionRevisionRef.withName

```jsonnet
spec.compositionRevisionRef.withName(value)
```

PARAMETERS:

* **value** (`string`)


#### obj spec.compositionSelector


##### fn spec.compositionSelector.withMatchLabels

```jsonnet
spec.compositionSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)


##### fn spec.compositionSelector.withMatchLabelsMixin

```jsonnet
spec.compositionSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### obj spec.parameters


##### fn spec.parameters.withDeletionPolicy

```jsonnet
spec.parameters.withDeletionPolicy(value="Delete")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Delete"`
   - valid values: `"Orphan"`, `"Delete"`

DeletionPolicy specifies what will happen to the underlying external
when this managed resource is deleted - either "Delete" or "Orphan" the
external resource.
This field is planned to be deprecated in favor of the ManagementPolicies
field in a future release. Currently, both could be set independently and
non-default values would be honored if the feature flag is enabled.
See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
##### fn spec.parameters.withExternalName

```jsonnet
spec.parameters.withExternalName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the managed resource inside the Provider.
By default Providers give external resources the same name as the Kubernetes object. A provider uses the external name to lookup a managed resource in an external system. The provider looks up the resource in the external system to determine if it exists, and if it matches the managed resource’s desired state. If the provider can’t find the resource, it creates it.

Docs: https://docs.crossplane.io/latest/concepts/managed-resources/#naming-external-resources

##### fn spec.parameters.withForProvider

```jsonnet
spec.parameters.withForProvider(value)
```

PARAMETERS:

* **value** (`object`)


##### fn spec.parameters.withForProviderMixin

```jsonnet
spec.parameters.withForProviderMixin(value)
```

PARAMETERS:

* **value** (`object`)


##### fn spec.parameters.withInitProvider

```jsonnet
spec.parameters.withInitProvider(value)
```

PARAMETERS:

* **value** (`object`)

THIS IS A BETA FIELD. It will be honored
unless the Management Policies feature flag is disabled.
InitProvider holds the same fields as ForProvider, with the exception
of Identifier and other resource reference fields. The fields that are
in InitProvider are merged into ForProvider when the resource is created.
The same fields are also added to the terraform ignore_changes hook, to
avoid updating them after creation. This is useful for fields that are
required on creation, but we do not desire to update them after creation,
for example because of an external controller is managing them, like an
autoscaler.
##### fn spec.parameters.withInitProviderMixin

```jsonnet
spec.parameters.withInitProviderMixin(value)
```

PARAMETERS:

* **value** (`object`)

THIS IS A BETA FIELD. It will be honored
unless the Management Policies feature flag is disabled.
InitProvider holds the same fields as ForProvider, with the exception
of Identifier and other resource reference fields. The fields that are
in InitProvider are merged into ForProvider when the resource is created.
The same fields are also added to the terraform ignore_changes hook, to
avoid updating them after creation. This is useful for fields that are
required on creation, but we do not desire to update them after creation,
for example because of an external controller is managing them, like an
autoscaler.
##### fn spec.parameters.withManagementPolicies

```jsonnet
spec.parameters.withManagementPolicies(value=["*"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["*"]`

THIS IS A BETA FIELD. It is on by default but can be opted out
through a Crossplane feature flag.
ManagementPolicies specify the array of actions Crossplane is allowed to
take on the managed and external resources.
This field is planned to replace the DeletionPolicy field in a future
release. Currently, both could be set independently and non-default
values would be honored if the feature flag is enabled. If both are
custom, the DeletionPolicy field will be ignored.
See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
##### fn spec.parameters.withManagementPoliciesMixin

```jsonnet
spec.parameters.withManagementPoliciesMixin(value=["*"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["*"]`

THIS IS A BETA FIELD. It is on by default but can be opted out
through a Crossplane feature flag.
ManagementPolicies specify the array of actions Crossplane is allowed to
take on the managed and external resources.
This field is planned to replace the DeletionPolicy field in a future
release. Currently, both could be set independently and non-default
values would be honored if the feature flag is enabled. If both are
custom, the DeletionPolicy field will be ignored.
See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
##### fn spec.parameters.withProviderConfigRef

```jsonnet
spec.parameters.withProviderConfigRef(value={"name": "default"})
```

PARAMETERS:

* **value** (`object`)
   - default value: `{"name": "default"}`

ProviderConfigReference specifies how the provider that will be used to
create, observe, update, and delete this managed resource should be
configured.
##### fn spec.parameters.withProviderConfigRefMixin

```jsonnet
spec.parameters.withProviderConfigRefMixin(value={"name": "default"})
```

PARAMETERS:

* **value** (`object`)
   - default value: `{"name": "default"}`

ProviderConfigReference specifies how the provider that will be used to
create, observe, update, and delete this managed resource should be
configured.
##### fn spec.parameters.withSelectorLabel

```jsonnet
spec.parameters.withSelectorLabel(value)
```

PARAMETERS:

* **value** (`string`)

Configure a custom label for use with selector.matchLabels.
##### fn spec.parameters.withWriteConnectionSecretToRef

```jsonnet
spec.parameters.withWriteConnectionSecretToRef(value)
```

PARAMETERS:

* **value** (`object`)

WriteConnectionSecretToReference specifies the namespace and name of a
Secret to which any connection details for this managed resource should
be written. Connection details frequently include the endpoint, username,
and password required to connect to the managed resource.
##### fn spec.parameters.withWriteConnectionSecretToRefMixin

```jsonnet
spec.parameters.withWriteConnectionSecretToRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

WriteConnectionSecretToReference specifies the namespace and name of a
Secret to which any connection details for this managed resource should
be written. Connection details frequently include the endpoint, username,
and password required to connect to the managed resource.
##### obj spec.parameters.forProvider


###### fn spec.parameters.forProvider.withMetadata

```jsonnet
spec.parameters.forProvider.withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The metadata of the resource. (see below for nested schema)
The metadata of the resource.
###### fn spec.parameters.forProvider.withMetadataMixin

```jsonnet
spec.parameters.forProvider.withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The metadata of the resource. (see below for nested schema)
The metadata of the resource.
###### fn spec.parameters.forProvider.withOptions

```jsonnet
spec.parameters.forProvider.withOptions(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Options for applying the resource. (see below for nested schema)
Options for applying the resource.
###### fn spec.parameters.forProvider.withOptionsMixin

```jsonnet
spec.parameters.forProvider.withOptionsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Options for applying the resource. (see below for nested schema)
Options for applying the resource.
###### fn spec.parameters.forProvider.withSecure

```jsonnet
spec.parameters.forProvider.withSecure(value)
```

PARAMETERS:

* **value** (`object`)

(see below for nested schema)
Sensitive credentials.
###### fn spec.parameters.forProvider.withSecureMixin

```jsonnet
spec.parameters.forProvider.withSecureMixin(value)
```

PARAMETERS:

* **value** (`object`)

(see below for nested schema)
Sensitive credentials.
###### fn spec.parameters.forProvider.withSecureVersion

```jsonnet
spec.parameters.forProvider.withSecureVersion(value)
```

PARAMETERS:

* **value** (`number`)

application of secure values.
Set this to 1 when using `secure`, then increment it to trigger re-application of secure values.
###### fn spec.parameters.forProvider.withSpec

```jsonnet
spec.parameters.forProvider.withSpec(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The spec of the resource. (see below for nested schema)
The spec of the resource.
###### fn spec.parameters.forProvider.withSpecMixin

```jsonnet
spec.parameters.forProvider.withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The spec of the resource. (see below for nested schema)
The spec of the resource.
###### obj spec.parameters.forProvider.metadata


####### fn spec.parameters.forProvider.metadata.withFolderUid

```jsonnet
spec.parameters.forProvider.metadata.withFolderUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.
The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.
####### fn spec.parameters.forProvider.metadata.withUid

```jsonnet
spec.parameters.forProvider.metadata.withUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) The unique identifier of the resource.
The unique identifier of the resource.
###### obj spec.parameters.forProvider.options


####### fn spec.parameters.forProvider.options.withManagerIdentity

```jsonnet
spec.parameters.forProvider.options.withManagerIdentity(value)
```

PARAMETERS:

* **value** (`string`)

Override the identity stamped on this resource's manager metadata.
####### fn spec.parameters.forProvider.options.withOverwrite

```jsonnet
spec.parameters.forProvider.options.withOverwrite(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.
Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.
###### obj spec.parameters.forProvider.secure


####### fn spec.parameters.forProvider.secure.withToken

```jsonnet
spec.parameters.forProvider.secure.withToken(value)
```

PARAMETERS:

* **value** (`object`)

only) Token for repository authentication.
Token for repository authentication.
####### fn spec.parameters.forProvider.secure.withTokenMixin

```jsonnet
spec.parameters.forProvider.secure.withTokenMixin(value)
```

PARAMETERS:

* **value** (`object`)

only) Token for repository authentication.
Token for repository authentication.
####### fn spec.parameters.forProvider.secure.withWebhookSecret

```jsonnet
spec.parameters.forProvider.secure.withWebhookSecret(value)
```

PARAMETERS:

* **value** (`object`)

only) Webhook secret.
Webhook secret.
####### fn spec.parameters.forProvider.secure.withWebhookSecretMixin

```jsonnet
spec.parameters.forProvider.secure.withWebhookSecretMixin(value)
```

PARAMETERS:

* **value** (`object`)

only) Webhook secret.
Webhook secret.
###### obj spec.parameters.forProvider.spec


####### fn spec.parameters.forProvider.spec.withBitbucket

```jsonnet
spec.parameters.forProvider.spec.withBitbucket(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Bitbucket repository configuration. (see below for nested schema)
Bitbucket repository configuration.
####### fn spec.parameters.forProvider.spec.withBitbucketMixin

```jsonnet
spec.parameters.forProvider.spec.withBitbucketMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Bitbucket repository configuration. (see below for nested schema)
Bitbucket repository configuration.
####### fn spec.parameters.forProvider.spec.withConnection

```jsonnet
spec.parameters.forProvider.spec.withConnection(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Connection resource reference. (see below for nested schema)
Connection resource reference.
####### fn spec.parameters.forProvider.spec.withConnectionMixin

```jsonnet
spec.parameters.forProvider.spec.withConnectionMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Connection resource reference. (see below for nested schema)
Connection resource reference.
####### fn spec.parameters.forProvider.spec.withDescription

```jsonnet
spec.parameters.forProvider.spec.withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) Repository description.
Repository description.
####### fn spec.parameters.forProvider.spec.withGit

```jsonnet
spec.parameters.forProvider.spec.withGit(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Generic git repository configuration. (see below for nested schema)
Generic git repository configuration.
####### fn spec.parameters.forProvider.spec.withGitMixin

```jsonnet
spec.parameters.forProvider.spec.withGitMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Generic git repository configuration. (see below for nested schema)
Generic git repository configuration.
####### fn spec.parameters.forProvider.spec.withGithub

```jsonnet
spec.parameters.forProvider.spec.withGithub(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitHub repository configuration. (see below for nested schema)
GitHub repository configuration.
####### fn spec.parameters.forProvider.spec.withGithubMixin

```jsonnet
spec.parameters.forProvider.spec.withGithubMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitHub repository configuration. (see below for nested schema)
GitHub repository configuration.
####### fn spec.parameters.forProvider.spec.withGitlab

```jsonnet
spec.parameters.forProvider.spec.withGitlab(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitLab repository configuration. (see below for nested schema)
GitLab repository configuration.
####### fn spec.parameters.forProvider.spec.withGitlabMixin

```jsonnet
spec.parameters.forProvider.spec.withGitlabMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitLab repository configuration. (see below for nested schema)
GitLab repository configuration.
####### fn spec.parameters.forProvider.spec.withLocal

```jsonnet
spec.parameters.forProvider.spec.withLocal(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Local filesystem repository configuration. (see below for nested schema)
Local filesystem repository configuration.
####### fn spec.parameters.forProvider.spec.withLocalMixin

```jsonnet
spec.parameters.forProvider.spec.withLocalMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Local filesystem repository configuration. (see below for nested schema)
Local filesystem repository configuration.
####### fn spec.parameters.forProvider.spec.withSync

```jsonnet
spec.parameters.forProvider.spec.withSync(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Sync configuration. (see below for nested schema)
Sync configuration.
####### fn spec.parameters.forProvider.spec.withSyncMixin

```jsonnet
spec.parameters.forProvider.spec.withSyncMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Sync configuration. (see below for nested schema)
Sync configuration.
####### fn spec.parameters.forProvider.spec.withTitle

```jsonnet
spec.parameters.forProvider.spec.withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) Display name shown in the UI.
Display name shown in the UI.
####### fn spec.parameters.forProvider.spec.withType

```jsonnet
spec.parameters.forProvider.spec.withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) Repository provider type: local, github, git, bitbucket, or gitlab.
Repository provider type: local, github, git, bitbucket, or gitlab.
####### fn spec.parameters.forProvider.spec.withWebhook

```jsonnet
spec.parameters.forProvider.spec.withWebhook(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Webhook delivery configuration. (see below for nested schema)
Webhook delivery configuration.
####### fn spec.parameters.forProvider.spec.withWebhookMixin

```jsonnet
spec.parameters.forProvider.spec.withWebhookMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Webhook delivery configuration. (see below for nested schema)
Webhook delivery configuration.
####### fn spec.parameters.forProvider.spec.withWorkflows

```jsonnet
spec.parameters.forProvider.spec.withWorkflows(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Allowed change workflows: write, branch.
Allowed change workflows: write, branch.
####### fn spec.parameters.forProvider.spec.withWorkflowsMixin

```jsonnet
spec.parameters.forProvider.spec.withWorkflowsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Allowed change workflows: write, branch.
Allowed change workflows: write, branch.
####### obj spec.parameters.forProvider.spec.bitbucket


######## fn spec.parameters.forProvider.spec.bitbucket.withBranch

```jsonnet
spec.parameters.forProvider.spec.bitbucket.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.forProvider.spec.bitbucket.withPath

```jsonnet
spec.parameters.forProvider.spec.bitbucket.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.forProvider.spec.bitbucket.withTokenUser

```jsonnet
spec.parameters.forProvider.spec.bitbucket.withTokenUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) Username for PAT auth.
Username for PAT auth.
######## fn spec.parameters.forProvider.spec.bitbucket.withUrl

```jsonnet
spec.parameters.forProvider.spec.bitbucket.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.forProvider.spec.connection


######## fn spec.parameters.forProvider.spec.connection.withName

```jsonnet
spec.parameters.forProvider.spec.connection.withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Connection resource name.
Connection resource name.
####### obj spec.parameters.forProvider.spec.git


######## fn spec.parameters.forProvider.spec.git.withBranch

```jsonnet
spec.parameters.forProvider.spec.git.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.forProvider.spec.git.withPath

```jsonnet
spec.parameters.forProvider.spec.git.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.forProvider.spec.git.withTokenUser

```jsonnet
spec.parameters.forProvider.spec.git.withTokenUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) Username for PAT auth.
Username for PAT auth.
######## fn spec.parameters.forProvider.spec.git.withUrl

```jsonnet
spec.parameters.forProvider.spec.git.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.forProvider.spec.github


######## fn spec.parameters.forProvider.spec.github.withBranch

```jsonnet
spec.parameters.forProvider.spec.github.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.forProvider.spec.github.withGenerateDashboardPreviews

```jsonnet
spec.parameters.forProvider.spec.github.withGenerateDashboardPreviews(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to generate dashboard previews.
Whether to generate dashboard previews.
######## fn spec.parameters.forProvider.spec.github.withPath

```jsonnet
spec.parameters.forProvider.spec.github.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.forProvider.spec.github.withUrl

```jsonnet
spec.parameters.forProvider.spec.github.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.forProvider.spec.gitlab


######## fn spec.parameters.forProvider.spec.gitlab.withBranch

```jsonnet
spec.parameters.forProvider.spec.gitlab.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.forProvider.spec.gitlab.withPath

```jsonnet
spec.parameters.forProvider.spec.gitlab.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.forProvider.spec.gitlab.withUrl

```jsonnet
spec.parameters.forProvider.spec.gitlab.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.forProvider.spec.local


######## fn spec.parameters.forProvider.spec.local.withPath

```jsonnet
spec.parameters.forProvider.spec.local.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Filesystem path.
####### obj spec.parameters.forProvider.spec.sync


######## fn spec.parameters.forProvider.spec.sync.withEnabled

```jsonnet
spec.parameters.forProvider.spec.sync.withEnabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether sync is enabled.
Whether sync is enabled.
######## fn spec.parameters.forProvider.spec.sync.withIntervalSeconds

```jsonnet
spec.parameters.forProvider.spec.sync.withIntervalSeconds(value)
```

PARAMETERS:

* **value** (`number`)

(Number) Sync interval in seconds.
Sync interval in seconds.
######## fn spec.parameters.forProvider.spec.sync.withTarget

```jsonnet
spec.parameters.forProvider.spec.sync.withTarget(value)
```

PARAMETERS:

* **value** (`string`)

(String) Sync target: instance or folder.
Sync target: instance or folder.
####### obj spec.parameters.forProvider.spec.webhook


######## fn spec.parameters.forProvider.spec.webhook.withBaseUrl

```jsonnet
spec.parameters.forProvider.spec.webhook.withBaseUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.
Optional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.
##### obj spec.parameters.initProvider


###### fn spec.parameters.initProvider.withMetadata

```jsonnet
spec.parameters.initProvider.withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The metadata of the resource. (see below for nested schema)
The metadata of the resource.
###### fn spec.parameters.initProvider.withMetadataMixin

```jsonnet
spec.parameters.initProvider.withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The metadata of the resource. (see below for nested schema)
The metadata of the resource.
###### fn spec.parameters.initProvider.withOptions

```jsonnet
spec.parameters.initProvider.withOptions(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Options for applying the resource. (see below for nested schema)
Options for applying the resource.
###### fn spec.parameters.initProvider.withOptionsMixin

```jsonnet
spec.parameters.initProvider.withOptionsMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Options for applying the resource. (see below for nested schema)
Options for applying the resource.
###### fn spec.parameters.initProvider.withSecure

```jsonnet
spec.parameters.initProvider.withSecure(value)
```

PARAMETERS:

* **value** (`object`)

(see below for nested schema)
Sensitive credentials.
###### fn spec.parameters.initProvider.withSecureMixin

```jsonnet
spec.parameters.initProvider.withSecureMixin(value)
```

PARAMETERS:

* **value** (`object`)

(see below for nested schema)
Sensitive credentials.
###### fn spec.parameters.initProvider.withSecureVersion

```jsonnet
spec.parameters.initProvider.withSecureVersion(value)
```

PARAMETERS:

* **value** (`number`)

application of secure values.
Set this to 1 when using `secure`, then increment it to trigger re-application of secure values.
###### fn spec.parameters.initProvider.withSpec

```jsonnet
spec.parameters.initProvider.withSpec(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The spec of the resource. (see below for nested schema)
The spec of the resource.
###### fn spec.parameters.initProvider.withSpecMixin

```jsonnet
spec.parameters.initProvider.withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) The spec of the resource. (see below for nested schema)
The spec of the resource.
###### obj spec.parameters.initProvider.metadata


####### fn spec.parameters.initProvider.metadata.withFolderUid

```jsonnet
spec.parameters.initProvider.metadata.withFolderUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.
The UID of the folder to save the resource in. For example, it's supported for dashboards and folders. To know if it's supported for the specific resource you're using check the documentation.
####### fn spec.parameters.initProvider.metadata.withUid

```jsonnet
spec.parameters.initProvider.metadata.withUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) The unique identifier of the resource.
The unique identifier of the resource.
###### obj spec.parameters.initProvider.options


####### fn spec.parameters.initProvider.options.withManagerIdentity

```jsonnet
spec.parameters.initProvider.options.withManagerIdentity(value)
```

PARAMETERS:

* **value** (`string`)

Override the identity stamped on this resource's manager metadata.
####### fn spec.parameters.initProvider.options.withOverwrite

```jsonnet
spec.parameters.initProvider.options.withOverwrite(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.
Set to true if you want to overwrite existing resource with newer version, same resource title in folder or same resource uid.
###### obj spec.parameters.initProvider.secure


####### fn spec.parameters.initProvider.secure.withToken

```jsonnet
spec.parameters.initProvider.secure.withToken(value)
```

PARAMETERS:

* **value** (`object`)

only) Token for repository authentication.
Token for repository authentication.
####### fn spec.parameters.initProvider.secure.withTokenMixin

```jsonnet
spec.parameters.initProvider.secure.withTokenMixin(value)
```

PARAMETERS:

* **value** (`object`)

only) Token for repository authentication.
Token for repository authentication.
####### fn spec.parameters.initProvider.secure.withWebhookSecret

```jsonnet
spec.parameters.initProvider.secure.withWebhookSecret(value)
```

PARAMETERS:

* **value** (`object`)

only) Webhook secret.
Webhook secret.
####### fn spec.parameters.initProvider.secure.withWebhookSecretMixin

```jsonnet
spec.parameters.initProvider.secure.withWebhookSecretMixin(value)
```

PARAMETERS:

* **value** (`object`)

only) Webhook secret.
Webhook secret.
###### obj spec.parameters.initProvider.spec


####### fn spec.parameters.initProvider.spec.withBitbucket

```jsonnet
spec.parameters.initProvider.spec.withBitbucket(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Bitbucket repository configuration. (see below for nested schema)
Bitbucket repository configuration.
####### fn spec.parameters.initProvider.spec.withBitbucketMixin

```jsonnet
spec.parameters.initProvider.spec.withBitbucketMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Bitbucket repository configuration. (see below for nested schema)
Bitbucket repository configuration.
####### fn spec.parameters.initProvider.spec.withConnection

```jsonnet
spec.parameters.initProvider.spec.withConnection(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Connection resource reference. (see below for nested schema)
Connection resource reference.
####### fn spec.parameters.initProvider.spec.withConnectionMixin

```jsonnet
spec.parameters.initProvider.spec.withConnectionMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Connection resource reference. (see below for nested schema)
Connection resource reference.
####### fn spec.parameters.initProvider.spec.withDescription

```jsonnet
spec.parameters.initProvider.spec.withDescription(value)
```

PARAMETERS:

* **value** (`string`)

(String) Repository description.
Repository description.
####### fn spec.parameters.initProvider.spec.withGit

```jsonnet
spec.parameters.initProvider.spec.withGit(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Generic git repository configuration. (see below for nested schema)
Generic git repository configuration.
####### fn spec.parameters.initProvider.spec.withGitMixin

```jsonnet
spec.parameters.initProvider.spec.withGitMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Generic git repository configuration. (see below for nested schema)
Generic git repository configuration.
####### fn spec.parameters.initProvider.spec.withGithub

```jsonnet
spec.parameters.initProvider.spec.withGithub(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitHub repository configuration. (see below for nested schema)
GitHub repository configuration.
####### fn spec.parameters.initProvider.spec.withGithubMixin

```jsonnet
spec.parameters.initProvider.spec.withGithubMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitHub repository configuration. (see below for nested schema)
GitHub repository configuration.
####### fn spec.parameters.initProvider.spec.withGitlab

```jsonnet
spec.parameters.initProvider.spec.withGitlab(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitLab repository configuration. (see below for nested schema)
GitLab repository configuration.
####### fn spec.parameters.initProvider.spec.withGitlabMixin

```jsonnet
spec.parameters.initProvider.spec.withGitlabMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) GitLab repository configuration. (see below for nested schema)
GitLab repository configuration.
####### fn spec.parameters.initProvider.spec.withLocal

```jsonnet
spec.parameters.initProvider.spec.withLocal(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Local filesystem repository configuration. (see below for nested schema)
Local filesystem repository configuration.
####### fn spec.parameters.initProvider.spec.withLocalMixin

```jsonnet
spec.parameters.initProvider.spec.withLocalMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Local filesystem repository configuration. (see below for nested schema)
Local filesystem repository configuration.
####### fn spec.parameters.initProvider.spec.withSync

```jsonnet
spec.parameters.initProvider.spec.withSync(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Sync configuration. (see below for nested schema)
Sync configuration.
####### fn spec.parameters.initProvider.spec.withSyncMixin

```jsonnet
spec.parameters.initProvider.spec.withSyncMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Sync configuration. (see below for nested schema)
Sync configuration.
####### fn spec.parameters.initProvider.spec.withTitle

```jsonnet
spec.parameters.initProvider.spec.withTitle(value)
```

PARAMETERS:

* **value** (`string`)

(String) Display name shown in the UI.
Display name shown in the UI.
####### fn spec.parameters.initProvider.spec.withType

```jsonnet
spec.parameters.initProvider.spec.withType(value)
```

PARAMETERS:

* **value** (`string`)

(String) Repository provider type: local, github, git, bitbucket, or gitlab.
Repository provider type: local, github, git, bitbucket, or gitlab.
####### fn spec.parameters.initProvider.spec.withWebhook

```jsonnet
spec.parameters.initProvider.spec.withWebhook(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Webhook delivery configuration. (see below for nested schema)
Webhook delivery configuration.
####### fn spec.parameters.initProvider.spec.withWebhookMixin

```jsonnet
spec.parameters.initProvider.spec.withWebhookMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Block, Optional) Webhook delivery configuration. (see below for nested schema)
Webhook delivery configuration.
####### fn spec.parameters.initProvider.spec.withWorkflows

```jsonnet
spec.parameters.initProvider.spec.withWorkflows(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Allowed change workflows: write, branch.
Allowed change workflows: write, branch.
####### fn spec.parameters.initProvider.spec.withWorkflowsMixin

```jsonnet
spec.parameters.initProvider.spec.withWorkflowsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(List of String) Allowed change workflows: write, branch.
Allowed change workflows: write, branch.
####### obj spec.parameters.initProvider.spec.bitbucket


######## fn spec.parameters.initProvider.spec.bitbucket.withBranch

```jsonnet
spec.parameters.initProvider.spec.bitbucket.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.initProvider.spec.bitbucket.withPath

```jsonnet
spec.parameters.initProvider.spec.bitbucket.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.initProvider.spec.bitbucket.withTokenUser

```jsonnet
spec.parameters.initProvider.spec.bitbucket.withTokenUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) Username for PAT auth.
Username for PAT auth.
######## fn spec.parameters.initProvider.spec.bitbucket.withUrl

```jsonnet
spec.parameters.initProvider.spec.bitbucket.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.initProvider.spec.connection


######## fn spec.parameters.initProvider.spec.connection.withName

```jsonnet
spec.parameters.initProvider.spec.connection.withName(value)
```

PARAMETERS:

* **value** (`string`)

(String) Connection resource name.
Connection resource name.
####### obj spec.parameters.initProvider.spec.git


######## fn spec.parameters.initProvider.spec.git.withBranch

```jsonnet
spec.parameters.initProvider.spec.git.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.initProvider.spec.git.withPath

```jsonnet
spec.parameters.initProvider.spec.git.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.initProvider.spec.git.withTokenUser

```jsonnet
spec.parameters.initProvider.spec.git.withTokenUser(value)
```

PARAMETERS:

* **value** (`string`)

(String) Username for PAT auth.
Username for PAT auth.
######## fn spec.parameters.initProvider.spec.git.withUrl

```jsonnet
spec.parameters.initProvider.spec.git.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.initProvider.spec.github


######## fn spec.parameters.initProvider.spec.github.withBranch

```jsonnet
spec.parameters.initProvider.spec.github.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.initProvider.spec.github.withGenerateDashboardPreviews

```jsonnet
spec.parameters.initProvider.spec.github.withGenerateDashboardPreviews(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether to generate dashboard previews.
Whether to generate dashboard previews.
######## fn spec.parameters.initProvider.spec.github.withPath

```jsonnet
spec.parameters.initProvider.spec.github.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.initProvider.spec.github.withUrl

```jsonnet
spec.parameters.initProvider.spec.github.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.initProvider.spec.gitlab


######## fn spec.parameters.initProvider.spec.gitlab.withBranch

```jsonnet
spec.parameters.initProvider.spec.gitlab.withBranch(value)
```

PARAMETERS:

* **value** (`string`)

(String) Branch to sync.
Branch to sync.
######## fn spec.parameters.initProvider.spec.gitlab.withPath

```jsonnet
spec.parameters.initProvider.spec.gitlab.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Optional subdirectory path.
######## fn spec.parameters.initProvider.spec.gitlab.withUrl

```jsonnet
spec.parameters.initProvider.spec.gitlab.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) The full URL of the resource.
Repository URL.
####### obj spec.parameters.initProvider.spec.local


######## fn spec.parameters.initProvider.spec.local.withPath

```jsonnet
spec.parameters.initProvider.spec.local.withPath(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional subdirectory path.
Filesystem path.
####### obj spec.parameters.initProvider.spec.sync


######## fn spec.parameters.initProvider.spec.sync.withEnabled

```jsonnet
spec.parameters.initProvider.spec.sync.withEnabled(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether sync is enabled.
Whether sync is enabled.
######## fn spec.parameters.initProvider.spec.sync.withIntervalSeconds

```jsonnet
spec.parameters.initProvider.spec.sync.withIntervalSeconds(value)
```

PARAMETERS:

* **value** (`number`)

(Number) Sync interval in seconds.
Sync interval in seconds.
######## fn spec.parameters.initProvider.spec.sync.withTarget

```jsonnet
spec.parameters.initProvider.spec.sync.withTarget(value)
```

PARAMETERS:

* **value** (`string`)

(String) Sync target: instance or folder.
Sync target: instance or folder.
####### obj spec.parameters.initProvider.spec.webhook


######## fn spec.parameters.initProvider.spec.webhook.withBaseUrl

```jsonnet
spec.parameters.initProvider.spec.webhook.withBaseUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) Optional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.
Optional public webhook base URL override used when incoming webhook delivery must target a different host than the Grafana UI URL.
##### obj spec.parameters.providerConfigRef


###### fn spec.parameters.providerConfigRef.withName

```jsonnet
spec.parameters.providerConfigRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
###### fn spec.parameters.providerConfigRef.withPolicy

```jsonnet
spec.parameters.providerConfigRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
###### fn spec.parameters.providerConfigRef.withPolicyMixin

```jsonnet
spec.parameters.providerConfigRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
###### obj spec.parameters.providerConfigRef.policy


####### fn spec.parameters.providerConfigRef.policy.withResolution

```jsonnet
spec.parameters.providerConfigRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
####### fn spec.parameters.providerConfigRef.policy.withResolve

```jsonnet
spec.parameters.providerConfigRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
##### obj spec.parameters.writeConnectionSecretToRef


###### fn spec.parameters.writeConnectionSecretToRef.withName

```jsonnet
spec.parameters.writeConnectionSecretToRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
###### fn spec.parameters.writeConnectionSecretToRef.withNamespace

```jsonnet
spec.parameters.writeConnectionSecretToRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
#### obj spec.writeConnectionSecretToRef


##### fn spec.writeConnectionSecretToRef.withName

```jsonnet
spec.writeConnectionSecretToRef.withName(value)
```

PARAMETERS:

* **value** (`string`)


##### fn spec.writeConnectionSecretToRef.withNamespace

```jsonnet
spec.writeConnectionSecretToRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

