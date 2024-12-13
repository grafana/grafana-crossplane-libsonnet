# http



## Subpackages

* [basicAuth](basicAuth.md)
* [failIfHeaderMatchesRegexp](failIfHeaderMatchesRegexp.md)
* [failIfHeaderNotMatchesRegexp](failIfHeaderNotMatchesRegexp.md)
* [tlsConfig](tlsConfig.md)

## Index

* [`fn new(validStatusCodes=[200])`](#fn-new)
* [`fn withBasicAuth(value)`](#fn-withbasicauth)
* [`fn withBasicAuthMixin(value)`](#fn-withbasicauthmixin)
* [`fn withBearerTokenSecretRef(value)`](#fn-withbearertokensecretref)
* [`fn withBearerTokenSecretRefMixin(value)`](#fn-withbearertokensecretrefmixin)
* [`fn withBody(value)`](#fn-withbody)
* [`fn withCacheBustingQueryParamName(value)`](#fn-withcachebustingqueryparamname)
* [`fn withCompression(value)`](#fn-withcompression)
* [`fn withFailIfBodyMatchesRegexp(value)`](#fn-withfailifbodymatchesregexp)
* [`fn withFailIfBodyMatchesRegexpMixin(value)`](#fn-withfailifbodymatchesregexpmixin)
* [`fn withFailIfBodyNotMatchesRegexp(value)`](#fn-withfailifbodynotmatchesregexp)
* [`fn withFailIfBodyNotMatchesRegexpMixin(value)`](#fn-withfailifbodynotmatchesregexpmixin)
* [`fn withFailIfHeaderMatchesRegexp(value)`](#fn-withfailifheadermatchesregexp)
* [`fn withFailIfHeaderMatchesRegexpMixin(value)`](#fn-withfailifheadermatchesregexpmixin)
* [`fn withFailIfHeaderNotMatchesRegexp(value)`](#fn-withfailifheadernotmatchesregexp)
* [`fn withFailIfHeaderNotMatchesRegexpMixin(value)`](#fn-withfailifheadernotmatchesregexpmixin)
* [`fn withFailIfNotSsl(value=true)`](#fn-withfailifnotssl)
* [`fn withFailIfSsl(value=true)`](#fn-withfailifssl)
* [`fn withHeaders(value)`](#fn-withheaders)
* [`fn withHeadersMixin(value)`](#fn-withheadersmixin)
* [`fn withIpVersion(value)`](#fn-withipversion)
* [`fn withMethod(value)`](#fn-withmethod)
* [`fn withNoFollowRedirects(value=true)`](#fn-withnofollowredirects)
* [`fn withProxyConnectHeaders(value)`](#fn-withproxyconnectheaders)
* [`fn withProxyConnectHeadersMixin(value)`](#fn-withproxyconnectheadersmixin)
* [`fn withProxyUrl(value)`](#fn-withproxyurl)
* [`fn withTlsConfig(value)`](#fn-withtlsconfig)
* [`fn withTlsConfigMixin(value)`](#fn-withtlsconfigmixin)
* [`fn withValidHttpVersions(value)`](#fn-withvalidhttpversions)
* [`fn withValidHttpVersionsMixin(value)`](#fn-withvalidhttpversionsmixin)
* [`fn withValidStatusCodes(value)`](#fn-withvalidstatuscodes)
* [`fn withValidStatusCodesMixin(value)`](#fn-withvalidstatuscodesmixin)
* [`obj bearerTokenSecretRef`](#obj-bearertokensecretref)
  * [`fn withKey(value)`](#fn-bearertokensecretrefwithkey)
  * [`fn withName(value)`](#fn-bearertokensecretrefwithname)
  * [`fn withNamespace(value)`](#fn-bearertokensecretrefwithnamespace)

## Fields

### fn new

```jsonnet
new(validStatusCodes=[200])
```

PARAMETERS:

* **validStatusCodes** (`array`)
   - default value: `[200]`

`new` provides the settings for a HTTP check.

### fn withBasicAuth

```jsonnet
withBasicAuth(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Basic auth settings. (see below for nested schema)
Basic auth settings.
### fn withBasicAuthMixin

```jsonnet
withBasicAuthMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) Basic auth settings. (see below for nested schema)
Basic auth settings.
### fn withBearerTokenSecretRef

```jsonnet
withBearerTokenSecretRef(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Token for use with bearer authorization header.
Token for use with bearer authorization header.
### fn withBearerTokenSecretRefMixin

```jsonnet
withBearerTokenSecretRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

(String, Sensitive) Token for use with bearer authorization header.
Token for use with bearer authorization header.
### fn withBody

```jsonnet
withBody(value)
```

PARAMETERS:

* **value** (`string`)

(String) The body of the HTTP request used in probe.
The body of the HTTP request used in probe.
### fn withCacheBustingQueryParamName

```jsonnet
withCacheBustingQueryParamName(value)
```

PARAMETERS:

* **value** (`string`)

(String) The name of the query parameter used to prevent the server from using a cached response. Each probe will assign a random value to this parameter each time a request is made.
The name of the query parameter used to prevent the server from using a cached response. Each probe will assign a random value to this parameter each time a request is made.
### fn withCompression

```jsonnet
withCompression(value)
```

PARAMETERS:

* **value** (`string`)

(String) Check fails if the response body is not compressed using this compression algorithm. One of none, identity, br, gzip, deflate.
Check fails if the response body is not compressed using this compression algorithm. One of `none`, `identity`, `br`, `gzip`, `deflate`.
### fn withFailIfBodyMatchesRegexp

```jsonnet
withFailIfBodyMatchesRegexp(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of regexes. If any match the response body, the check will fail.
List of regexes. If any match the response body, the check will fail.
### fn withFailIfBodyMatchesRegexpMixin

```jsonnet
withFailIfBodyMatchesRegexpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of regexes. If any match the response body, the check will fail.
List of regexes. If any match the response body, the check will fail.
### fn withFailIfBodyNotMatchesRegexp

```jsonnet
withFailIfBodyNotMatchesRegexp(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of regexes. If any do not match the response body, the check will fail.
List of regexes. If any do not match the response body, the check will fail.
### fn withFailIfBodyNotMatchesRegexpMixin

```jsonnet
withFailIfBodyNotMatchesRegexpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of regexes. If any do not match the response body, the check will fail.
List of regexes. If any do not match the response body, the check will fail.
### fn withFailIfHeaderMatchesRegexp

```jsonnet
withFailIfHeaderMatchesRegexp(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Check fails if headers match. (see below for nested schema)
Check fails if headers match.
### fn withFailIfHeaderMatchesRegexpMixin

```jsonnet
withFailIfHeaderMatchesRegexpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Check fails if headers match. (see below for nested schema)
Check fails if headers match.
### fn withFailIfHeaderNotMatchesRegexp

```jsonnet
withFailIfHeaderNotMatchesRegexp(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Check fails if headers do not match. (see below for nested schema)
Check fails if headers do not match.
### fn withFailIfHeaderNotMatchesRegexpMixin

```jsonnet
withFailIfHeaderNotMatchesRegexpMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set) Check fails if headers do not match. (see below for nested schema)
Check fails if headers do not match.
### fn withFailIfNotSsl

```jsonnet
withFailIfNotSsl(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Fail if SSL is not present. Defaults to false.
Fail if SSL is not present. Defaults to `false`.
### fn withFailIfSsl

```jsonnet
withFailIfSsl(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Fail if SSL is present. Defaults to false.
Fail if SSL is present. Defaults to `false`.
### fn withHeaders

```jsonnet
withHeaders(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) The HTTP headers set for the probe.
The HTTP headers set for the probe.
### fn withHeadersMixin

```jsonnet
withHeadersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) The HTTP headers set for the probe.
The HTTP headers set for the probe.
### fn withIpVersion

```jsonnet
withIpVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.
Options are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`.
### fn withMethod

```jsonnet
withMethod(value)
```

PARAMETERS:

* **value** (`string`)

(String) Request method. One of GET, CONNECT, DELETE, HEAD, OPTIONS, POST, PUT, TRACE Defaults to GET.
Request method. One of `GET`, `CONNECT`, `DELETE`, `HEAD`, `OPTIONS`, `POST`, `PUT`, `TRACE` Defaults to `GET`.
### fn withNoFollowRedirects

```jsonnet
withNoFollowRedirects(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Do not follow redirects. Defaults to false.
Do not follow redirects. Defaults to `false`.
### fn withProxyConnectHeaders

```jsonnet
withProxyConnectHeaders(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) The HTTP headers sent to the proxy URL
The HTTP headers sent to the proxy URL
### fn withProxyConnectHeadersMixin

```jsonnet
withProxyConnectHeadersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) The HTTP headers sent to the proxy URL
The HTTP headers sent to the proxy URL
### fn withProxyUrl

```jsonnet
withProxyUrl(value)
```

PARAMETERS:

* **value** (`string`)

(String) Proxy URL.
Proxy URL.
### fn withTlsConfig

```jsonnet
withTlsConfig(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) TLS config. (see below for nested schema)
TLS config.
### fn withTlsConfigMixin

```jsonnet
withTlsConfigMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Block Set, Max: 1) TLS config. (see below for nested schema)
TLS config.
### fn withValidHttpVersions

```jsonnet
withValidHttpVersions(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of valid HTTP versions. Options include HTTP/1.0, HTTP/1.1, HTTP/2.0
List of valid HTTP versions. Options include `HTTP/1.0`, `HTTP/1.1`, `HTTP/2.0`
### fn withValidHttpVersionsMixin

```jsonnet
withValidHttpVersionsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) List of valid HTTP versions. Options include HTTP/1.0, HTTP/1.1, HTTP/2.0
List of valid HTTP versions. Options include `HTTP/1.0`, `HTTP/1.1`, `HTTP/2.0`
### fn withValidStatusCodes

```jsonnet
withValidStatusCodes(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) Accepted status codes. If unset, defaults to 2xx.
Accepted status codes. If unset, defaults to 2xx.
### fn withValidStatusCodesMixin

```jsonnet
withValidStatusCodesMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) Accepted status codes. If unset, defaults to 2xx.
Accepted status codes. If unset, defaults to 2xx.
### obj bearerTokenSecretRef


#### fn bearerTokenSecretRef.withKey

```jsonnet
bearerTokenSecretRef.withKey(value)
```

PARAMETERS:

* **value** (`string`)

The key to select.
#### fn bearerTokenSecretRef.withName

```jsonnet
bearerTokenSecretRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
#### fn bearerTokenSecretRef.withNamespace

```jsonnet
bearerTokenSecretRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.