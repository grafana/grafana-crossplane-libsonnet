# jsonnet-parser

This is a parser for Jsonnet written in Jsonnet. It serves as a research project to get a better understanding how a parser could work.

I'm running this with the rust version `jrsonnet` as the go version is orders of magnitude slower. Also see examples in `Makefile` and `scripts/` for setting `--max-stack` and `--os-stack`.

The output format is a JSON that matches a schema that can be used by [ASTsonnet](https://github.com/crdsonnet/astsonnet) to generate the Jsonnet code again.
