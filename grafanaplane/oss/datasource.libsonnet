local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      dataSource = raw.oss.v1alpha1.dataSource,
      forProvider = dataSource.spec.parameters.forProvider;

{
  '#': d.package.newSub('oss.datasource', ''),

  '#new': d.func.new(
    |||
      `new` configures a datasource.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('type', d.T.string),
    ]
  ),
  new(name, type):
    local uid = xtd.ascii.stringToRFC1123(name);
    dataSource.new(uid)
    + forProvider.withName(name)
    + forProvider.withType(type)
    + forProvider.withUid(uid)
    + dataSource.spec.parameters.withExternalName(uid),

  '#withExternalName': d.func.new(
    '`withExternalName` can be used to import an existing datasource.',
    [d.argument.new('externalName', d.T.string)]
  ),
  withExternalName(externalName):
    dataSource.spec.parameters.withExternalName(externalName),

  '#withJsonData': d.func.new(
    |||
      `withJsonData` configures options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
    |||,
    [d.argument.new('configObject', d.T.object)],
  ),
  withJsonData(configObject):
    forProvider.withJsonDataEncoded(std.manifestJson(configObject)),

  '#withSecureJsonDataSecretRef': d.func.new(
    |||
      `withSecureJsonDataSecretRef` references a secret that configures sensitive options for the data source. To figure out what options a datasource has available, see its docs or inspect the network data when saving it from the Grafana UI. Note that keys in this map are usually camelCased.
    |||,
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
      d.argument.new('key', d.T.string),
    ],
  ),
  withSecureJsonDataSecretRef(name, namespace, key):
    forProvider.secureJsonDataEncodedSecretRef.withName(key)
    + forProvider.secureJsonDataEncodedSecretRef.withNamespace(namespace)
    + forProvider.secureJsonDataEncodedSecretRef.withKey(key),

  '#withBasicAuth': d.func.new(
    |||
      `withBasicAuth` enables basic authentication for the data source, not that this'll likely expect secret referenced with `withSecureJsonDataSecretRef()` that has a key `basicAuthPassword`.
    |||,
    [d.argument.new('username', d.T.string)]
  ),
  withBasicAuth(username):
    forProvider.withBasicAuthEnabled()
    + forProvider.withBasicAuthUsername(username),
}
