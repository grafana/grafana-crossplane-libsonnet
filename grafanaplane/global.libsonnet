local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import './zz/main.libsonnet';

{
  '#': d.package.newSub('global', 'Generic functions to configure the provider.'),

  providerConfig: {
    '#new': d.func.new(
      '`new` creates a ProviderConfig.',
      [
        d.argument.new('name', d.T.string),
        d.argument.new('secretName', d.T.string),
        d.argument.new('secretNamespace', d.T.string),
        d.argument.new('secretKey', d.T.string),
      ]
    ),
    new(name, secretName, secretNamespace, secretKey):
      raw.nogroup.v1beta1.providerConfig.new(name)
      + raw.nogroup.v1beta1.providerConfig.metadata.withAnnotations({
        'tanka.dev/namespaced': 'false',
      })
      + raw.nogroup.v1beta1.providerConfig.spec.credentials.withSource('Secret')
      + raw.nogroup.v1beta1.providerConfig.spec.credentials.secretRef.withNamespace(secretNamespace)
      + raw.nogroup.v1beta1.providerConfig.spec.credentials.secretRef.withName(secretName)
      + raw.nogroup.v1beta1.providerConfig.spec.credentials.secretRef.withKey(secretKey),
  },
}
