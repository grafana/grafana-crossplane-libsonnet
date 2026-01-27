local cngen = import 'github.com/Duologic/crossplane-namespaced-libsonnet/main.libsonnet';

local crds = import './crds.libsonnet';

// Exclude because resource name became too long, might not be needed as part of this library with the advent of namespaced MR in Crossplane v2
local exclude = [
  'awsresourcemetadatascrapejobs.cloudprovider.grafana.crossplane.io',
  'privatedatasourceconnectnetworktokens.cloud.grafana.crossplane.io',
];

// XRD metadata.name consists of `plural+group`, for some resources this became longer than 63 characters, which resulted in this error:
//   'cannot establish control of object: Composition.apiextensions.crossplane.io "stackserviceaccounttoken-namespaced" is invalid: metadata.labels: Invalid value:"xstackserviceaccounttokens.cloud.grafana.crossplane.io.namespaced": must be no more than 63 characters'
local renameGroup(obj) =
  local name = std.strReplace(obj.definition.metadata.name, 'crossplane.io', 'net');
  assert std.length(name) <= 63 : 'CompositeResourceDefinition names must be no more than 63 characters: ' + name;
  obj + {
    definition+: {
      metadata+: {
        name: name,
      },
      spec+: {
        group: std.strReplace(super.group, 'crossplane.io', 'net'),
      },
    },
  };

local addProbeNamesToSMCheck(obj) =
  if obj.definition.metadata.name == 'xchecks.sm.grafana.net.namespaced'
  then obj + {
    definition+: {
      local versions = super.spec.versions,
      spec+: {
        versions:
          local patch = {
            properties+: {
              probes+: {
                items: {
                  // ref: https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#intorstring
                  'x-kubernetes-int-or-string': true,
                  anyOf: [
                    { type: 'integer' },
                    { type: 'string' },
                  ],
                },
              },
            },
          };
          std.map(
            function(version)
              version + {
                schema+: {
                  openAPIV3Schema+: {
                    properties+: {
                      spec+: {
                        properties+: {
                          parameters+: {
                            properties+: {
                              forProvider+: patch,
                              initProvider+: patch,
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
            versions,
          ),
      },
    },
  }
  else obj;

std.foldr(
  std.map,
  [
    addProbeNamesToSMCheck,
    renameGroup,
    cngen.fromCRD,
  ],
  std.filter(
    function(crd)
      !std.member(exclude, crd.metadata.name),
    crds,
  )
)
