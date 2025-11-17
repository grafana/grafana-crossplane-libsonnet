# oncall.integration



## Index

* [`fn new(name, namespace, type, defaultChain)`](#fn-new)
* [`fn withClaimName(claimName)`](#fn-withclaimname)
* [`fn withRoutes(routes)`](#fn-withroutes)
* [`fn withSlackChannelId(value)`](#fn-withslackchannelid)
* [`fn withTeamId(value)`](#fn-withteamid)
* [`obj route`](#obj-route)
  * [`fn new(routingRegex)`](#fn-routenew)
  * [`fn withEscalationChain(name, namespace)`](#fn-routewithescalationchain)

## Fields

### fn new

```jsonnet
new(name, namespace, type, defaultChain)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)
* **type** (`string`)
* **defaultChain** (`object`)

`new` creates an Integration.

Parameters:
  - `name` is a display-friendly string.
  - `namespace` is the namespace for the Integration.
  - `type` is the type of Integration.
  - `defaultChain` is the default EscalationChain claim.

### fn withClaimName

```jsonnet
withClaimName(claimName)
```

PARAMETERS:

* **claimName** (`string`)

`withClaimName` sets the resource name for an Integration
### fn withRoutes

```jsonnet
withRoutes(routes)
```

PARAMETERS:

* **routes** (`array`)

`withRoute` configures Route resources connecting this Integration with Escalation Chains.

Parameters:
  - `routes` is an array of Routes to be evaluated in order.

If routes do not specify an Escalation Chain to route to, the default chain for this Integration will be used.

### fn withSlackChannelId

```jsonnet
withSlackChannelId(value)
```

PARAMETERS:

* **value** (`string`)

(String) Slack channel id. Alerts will be directed to this channel in Slack.
Slack channel id. Alerts will be directed to this channel in Slack.
### fn withTeamId

```jsonnet
withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The ID of the OnCall team (using the grafana_oncall_team datasource).
The ID of the OnCall team (using the `grafana_oncall_team` datasource).
### obj route


#### fn route.new

```jsonnet
route.new(routingRegex)
```

PARAMETERS:

* **routingRegex** (`string`)

`new` configures a Route with a given `routingRegex`.

#### fn route.withEscalationChain

```jsonnet
route.withEscalationChain(name, namespace)
```

PARAMETERS:

* **name** (`string`)
* **namespace** (`string`)

`withEscalationChain` configures a Route with a destination Escalation Chain.
Parameters:
  - `name` is the name of the escalation chain claim.
  - `namespace` is the namespace of the escalation chain claim.
