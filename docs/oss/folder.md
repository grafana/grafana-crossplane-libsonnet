# oss.folder



## Index

* [`fn new(title)`](#fn-new)
* [`fn withDestroyIfNotEmpty(value=true)`](#fn-withdestroyifnotempty)
* [`fn withExternalName(externalName)`](#fn-withexternalname)
* [`fn withName(name)`](#fn-withname)
* [`fn withParentFolder(folderResource)`](#fn-withparentfolder)
* [`fn withTitle(title)`](#fn-withtitle)
* [`fn withUid(uid)`](#fn-withuid)

## Fields

### fn new

```jsonnet
new(title)
```

PARAMETERS:

* **title** (`string`)

`new` creates a folder.

### fn withDestroyIfNotEmpty

```jsonnet
withDestroyIfNotEmpty(value=true)
```

PARAMETERS:

* **value** (`bool`)
   - default value: `true`

`withDestroyIfNotEmpty` will turn off the protection that prevents a folder from being deleted when it still has dashboards in it. Turning it off will remove the folder regardless if it still contains dashboards.
### fn withExternalName

```jsonnet
withExternalName(externalName)
```

PARAMETERS:

* **externalName** (`string`)

`withExternalName` can be used to import an existing folder, it can be either a UID or a numeric ID.
### fn withName

```jsonnet
withName(name)
```

PARAMETERS:

* **name** (`string`)

`withName` sets Kubernetes object name
### fn withParentFolder

```jsonnet
withParentFolder(folderResource)
```

PARAMETERS:

* **folderResource** (`object`)

`withParentFolder` sets the parent folder. `folderResource` can be created by `folder.new()`
### fn withTitle

```jsonnet
withTitle(title)
```

PARAMETERS:

* **title** (`string`)

`withTitle` sets the human readable title in the UI
### fn withUid

```jsonnet
withUid(uid)
```

PARAMETERS:

* **uid** (`string`)

`withUid` sets the identifier visible in the URL