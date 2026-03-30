local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';
local xtd = import 'github.com/jsonnet-libs/xtd/main.libsonnet';

local global = import '../global.libsonnet';
local main = import './main.libsonnet';
local raw = import '../zz/main.libsonnet';

local validStackSlug(slug) =
  xtd.ascii.isLower(slug[0])
  && std.all(
    std.map(
      function(c)
        xtd.ascii.isNumber(c)
        || xtd.ascii.isLower(c),
      std.stringChars(slug)
    )
  );

{
  '#': d.package.newSub('cloud.stack', ''),

  '#new': d.func.new(
    '`new` creates a new Grafana Cloud Stack.',
    [
      d.argument.new('name', d.T.string),
      d.argument.new('namespace', d.T.string),
      d.argument.new('cloudProviderConfigName', d.T.string),
      d.argument.new('secretName', d.T.string, default='<name>-providerconfig-token'),
    ]
  ),
  new(name, namespace, cloudProviderConfigName, secretName=name + '-providerconfig-token'): {
    stack:
      assert validStackSlug(name) :
             'The slug/name needs to be a valid subdomain. One word. Only lowercase letters and numbers allowed. Must start with a letter. No dots, dashes, underscores, or spaces.';
      raw.cloud.v1alpha1.stack.new(name)
      + raw.cloud.v1alpha1.stack.spec.parameters.providerConfigRef.withName(cloudProviderConfigName)
      + raw.cloud.v1alpha1.stack.spec.parameters.withExternalName(name)
      + raw.cloud.v1alpha1.stack.spec.parameters.forProvider.withName(name)
      + raw.cloud.v1alpha1.stack.spec.parameters.forProvider.withSlug(name),

    serviceAccount: main.stackServiceAccount.fromStackResource(self.stack, namespace),
    token: main.stackServiceAccountToken.fromStackServiceAccountResource(self.serviceAccount, namespace, secretName),
    grafanaProviderConfig: global.providerConfig.new(name + '-grafana', secretName, namespace, 'instanceCredentials'),
  },
}
