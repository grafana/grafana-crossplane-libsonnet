# cloud.stackServiceAccountToken



## Index

* [`fn fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName)`](#fn-fromstackserviceaccountresource)

## Fields

### fn fromStackServiceAccountResource

```jsonnet
fromStackServiceAccountResource(stackServiceAccountResource, namespace, secretName)
```

PARAMETERS:

* **stackServiceAccountResource** (`object`)
* **namespace** (`string`)
* **secretName** (`string`)

`fromStackServiceAccountResource` creates a new service account token from a service account resource. The token will be written to `secretName`.