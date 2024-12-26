# Development

## Contributing

Code contributions are done through [GitHub Pull requests](https://github.com/grafana/grafana-crossplane-libsonnet/pulls), each pull request requires CI to pass and at least one review. We follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), pull requests will generally be merged with a squash merge.

> **Hint**: Because the generation process changes a lot of code, it is highly encouraged to put the generated code into a separate commit to make reviewing easier.
>
> If the branch diverges from `main`, then do a rebase and drop the commit with the generated code, followed by regenerating everything into a new commit.

Bugs or feature requests can go into [GitHub Issues](https://github.com/grafana/grafana-crossplane-libsonnet/issues), other questions can be asked through [GitHub Discussions](https://github.com/grafana/grafana-crossplane-libsonnet/discussions).

## Generation process

`make build` will generate the libraries and packages, including the docs in `docs/`.

## Directory layout

`generator/` is where the code generator lives.

`grafanaplane/` is the actual library.

`grafanaplane/zz/`, `packages/` and `docs/` are completely generated, do not edit these, changes will be overwritten by the generation process.
