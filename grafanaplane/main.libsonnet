local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#':
    d.package.new(
      'grafanaplane',
      'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane',
      |||
        This repository provides a set of Crossplane Configurations packages and and accompanying Jsonnet library.

        The Configuration packages provide a set of (namespaced) composition/XRD pairs that map directly to their non-namespaced Managed resources equivalents.

        The library consists of two parts, the manually written functions to get started quicly and the full library in `zz/`. They can be used in combination with each other.

        Most of this library is generated: the Compositions/XRDs packages, Configurations and the library in `zz/`.
      |||,
      'main.libsonnet',
      import 'zz/version.libsonnet',
    )
    + d.package.withUsageTemplate(
      @"local %(name)s = import '%(import)s';"
    ),

  raw:
    (import './zz/main.libsonnet')
    + { '#': d.package.newSub('raw', "Generated libraries for all the compositions in case the manually curated functions aren't sufficient.") },

  configurations:
    local configurations = import './zz/configurations.libsonnet';
    configurations
    + {
      '#':
        d.package.newSub(
          'configurations',
          |||
            This package contains Configurations for the generated Compositions and CompositeResourceDefinitions (XRD). A single configuration imports compositions for a resource group. For more granular selection of XRDs, consider using the manifests in 'packages/' on the root of this repository.

            The Configurations can be imported like this:

            ```jsonnet
            local grafanaplane = import 'github.com/grafana/grafana-crossplane-libsonnet/grafanaplane/main.libsonnet';
            local configurations = grafanaplane.configurations;

            [
            %s
            ]
            ```
          |||
          % std.join(
            ',\n',
            std.map(
              function(item) '  configuration.' + item,
              std.objectFields(configurations)
            )
          )
        ),
    },

  global: import './global.libsonnet',
  cloud: import './cloud.libsonnet',
  oss: import './oss.libsonnet',
  oncall: import './oncall/main.libsonnet',
  sm: import './sm.libsonnet',
  alerting: import './alerting/main.libsonnet',
}
