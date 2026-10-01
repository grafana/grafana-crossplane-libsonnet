# Development

## Contributing

Code contributions are done through [GitHub Pull requests](https://github.com/grafana/grafana-crossplane-libsonnet/pulls), each pull request requires CI to pass and at least one review. We follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), pull requests will generally be merged with a squash merge.

> **Hint**: Because the generation process changes a lot of code, it is highly encouraged to put the generated code into a separate commit to make reviewing easier.
>
> If the branch diverges from `main`, then do a rebase and drop the commit with the generated code, followed by regenerating everything into a new commit.

Bugs or feature requests can go into [GitHub Issues](https://github.com/grafana/grafana-crossplane-libsonnet/issues), other questions can be asked through [GitHub Discussions](https://github.com/grafana/grafana-crossplane-libsonnet/discussions).

## Generation process

`make build` will generate the libraries and packages, including the docs in `docs/`.

## Releasing

Releases are cut by pushing a `v*` semver tag (e.g. `v1.8.0`) on `main`. Tags are the package version: `make push` uses `git describe --tags` as the xpkg tag.

1. Make sure `main` is green and the generated code is current: `make build` should leave `git status` clean.
2. Pick the next version from the latest tag (`git tag --sort=-v:refname | head`): breaking change → major, `feat` → minor, `fix` → patch.
3. Tag the commit and push the tag:

   ```sh
   git tag vX.Y.Z <sha>
   git push origin vX.Y.Z
   ```

4. The [Push workflow](.github/workflows/push.yaml) then:
   - builds and pushes each package in `packages/` to `ghcr.io/grafana/crossplane/<package>:vX.Y.Z`
   - triggers the Argo workflow `grafana-crossplane-libsonnet-packages` in the `platform-monitoring-cd` namespace with `dockertag=vX.Y.Z`
5. Create the release for the tag in the GitHub UI: [Releases → Draft a new release](https://github.com/grafana/grafana-crossplane-libsonnet/releases/new), select the `vX.Y.Z` tag and publish.
6. Verify the workflow run succeeded in [GitHub Actions](https://github.com/grafana/grafana-crossplane-libsonnet/actions) and that the packages exist in ghcr.io with the new tag.

## Directory layout

`generator/` is where the code generator lives.

`grafanaplane/` is the actual library.

`grafanaplane/zz/`, `packages/` and `docs/` are completely generated, do not edit these, changes will be overwritten by the generation process.
