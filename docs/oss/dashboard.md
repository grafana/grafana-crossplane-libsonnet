# oss.dashboard



## Index

* [`fn new(name, dashboardObject, folderResource)`](#fn-new)

## Fields

### fn new

```jsonnet
new(name, dashboardObject, folderResource)
```

PARAMETERS:

* **name** (`string`)
* **dashboardObject** (`object`)
* **folderResource** (`object`)

`new` creates a dashboard.

- `name` is the Kubernetes object name
- `dashboardObject` is the actual JSON object of the dashboard
- `folderResource` can be created by `folder.new()`
