local crossplane = import 'github.com/jsonnet-libs/crossplane-libsonnet/crossplane/1.17/main.libsonnet';
local fn = import 'github.com/jsonnet-libs/crossplane-libsonnet/function-patch-and-transform/0.7/main.libsonnet';

local xrd = crossplane.apiextensions.v1.compositeResourceDefinition;
local composition = crossplane.apiextensions.v1.composition;

local patch = crossplane.util.patch;
local xversion = crossplane.util.version;
local resource = crossplane.util.resource;

{
  local root = self,

  createPatches(properties, parents=[])::
    std.foldl(
      function(acc, k)
        local property = properties[k];
        acc +
        if property.type == 'object'
           && 'properties' in property
        then self.createPatches(property.properties, parents + [k])
        else [
          patch.fromCompositeFieldPath(
            std.join('.', ['spec', 'parameters'] + parents + [k]),
            std.join('.', ['spec'] + parents + [k])
          ),
        ],
      std.objectFields(properties),
      []
    ),

  fromCRD(crd, versionName=''):: {
    local this = self,

    local version = (
      if versionName != ''
      then std.filter(function(x) x.name == versionName, crd.spec.versions)[0]
      else std.filter(function(x) x.served, crd.spec.versions)[0]
    ),
    local spec = version.schema.openAPIV3Schema.properties.spec,

    version::
      xversion.new(version.name)
      + xversion.withPropertiesMixin({
        spec+: {
          properties+: {
            parameters+:
              spec
              + {
                properties+: {
                  externalName: {
                    type: 'string',
                    description: |||
                      The name of the managed resource inside the Provider.
                      By default Providers give external resources the same name as the Kubernetes object. A provider uses the external name to lookup a managed resource in an external system. The provider looks up the resource in the external system to determine if it exists, and if it matches the managed resource’s desired state. If the provider can’t find the resource, it creates it.

                      Docs: https://docs.crossplane.io/latest/concepts/managed-resources/#naming-external-resources
                    |||,
                  },
                  selectorLabel: {
                    type: 'string',
                    description: 'Configure a custom label for use with selector.matchLabels.',
                  },
                },
              },
          },
        },
      }),

    fakeInstance:: {
      new(n): {
        kind: crd.spec.names.kind,
        apiVersion: crd.spec.group + '/' + version.name,
      },
    },

    local fnresources =
      fn.pt.v1beta1.resources
      + {
        new(): {
          apiVersion: 'pt.fn.crossplane.io/v1beta1',
          kind: 'Resources',
        },
      },
    resource::
      fnresources.new()
      + fnresources.withResources([
        resource.new(
          crd.spec.names.singular,
          self.fakeInstance,
        )
        + resource.withExternalNamePatch()
        + resource.withPatchesMixin([
          crossplane.util.patch.fromCompositeFieldPath(
            'spec.parameters.selectorLabel',
            'metadata.labels["selector"]',
          ),
        ])
        + resource.withPatchesMixin(
          root.createPatches(spec.properties)
        ),
      ]),

    local compositionName = crd.spec.names.singular + '-namespaced',

    definition:
      xrd.new(
        kind='X' + crd.spec.names.kind,
        plural='x' + crd.spec.names.plural,
        group=crd.spec.group + '.namespaced',
      )
      + xrd.withClaimNames(
        kind=crd.spec.names.kind,
        plural=crd.spec.names.plural,
      )
      + xrd.spec.defaultCompositionRef.withName(compositionName)
      + xrd.spec.withVersionsMixin([
        self.version,
      ]),

    composition:
      composition.new(compositionName)
      + composition.metadata.withAnnotations({
        // Tell Tanka to not set metadata.namespace.
        'tanka.dev/namespaced': 'false',
      })
      + composition.metadata.withLabels({
        'crossplane.io/xrd': this.definition.metadata.name,
      })
      + composition.spec.compositeTypeRef.withApiVersion(
        self.definition.spec.group + '/' + self.version.name
      )
      + composition.spec.compositeTypeRef.withKind(
        self.definition.spec.names.kind
      )
      + composition.spec.withMode('Pipeline')
      + composition.spec.withPipeline([
        composition.spec.pipeline.functionRef.withName('function-patch-and-transform')
        + composition.spec.pipeline.withStep('patch-and-transform')
        + composition.spec.pipeline.withInput(
          self.resource,
        ),
      ]),
  },
}
