LIBRARY_VERSION:=0.0.4
PROVIDER_VERSION:=0.21.0
JSONNET_BIN:=jrsonnet

VENDOR_DEPTHS:=$(shell find generator/vendor -type f)

grafanaplane: grafanaplane/raw.libsonnet grafanaplane/compositions.libsonnet

generator/crds.yaml:
	cd generator && \
	curl -sLO https://github.com/grafana/crossplane-provider-grafana/releases/download/v$(PROVIDER_VERSION)/crds.yaml

grafanaplane/raw.libsonnet: generator/main.libsonnet generator/namespaced.libsonnet generator/crds.yaml $(VENDOR_DEPTHS)
	FILES=$$($(JSONNET_BIN) -S -c -m grafanaplane -J generator/vendor -A 'version=$(LIBRARY_VERSION)-$(PROVIDER_VERSION)' generator/main.libsonnet) && \
	xargs -n1 jsonnetfmt -i <<< "$${FILES}"

grafanaplane/compositions.libsonnet: generator/compositions.libsonnet generator/namespaced.libsonnet generator/crds.yaml $(VENDOR_DEPTHS)
	$(JSONNET_BIN) -J generator/vendor generator/compositions.libsonnet | jsonnetfmt - > grafanaplane/compositions.libsonnet

docs: $(shell find grafanaplane/ -type f)
	@rm -rf docs/
	@$(JSONNET_BIN) \
		-J generator/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "grafanaplane/main.libsonnet")'

.PHONY: tag
tag:
	git tag $(LIBRARY_VERSION)-$(PROVIDER_VERSION)
