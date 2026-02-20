# grpc



## Subpackages

* [tlsConfig](tlsConfig.md)

## Index

* [`fn new(tls=true, ipVersion="V4")`](#fn-new)
* [`fn withIpVersion(value)`](#fn-withipversion)
* [`fn withService(value)`](#fn-withservice)
* [`fn withTls(value=true)`](#fn-withtls)
* [`fn withTlsConfig(value)`](#fn-withtlsconfig)
* [`fn withTlsConfigMixin(value)`](#fn-withtlsconfigmixin)

## Fields

### fn new

```jsonnet
new(tls=true, ipVersion="V4")
```

PARAMETERS:

* **tls** (`bool`)
   - default value: `true`
* **ipVersion** (`string`)
   - default value: `"V4"`

`new` provides the settings for a gRPC check.

### fn withIpVersion

```jsonnet
withIpVersion(value)
```

PARAMETERS:

* **value** (`string`)

(String) Options are V4, V6, Any. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The Any value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to V4.
Options are `V4`, `V6`, `Any`. Specifies whether the corresponding check will be performed using IPv4 or IPv6. The `Any` value indicates that IPv6 should be used, falling back to IPv4 if that's not available. Defaults to `V4`.
### fn withService

```jsonnet
withService(value)
```

PARAMETERS:

* **value** (`string`)

(String) gRPC service.
gRPC service.
### fn withTls

```jsonnet
withTls(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

(Boolean) Whether or not TLS is used when the connection is initiated. Defaults to false.
Whether or not TLS is used when the connection is initiated. Defaults to `false`.
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