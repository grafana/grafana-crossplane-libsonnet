// Expose SM folder assignment without upgrading the schema snapshot for unrelated
// resources. folderUid is supported by provider-grafana v2.13.0 and later.
local withSMCheckFolderUid(crd) =
  if crd.metadata.name != 'checks.sm.grafana.crossplane.io' then crd
  else crd + {
    spec+: {
      versions: [
        version + {
          schema+: {
            openAPIV3Schema+: {
              properties+: {
                spec+: {
                  properties+: {
                    [provider]+: {
                      properties+: {
                        folderUid: {
                          type: 'string',
                          description: 'The UID of the folder containing the check. Requires provider-grafana v2.13.0 or later.',
                        },
                      },
                    }
                    for provider in ['forProvider', 'initProvider']
                  },
                },
              },
            },
          },
        }
        for version in crd.spec.versions
      ],
    },
  };

std.map(
  withSMCheckFolderUid,
  std.filter(
    function(crd)
      crd.spec.group != 'grafana.crossplane.io'
      && !std.endsWith(crd.spec.group, 'grafana.m.crossplane.io')
      && !std.endsWith(crd.spec.group, 'grafana.o.crossplane.io'),
    std.parseYaml(importstr './crds.yaml'),
  ),
)
