local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.14/main.libsonnet';

local configuration(key) =
  local conf = crossplane.pkg.v1.configuration;
  conf.new(key)
  + conf.spec.withPackage('xpkg.upbound.io/grafana/' + key);

{}
