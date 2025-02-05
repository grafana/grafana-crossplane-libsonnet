{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='compositeResourceDefinition', url='', help='"A CompositeResourceDefinition defines the schema for a new custom Kubernetes\\nAPI.\\n\\n\\nRead the Crossplane documentation for\\n[more information about CustomResourceDefinitions](https://docs.crossplane.io/latest/concepts/composite-resource-definitions)."'),
  '#metadata':: d.obj(help='"ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create."'),
  metadata: {
    '#withAnnotations':: d.fn(help='"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"', args=[d.arg(name='annotations', type=d.T.object)]),
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    '#withAnnotationsMixin':: d.fn(help='"Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='annotations', type=d.T.object)]),
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    '#withClusterName':: d.fn(help='"The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request."', args=[d.arg(name='clusterName', type=d.T.string)]),
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    '#withCreationTimestamp':: d.fn(help='"Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers."', args=[d.arg(name='creationTimestamp', type=d.T.string)]),
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    '#withDeletionGracePeriodSeconds':: d.fn(help='"Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only."', args=[d.arg(name='deletionGracePeriodSeconds', type=d.T.integer)]),
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    '#withDeletionTimestamp':: d.fn(help='"Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers."', args=[d.arg(name='deletionTimestamp', type=d.T.string)]),
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    '#withFinalizers':: d.fn(help='"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."', args=[d.arg(name='finalizers', type=d.T.array)]),
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    '#withFinalizersMixin':: d.fn(help='"Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='finalizers', type=d.T.array)]),
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    '#withGenerateName':: d.fn(help='"GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.\\n\\nIf this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).\\n\\nApplied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency"', args=[d.arg(name='generateName', type=d.T.string)]),
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    '#withGeneration':: d.fn(help='"A sequence number representing a specific generation of the desired state. Populated by the system. Read-only."', args=[d.arg(name='generation', type=d.T.integer)]),
    withGeneration(generation): { metadata+: { generation: generation } },
    '#withLabels':: d.fn(help='"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"', args=[d.arg(name='labels', type=d.T.object)]),
    withLabels(labels): { metadata+: { labels: labels } },
    '#withLabelsMixin':: d.fn(help='"Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='labels', type=d.T.object)]),
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    '#withName':: d.fn(help='"Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names"', args=[d.arg(name='name', type=d.T.string)]),
    withName(name): { metadata+: { name: name } },
    '#withNamespace':: d.fn(help='"Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the \\"default\\" namespace, but \\"default\\" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.\\n\\nMust be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces"', args=[d.arg(name='namespace', type=d.T.string)]),
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    '#withOwnerReferences':: d.fn(help='"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."', args=[d.arg(name='ownerReferences', type=d.T.array)]),
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    '#withOwnerReferencesMixin':: d.fn(help='"List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='ownerReferences', type=d.T.array)]),
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    '#withResourceVersion':: d.fn(help='"An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.\\n\\nPopulated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency"', args=[d.arg(name='resourceVersion', type=d.T.string)]),
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    '#withSelfLink':: d.fn(help='"SelfLink is a URL representing this object. Populated by the system. Read-only.\\n\\nDEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release."', args=[d.arg(name='selfLink', type=d.T.string)]),
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    '#withUid':: d.fn(help='"UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.\\n\\nPopulated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids"', args=[d.arg(name='uid', type=d.T.string)]),
    withUid(uid): { metadata+: { uid: uid } },
  },
  '#new':: d.fn(help='new returns an instance of CompositeResourceDefinition', args=[d.arg(name='name', type=d.T.string)]),
  new(name): {
    apiVersion: 'apiextensions.crossplane.io/v1',
    kind: 'CompositeResourceDefinition',
  } + self.metadata.withName(name=name) + self.metadata.withAnnotations(annotations={
    'tanka.dev/namespaced': 'false',
  }),
  '#spec':: d.obj(help='"CompositeResourceDefinitionSpec specifies the desired state of the definition."'),
  spec: {
    '#claimNames':: d.obj(help="\"ClaimNames specifies the names of an optional composite resource claim.\\nWhen claim names are specified Crossplane will create a namespaced\\n'composite resource claim' CRD that corresponds to the defined composite\\nresource. This composite resource claim acts as a namespaced proxy for\\nthe composite resource; creating, updating, or deleting the claim will\\ncreate, update, or delete a corresponding composite resource. You may add\\nclaim names to an existing CompositeResourceDefinition, but they cannot\\nbe changed or removed once they have been set.\""),
    claimNames: {
      '#withCategories':: d.fn(help="\"categories is a list of grouped resources this custom resource belongs to (e.g. 'all').\\nThis is published in API discovery documents, and used by clients to support invocations like\\n`kubectl get all`.\"", args=[d.arg(name='categories', type=d.T.array)]),
      withCategories(categories): { spec+: { claimNames+: { categories: if std.isArray(v=categories) then categories else [categories] } } },
      '#withCategoriesMixin':: d.fn(help="\"categories is a list of grouped resources this custom resource belongs to (e.g. 'all').\\nThis is published in API discovery documents, and used by clients to support invocations like\\n`kubectl get all`.\"\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='categories', type=d.T.array)]),
      withCategoriesMixin(categories): { spec+: { claimNames+: { categories+: if std.isArray(v=categories) then categories else [categories] } } },
      '#withKind':: d.fn(help='"kind is the serialized kind of the resource. It is normally CamelCase and singular.\\nCustom resource instances will use this value as the `kind` attribute in API calls."', args=[d.arg(name='kind', type=d.T.string)]),
      withKind(kind): { spec+: { claimNames+: { kind: kind } } },
      '#withListKind':: d.fn(help='"listKind is the serialized kind of the list for this resource. Defaults to \\"`kind`List\\"."', args=[d.arg(name='listKind', type=d.T.string)]),
      withListKind(listKind): { spec+: { claimNames+: { listKind: listKind } } },
      '#withPlural':: d.fn(help='"plural is the plural name of the resource to serve.\\nThe custom resources are served under `/apis/<group>/<version>/.../<plural>`.\\nMust match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).\\nMust be all lowercase."', args=[d.arg(name='plural', type=d.T.string)]),
      withPlural(plural): { spec+: { claimNames+: { plural: plural } } },
      '#withShortNames':: d.fn(help='"shortNames are short names for the resource, exposed in API discovery documents,\\nand used by clients to support invocations like `kubectl get <shortname>`.\\nIt must be all lowercase."', args=[d.arg(name='shortNames', type=d.T.array)]),
      withShortNames(shortNames): { spec+: { claimNames+: { shortNames: if std.isArray(v=shortNames) then shortNames else [shortNames] } } },
      '#withShortNamesMixin':: d.fn(help='"shortNames are short names for the resource, exposed in API discovery documents,\\nand used by clients to support invocations like `kubectl get <shortname>`.\\nIt must be all lowercase."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='shortNames', type=d.T.array)]),
      withShortNamesMixin(shortNames): { spec+: { claimNames+: { shortNames+: if std.isArray(v=shortNames) then shortNames else [shortNames] } } },
      '#withSingular':: d.fn(help='"singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`."', args=[d.arg(name='singular', type=d.T.string)]),
      withSingular(singular): { spec+: { claimNames+: { singular: singular } } },
    },
    '#conversion':: d.obj(help='"Conversion defines all conversion settings for the defined Composite resource."'),
    conversion: {
      '#webhook':: d.obj(help='"webhook describes how to call the conversion webhook. Required when `strategy` is set to `\\"Webhook\\"`."'),
      webhook: {
        '#clientConfig':: d.obj(help='"clientConfig is the instructions for how to call the webhook if strategy is `Webhook`."'),
        clientConfig: {
          '#service':: d.obj(help='"service is a reference to the service for this webhook. Either\\nservice or url must be specified.\\n\\n\\nIf the webhook is running within the cluster, then you should use `service`."'),
          service: {
            '#withName':: d.fn(help='"name is the name of the service.\\nRequired"', args=[d.arg(name='name', type=d.T.string)]),
            withName(name): { spec+: { conversion+: { webhook+: { clientConfig+: { service+: { name: name } } } } } },
            '#withNamespace':: d.fn(help='"namespace is the namespace of the service.\\nRequired"', args=[d.arg(name='namespace', type=d.T.string)]),
            withNamespace(namespace): { spec+: { conversion+: { webhook+: { clientConfig+: { service+: { namespace: namespace } } } } } },
            '#withPath':: d.fn(help='"path is an optional URL path at which the webhook will be contacted."', args=[d.arg(name='path', type=d.T.string)]),
            withPath(path): { spec+: { conversion+: { webhook+: { clientConfig+: { service+: { path: path } } } } } },
            '#withPort':: d.fn(help='"port is an optional service port at which the webhook will be contacted.\\n`port` should be a valid port number (1-65535, inclusive).\\nDefaults to 443 for backward compatibility."', args=[d.arg(name='port', type=d.T.integer)]),
            withPort(port): { spec+: { conversion+: { webhook+: { clientConfig+: { service+: { port: port } } } } } },
          },
          '#withCaBundle':: d.fn(help="\"caBundle is a PEM encoded CA bundle which will be used to validate the webhook's server certificate.\\nIf unspecified, system trust roots on the apiserver are used.\"", args=[d.arg(name='caBundle', type=d.T.string)]),
          withCaBundle(caBundle): { spec+: { conversion+: { webhook+: { clientConfig+: { caBundle: caBundle } } } } },
          '#withUrl':: d.fn(help='"url gives the location of the webhook, in standard URL form\\n(`scheme://host:port/path`). Exactly one of `url` or `service`\\nmust be specified.\\n\\n\\nThe `host` should not refer to a service running in the cluster; use\\nthe `service` field instead. The host might be resolved via external\\nDNS in some apiservers (e.g., `kube-apiserver` cannot resolve\\nin-cluster DNS as that would be a layering violation). `host` may\\nalso be an IP address.\\n\\n\\nPlease note that using `localhost` or `127.0.0.1` as a `host` is\\nrisky unless you take great care to run this webhook on all hosts\\nwhich run an apiserver which might need to make calls to this\\nwebhook. Such installs are likely to be non-portable, i.e., not easy\\nto turn up in a new cluster.\\n\\n\\nThe scheme must be \\"https\\"; the URL must begin with \\"https://\\".\\n\\n\\nA path is optional, and if present may be any string permissible in\\na URL. You may use the path to pass an arbitrary string to the\\nwebhook, for example, a cluster identifier.\\n\\n\\nAttempting to use a user or basic auth e.g. \\"user:password@\\" is not\\nallowed. Fragments (\\"#...\\") and query parameters (\\"?...\\") are not\\nallowed, either."', args=[d.arg(name='url', type=d.T.string)]),
          withUrl(url): { spec+: { conversion+: { webhook+: { clientConfig+: { url: url } } } } },
        },
        '#withConversionReviewVersions':: d.fn(help='"conversionReviewVersions is an ordered list of preferred `ConversionReview`\\nversions the Webhook expects. The API server will use the first version in\\nthe list which it supports. If none of the versions specified in this list\\nare supported by API server, conversion will fail for the custom resource.\\nIf a persisted Webhook configuration specifies allowed versions and does not\\ninclude any versions known to the API Server, calls to the webhook will fail."', args=[d.arg(name='conversionReviewVersions', type=d.T.array)]),
        withConversionReviewVersions(conversionReviewVersions): { spec+: { conversion+: { webhook+: { conversionReviewVersions: if std.isArray(v=conversionReviewVersions) then conversionReviewVersions else [conversionReviewVersions] } } } },
        '#withConversionReviewVersionsMixin':: d.fn(help='"conversionReviewVersions is an ordered list of preferred `ConversionReview`\\nversions the Webhook expects. The API server will use the first version in\\nthe list which it supports. If none of the versions specified in this list\\nare supported by API server, conversion will fail for the custom resource.\\nIf a persisted Webhook configuration specifies allowed versions and does not\\ninclude any versions known to the API Server, calls to the webhook will fail."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='conversionReviewVersions', type=d.T.array)]),
        withConversionReviewVersionsMixin(conversionReviewVersions): { spec+: { conversion+: { webhook+: { conversionReviewVersions+: if std.isArray(v=conversionReviewVersions) then conversionReviewVersions else [conversionReviewVersions] } } } },
      },
      '#withStrategy':: d.fn(help='"strategy specifies how custom resources are converted between versions. Allowed values are:\\n- `\\"None\\"`: The converter only change the apiVersion and would not touch any other field in the custom resource.\\n- `\\"Webhook\\"`: API Server will call to an external webhook to do the conversion. Additional information\\n  is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set."', args=[d.arg(name='strategy', type=d.T.string)]),
      withStrategy(strategy): { spec+: { conversion+: { strategy: strategy } } },
    },
    '#defaultCompositionRef':: d.obj(help='"DefaultCompositionRef refers to the Composition resource that will be used\\nin case no composition selector is given."'),
    defaultCompositionRef: {
      '#withName':: d.fn(help='"Name of the Composition."', args=[d.arg(name='name', type=d.T.string)]),
      withName(name): { spec+: { defaultCompositionRef+: { name: name } } },
    },
    '#enforcedCompositionRef':: d.obj(help='"EnforcedCompositionRef refers to the Composition resource that will be used\\nby all composite instances whose schema is defined by this definition."'),
    enforcedCompositionRef: {
      '#withName':: d.fn(help='"Name of the Composition."', args=[d.arg(name='name', type=d.T.string)]),
      withName(name): { spec+: { enforcedCompositionRef+: { name: name } } },
    },
    '#metadata':: d.obj(help="\"Metadata specifies the desired metadata for the defined composite resource and claim CRD's.\""),
    metadata: {
      '#withAnnotations':: d.fn(help='"Annotations is an unstructured key value map stored with a resource that may be\\nset by external tools to store and retrieve arbitrary metadata. They are not\\nqueryable and should be preserved when modifying objects.\\nMore info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations"', args=[d.arg(name='annotations', type=d.T.object)]),
      withAnnotations(annotations): { spec+: { metadata+: { annotations: annotations } } },
      '#withAnnotationsMixin':: d.fn(help='"Annotations is an unstructured key value map stored with a resource that may be\\nset by external tools to store and retrieve arbitrary metadata. They are not\\nqueryable and should be preserved when modifying objects.\\nMore info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='annotations', type=d.T.object)]),
      withAnnotationsMixin(annotations): { spec+: { metadata+: { annotations+: annotations } } },
      '#withLabels':: d.fn(help="\"Map of string keys and values that can be used to organize and categorize\\n(scope and select) objects. May match selectors of replication controllers\\nMore info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels\\nand services.\\nThese labels are added to the composite resource and claim CRD's in addition\\nto any labels defined by `CompositionResourceDefinition` `metadata.labels`.\"", args=[d.arg(name='labels', type=d.T.object)]),
      withLabels(labels): { spec+: { metadata+: { labels: labels } } },
      '#withLabelsMixin':: d.fn(help="\"Map of string keys and values that can be used to organize and categorize\\n(scope and select) objects. May match selectors of replication controllers\\nMore info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels\\nand services.\\nThese labels are added to the composite resource and claim CRD's in addition\\nto any labels defined by `CompositionResourceDefinition` `metadata.labels`.\"\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='labels', type=d.T.object)]),
      withLabelsMixin(labels): { spec+: { metadata+: { labels+: labels } } },
    },
    '#names':: d.obj(help='"Names specifies the resource and kind names of the defined composite\\nresource."'),
    names: {
      '#withCategories':: d.fn(help="\"categories is a list of grouped resources this custom resource belongs to (e.g. 'all').\\nThis is published in API discovery documents, and used by clients to support invocations like\\n`kubectl get all`.\"", args=[d.arg(name='categories', type=d.T.array)]),
      withCategories(categories): { spec+: { names+: { categories: if std.isArray(v=categories) then categories else [categories] } } },
      '#withCategoriesMixin':: d.fn(help="\"categories is a list of grouped resources this custom resource belongs to (e.g. 'all').\\nThis is published in API discovery documents, and used by clients to support invocations like\\n`kubectl get all`.\"\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='categories', type=d.T.array)]),
      withCategoriesMixin(categories): { spec+: { names+: { categories+: if std.isArray(v=categories) then categories else [categories] } } },
      '#withKind':: d.fn(help='"kind is the serialized kind of the resource. It is normally CamelCase and singular.\\nCustom resource instances will use this value as the `kind` attribute in API calls."', args=[d.arg(name='kind', type=d.T.string)]),
      withKind(kind): { spec+: { names+: { kind: kind } } },
      '#withListKind':: d.fn(help='"listKind is the serialized kind of the list for this resource. Defaults to \\"`kind`List\\"."', args=[d.arg(name='listKind', type=d.T.string)]),
      withListKind(listKind): { spec+: { names+: { listKind: listKind } } },
      '#withPlural':: d.fn(help='"plural is the plural name of the resource to serve.\\nThe custom resources are served under `/apis/<group>/<version>/.../<plural>`.\\nMust match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).\\nMust be all lowercase."', args=[d.arg(name='plural', type=d.T.string)]),
      withPlural(plural): { spec+: { names+: { plural: plural } } },
      '#withShortNames':: d.fn(help='"shortNames are short names for the resource, exposed in API discovery documents,\\nand used by clients to support invocations like `kubectl get <shortname>`.\\nIt must be all lowercase."', args=[d.arg(name='shortNames', type=d.T.array)]),
      withShortNames(shortNames): { spec+: { names+: { shortNames: if std.isArray(v=shortNames) then shortNames else [shortNames] } } },
      '#withShortNamesMixin':: d.fn(help='"shortNames are short names for the resource, exposed in API discovery documents,\\nand used by clients to support invocations like `kubectl get <shortname>`.\\nIt must be all lowercase."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='shortNames', type=d.T.array)]),
      withShortNamesMixin(shortNames): { spec+: { names+: { shortNames+: if std.isArray(v=shortNames) then shortNames else [shortNames] } } },
      '#withSingular':: d.fn(help='"singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`."', args=[d.arg(name='singular', type=d.T.string)]),
      withSingular(singular): { spec+: { names+: { singular: singular } } },
    },
    '#versions':: d.obj(help='"Versions is the list of all API versions of the defined composite\\nresource. Version names are used to compute the order in which served\\nversions are listed in API discovery. If the version string is\\n\\"kube-like\\", it will sort above non \\"kube-like\\" version strings, which\\nare ordered lexicographically. \\"Kube-like\\" versions start with a \\"v\\",\\nthen are followed by a number (the major version), then optionally the\\nstring \\"alpha\\" or \\"beta\\" and another number (the minor version). These\\nare sorted first by GA > beta > alpha (where GA is a version with no\\nsuffix such as beta or alpha), and then by comparing major version, then\\nminor version. An example sorted list of versions: v10, v2, v1, v11beta2,\\nv10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10."'),
    versions: {
      '#additionalPrinterColumns':: d.obj(help='"AdditionalPrinterColumns specifies additional columns returned in Table\\noutput. If no columns are specified, a single column displaying the age\\nof the custom resource is used. See the following link for details:\\nhttps://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables"'),
      additionalPrinterColumns: {
        '#withDescription':: d.fn(help='"description is a human readable description of this column."', args=[d.arg(name='description', type=d.T.string)]),
        withDescription(description): { description: description },
        '#withFormat':: d.fn(help="\"format is an optional OpenAPI type definition for this column. The 'name' format is applied\\nto the primary identifier column to assist in clients identifying column is the resource name.\\nSee https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.\"", args=[d.arg(name='format', type=d.T.string)]),
        withFormat(format): { format: format },
        '#withJsonPath':: d.fn(help='"jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against\\neach custom resource to produce the value for this column."', args=[d.arg(name='jsonPath', type=d.T.string)]),
        withJsonPath(jsonPath): { jsonPath: jsonPath },
        '#withName':: d.fn(help='"name is a human readable name for the column."', args=[d.arg(name='name', type=d.T.string)]),
        withName(name): { name: name },
        '#withPriority':: d.fn(help='"priority is an integer defining the relative importance of this column compared to others. Lower\\nnumbers are considered higher priority. Columns that may be omitted in limited space scenarios\\nshould be given a priority greater than 0."', args=[d.arg(name='priority', type=d.T.integer)]),
        withPriority(priority): { priority: priority },
        '#withType':: d.fn(help='"type is an OpenAPI type definition for this column.\\nSee https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details."', args=[d.arg(name='type', type=d.T.string)]),
        withType(type): { type: type },
      },
      '#schema':: d.obj(help='"Schema describes the schema used for validation, pruning, and defaulting\\nof this version of the defined composite resource. Fields required by all\\ncomposite resources will be injected into this schema automatically, and\\nwill override equivalently named fields in this schema. Omitting this\\nschema results in a schema that contains only the fields required by all\\ncomposite resources."'),
      schema: {
        '#withOpenAPIV3Schema':: d.fn(help='"OpenAPIV3Schema is the OpenAPI v3 schema to use for validation and\\npruning."', args=[d.arg(name='openAPIV3Schema', type=d.T.object)]),
        withOpenAPIV3Schema(openAPIV3Schema): { schema+: { openAPIV3Schema: openAPIV3Schema } },
        '#withOpenAPIV3SchemaMixin':: d.fn(help='"OpenAPIV3Schema is the OpenAPI v3 schema to use for validation and\\npruning."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='openAPIV3Schema', type=d.T.object)]),
        withOpenAPIV3SchemaMixin(openAPIV3Schema): { schema+: { openAPIV3Schema+: openAPIV3Schema } },
      },
      '#withAdditionalPrinterColumns':: d.fn(help='"AdditionalPrinterColumns specifies additional columns returned in Table\\noutput. If no columns are specified, a single column displaying the age\\nof the custom resource is used. See the following link for details:\\nhttps://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables"', args=[d.arg(name='additionalPrinterColumns', type=d.T.array)]),
      withAdditionalPrinterColumns(additionalPrinterColumns): { additionalPrinterColumns: if std.isArray(v=additionalPrinterColumns) then additionalPrinterColumns else [additionalPrinterColumns] },
      '#withAdditionalPrinterColumnsMixin':: d.fn(help='"AdditionalPrinterColumns specifies additional columns returned in Table\\noutput. If no columns are specified, a single column displaying the age\\nof the custom resource is used. See the following link for details:\\nhttps://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables"\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='additionalPrinterColumns', type=d.T.array)]),
      withAdditionalPrinterColumnsMixin(additionalPrinterColumns): { additionalPrinterColumns+: if std.isArray(v=additionalPrinterColumns) then additionalPrinterColumns else [additionalPrinterColumns] },
      '#withDeprecated':: d.fn(help='"The deprecated field specifies that this version is deprecated and should\\nnot be used."', args=[d.arg(name='deprecated', type=d.T.boolean)]),
      withDeprecated(deprecated): { deprecated: deprecated },
      '#withDeprecationWarning':: d.fn(help='"DeprecationWarning specifies the message that should be shown to the user\\nwhen using this version."', args=[d.arg(name='deprecationWarning', type=d.T.string)]),
      withDeprecationWarning(deprecationWarning): { deprecationWarning: deprecationWarning },
      '#withName':: d.fn(help='"Name of this version, e.g. “v1”, “v2beta1”, etc. Composite resources are\\nserved under this version at `/apis/<group>/<version>/...` if `served` is\\ntrue."', args=[d.arg(name='name', type=d.T.string)]),
      withName(name): { name: name },
      '#withReferenceable':: d.fn(help="\"Referenceable specifies that this version may be referenced by a\\nComposition in order to configure which resources an XR may be composed\\nof. Exactly one version must be marked as referenceable; all Compositions\\nmust target only the referenceable version. The referenceable version\\nmust be served. It's mapped to the CRD's `spec.versions[*].storage` field.\"", args=[d.arg(name='referenceable', type=d.T.boolean)]),
      withReferenceable(referenceable): { referenceable: referenceable },
      '#withServed':: d.fn(help='"Served specifies that this version should be served via REST APIs."', args=[d.arg(name='served', type=d.T.boolean)]),
      withServed(served): { served: served },
    },
    '#withConnectionSecretKeys':: d.fn(help='"ConnectionSecretKeys is the list of keys that will be exposed to the end\\nuser of the defined kind.\\nIf the list is empty, all keys will be published."', args=[d.arg(name='connectionSecretKeys', type=d.T.array)]),
    withConnectionSecretKeys(connectionSecretKeys): { spec+: { connectionSecretKeys: if std.isArray(v=connectionSecretKeys) then connectionSecretKeys else [connectionSecretKeys] } },
    '#withConnectionSecretKeysMixin':: d.fn(help='"ConnectionSecretKeys is the list of keys that will be exposed to the end\\nuser of the defined kind.\\nIf the list is empty, all keys will be published."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='connectionSecretKeys', type=d.T.array)]),
    withConnectionSecretKeysMixin(connectionSecretKeys): { spec+: { connectionSecretKeys+: if std.isArray(v=connectionSecretKeys) then connectionSecretKeys else [connectionSecretKeys] } },
    '#withDefaultCompositeDeletePolicy':: d.fn(help='"DefaultCompositeDeletePolicy is the policy used when deleting the Composite\\nthat is associated with the Claim if no policy has been specified."', args=[d.arg(name='defaultCompositeDeletePolicy', type=d.T.string)]),
    withDefaultCompositeDeletePolicy(defaultCompositeDeletePolicy): { spec+: { defaultCompositeDeletePolicy: defaultCompositeDeletePolicy } },
    '#withDefaultCompositionUpdatePolicy':: d.fn(help='"DefaultCompositionUpdatePolicy is the policy used when updating composites after a new\\nComposition Revision has been created if no policy has been specified on the composite."', args=[d.arg(name='defaultCompositionUpdatePolicy', type=d.T.string)]),
    withDefaultCompositionUpdatePolicy(defaultCompositionUpdatePolicy): { spec+: { defaultCompositionUpdatePolicy: defaultCompositionUpdatePolicy } },
    '#withGroup':: d.fn(help='"Group specifies the API group of the defined composite resource.\\nComposite resources are served under `/apis/<group>/...`. Must match the\\nname of the XRD (in the form `<names.plural>.<group>`)."', args=[d.arg(name='group', type=d.T.string)]),
    withGroup(group): { spec+: { group: group } },
    '#withVersions':: d.fn(help='"Versions is the list of all API versions of the defined composite\\nresource. Version names are used to compute the order in which served\\nversions are listed in API discovery. If the version string is\\n\\"kube-like\\", it will sort above non \\"kube-like\\" version strings, which\\nare ordered lexicographically. \\"Kube-like\\" versions start with a \\"v\\",\\nthen are followed by a number (the major version), then optionally the\\nstring \\"alpha\\" or \\"beta\\" and another number (the minor version). These\\nare sorted first by GA > beta > alpha (where GA is a version with no\\nsuffix such as beta or alpha), and then by comparing major version, then\\nminor version. An example sorted list of versions: v10, v2, v1, v11beta2,\\nv10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10."', args=[d.arg(name='versions', type=d.T.array)]),
    withVersions(versions): { spec+: { versions: if std.isArray(v=versions) then versions else [versions] } },
    '#withVersionsMixin':: d.fn(help='"Versions is the list of all API versions of the defined composite\\nresource. Version names are used to compute the order in which served\\nversions are listed in API discovery. If the version string is\\n\\"kube-like\\", it will sort above non \\"kube-like\\" version strings, which\\nare ordered lexicographically. \\"Kube-like\\" versions start with a \\"v\\",\\nthen are followed by a number (the major version), then optionally the\\nstring \\"alpha\\" or \\"beta\\" and another number (the minor version). These\\nare sorted first by GA > beta > alpha (where GA is a version with no\\nsuffix such as beta or alpha), and then by comparing major version, then\\nminor version. An example sorted list of versions: v10, v2, v1, v11beta2,\\nv10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='versions', type=d.T.array)]),
    withVersionsMixin(versions): { spec+: { versions+: if std.isArray(v=versions) then versions else [versions] } },
  },
  '#mixin': 'ignore',
  mixin: self,
}
