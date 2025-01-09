LIBRARY_VERSION:=0.5.1
PROVIDER_VERSION:=0.22.0
JSONNET_BIN:=jrsonnet
CROSSPLANE?=crossplane
REGISTRY?=ghcr.io
SHELL:=/bin/bash

GENERATOR_DEPTHS:=$(shell find generator -type f)

.PHONY: build
build: grafanaplane/zz packages docs

.PHONY: push
push: push_packages

grafanaplane: grafanaplane/zz

generator/crds.yaml:
	cd generator && \
	curl -sLO https://github.com/grafana/crossplane-provider-grafana/releases/download/v$(PROVIDER_VERSION)/crds.yaml

grafanaplane/zz: $(GENERATOR_DEPTHS)
	rm -rf grafanaplane/zz && \
	FILES=$$($(JSONNET_BIN) \
		  -S -c -m grafanaplane \
		  -J generator/vendor \
		  -A 'version=$(LIBRARY_VERSION)-$(PROVIDER_VERSION)' \
		  generator/main.libsonnet) && \
	xargs -n1 jsonnetfmt -i <<< "$${FILES}"

packages: $(GENERATOR_DEPTHS)
	rm -rf packages && \
	$(JSONNET_BIN) -S -m packages -c -J generator/vendor generator/packages.libsonnet

packages=$(wildcard packages/*)
push_packages: packages $(packages)
	rm -rf output && mkdir -p output/
	$(foreach pkg,$(packages),$(CROSSPLANE) xpkg build --package-root=$(pkg) --package-file=output/$(patsubst packages/%,%,$(pkg)).xpkg;)
	$(foreach pkg,$(packages),$(CROSSPLANE) xpkg push -f output/$(patsubst packages/%,%,$(pkg)).xpkg $(REGISTRY)/grafana/crossplane/$(patsubst packages/%,%,$(pkg)):$(LIBRARY_VERSION)-$(PROVIDER_VERSION);)

docs: $(shell find grafanaplane/ -type f)
	rm -rf docs/
	$(JSONNET_BIN) \
		-J generator/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "grafanaplane/main.libsonnet")'

.PHONY: tag
tag:
	git tag $(LIBRARY_VERSION)-$(PROVIDER_VERSION)
