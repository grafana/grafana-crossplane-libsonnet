local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#':: d.package.newSub('util', 'internal utilities'),

  '#getName':: d.func.new(
    |||
      `getName` is supplied either a name or a manifest, and returns just the
      name as a string.
    |||,
    [d.argument.new('nameOrManifest', 'string|object')]
  ),
  getName(nameOrManifest)::
    if std.isString(nameOrManifest)
    then nameOrManifest
    else nameOrManifest.metadata.name,
}
