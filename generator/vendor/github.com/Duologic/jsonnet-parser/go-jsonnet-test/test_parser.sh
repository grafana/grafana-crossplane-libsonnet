#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

DIRNAME="$(dirname "$0")"

cd $DIRNAME
jb install
cd -

cd $DIRNAME/..
jb install
cd -

PARSE=$(find ${DIRNAME}/vendor/github.com/google/go-jsonnet/testdata/ -name \*.jsonnet | \
        grep -v error_hexnumber | \
        grep -v import_block_literal | \
        grep -v import_computed | \
        grep -v importbin_block_literal | \
        grep -v importbin_computed | \
        grep -v importstr_block_literal | \
        grep -v importstr_computed | \
        grep -v insuper4 | \
        grep -v object_comp_assert | \
        grep -v object_comp_bad_field | \
        grep -v object_comp_illegal | \
        grep -v static_error_eof | \
        grep -v syntax_error | \
        grep -v unfinished_args
    )

for F in $PARSE; do
    echo parse: $F
    ${DIRNAME}/../scripts/parse.sh $F > /dev/null
done
