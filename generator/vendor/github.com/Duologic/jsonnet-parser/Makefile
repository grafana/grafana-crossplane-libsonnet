.PHONY: fmt
fmt:
	@find . -path './.git' -prune \
			-o -path './test' -prune \
 			-o -name 'vendor' -prune \
 			-o -name '*.libsonnet' -print \
			-o -name '*.jsonnet' -print | \
		xargs -n 1 -- jsonnetfmt --no-use-implicit-plus -i

.PHONY: example.libsonnet.output.json
example.libsonnet.output.json:
	jrsonnet -J vendor example.libsonnet --max-stack 10000 --os-stack 50 > example.libsonnet.output.json

.PHONY: test
test: test_lexer test_parser

.PHONY: test_lexer
test_lexer:
	./go-jsonnet-test/test_lexer.sh

.PHONY: test_parser
test_parser:
	./go-jsonnet-test/test_parser.sh
