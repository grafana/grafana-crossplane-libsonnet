PROVIDER_VERSION:=v2.4.0
JSONNET_BIN:=jrsonnet
CROSSPLANE?=crossplane
REGISTRY?=ghcr.io
SHELL:=/bin/bash

XPKG_VERSION?=$(shell git describe --tags)

GENERATOR_DEPTHS:=$(shell find generator -type f)

.PHONY: build
build: grafanaplane/zz packages docs

.PHONY: push
push: push_packages

grafanaplane: grafanaplane/zz

generator/crds.yaml:
	cd generator && \
	curl -sLO https://github.com/grafana/crossplane-provider-grafana/releases/download/$(PROVIDER_VERSION)/crds.yaml

grafanaplane/zz: $(GENERATOR_DEPTHS)
	rm -rf grafanaplane/zz && \
	FILES=$$($(JSONNET_BIN) \
		  -s  1000 \
		  -S -c -m grafanaplane \
		  -J generator/vendor \
		  generator/main.libsonnet) && \
	xargs -n1 jsonnetfmt --no-use-implicit-plus -i <<< "$${FILES}"

packages: $(GENERATOR_DEPTHS)
	rm -rf packages && \
	$(JSONNET_BIN) \
		-S \
		-c -m packages \
		-J generator/vendor \
		-A 'providerVersion=$(PROVIDER_VERSION)' \
		generator/packages.libsonnet

packages=$(wildcard packages/*)
push_packages: packages $(packages)
	rm -rf output && mkdir -p output/
	$(foreach pkg,$(packages),$(CROSSPLANE) xpkg build --package-root=$(pkg) --package-file=output/$(patsubst packages/%,%,$(pkg)).xpkg;)
	$(foreach pkg,$(packages),$(CROSSPLANE) xpkg push -f output/$(patsubst packages/%,%,$(pkg)).xpkg $(REGISTRY)/grafana/crossplane/$(patsubst packages/%,%,$(pkg)):$(XPKG_VERSION);)

docs: $(shell find grafanaplane/ -type f)
	rm -rf docs/
	$(JSONNET_BIN) \
		-J generator/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "grafanaplane/main.libsonnet")'

.PHONY: fmt
fmt:
	@find . \
		-path './.git' -prune \
		-o -path './gen' -prune \
		-o -path './docs' -prune \
		-o -name 'vendor' -prune \
		-o -name '*.libsonnet' -print \
		-o -name '*.jsonnet' -print \
		| xargs -n 1 -- jsonnetfmt --no-use-implicit-plus -i
