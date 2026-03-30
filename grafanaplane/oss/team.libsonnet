local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local raw = import '../zz/main.libsonnet',
      team = raw.oss.v1alpha1.team,
      forProvider = team.spec.parameters.forProvider;

{
  '#': d.package.newSub('oss.team', ''),

  '#new': d.func.new(
    '`new` creates a team.',
    [d.argument.new('name', d.T.string)]
  ),
  new(name):
    team.new(name)
    + team.spec.parameters.withExternalName(name)
    + forProvider.withName(name),

  '#withExternalName': d.func.new(
    '`withExternalName` can be used to import an existing team.',
    [d.argument.new('externalName', d.T.string)]
  ),
  withExternalName(externalName):
    team.spec.parameters.withExternalName(externalName),

  '#withMembers':
    d.func.new(
      |||
        `withMembers` configures the team members, it expects a set of email addresses corresponding to users who should be given membership to the team.

        Note: users specified here must already exist in Grafana.
      |||,
      [d.argument.fromSchema('members', { type: 'array', items: { type: 'string' } })]
    ),
  withMembers(members):
    forProvider.withMembers(members),
}
