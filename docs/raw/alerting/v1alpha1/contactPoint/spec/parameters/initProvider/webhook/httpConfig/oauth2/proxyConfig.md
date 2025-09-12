# proxyConfig



## Index

* [`fn withNoProxy(value)`](#fn-withnoproxy)
* [`fn withProxyConnectHeader(value)`](#fn-withproxyconnectheader)
* [`fn withProxyConnectHeaderMixin(value)`](#fn-withproxyconnectheadermixin)
* [`fn withProxyFromEnvironment(value=true)`](#fn-withproxyfromenvironment)
* [`fn withProxyUrl(value)`](#fn-withproxyurl)

## Fields

### fn withNoProxy

```jsonnet
withNoProxy(value)
```

PARAMETERS:

* **value** (`string`)

separated list of addresses that should not use a proxy.
Comma-separated list of addresses that should not use a proxy.
### fn withProxyConnectHeader

```jsonnet
withProxyConnectHeader(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Optional headers to send to proxies during CONNECT requests.
Optional headers to send to proxies during CONNECT requests.
### fn withProxyConnectHeaderMixin

```jsonnet
withProxyConnectHeaderMixin(value)
```

PARAMETERS:

* **value** (`object`)

(Map of String) Optional headers to send to proxies during CONNECT requests.
Optional headers to send to proxies during CONNECT requests.
### fn withProxyFromEnvironment

```jsonnet
withProxyFromEnvironment(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Use environment HTTP_PROXY, HTTPS_PROXY and NO_PROXY to determine proxies. Defaults to false.
Use environment HTTP_PROXY, HTTPS_PROXY and NO_PROXY to determine proxies. Defaults to `false`.
### fn withProxyUrl

```jsonnet
withProxyUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) HTTP proxy server to use to connect to the targets.
HTTP proxy server to use to connect to the targets.