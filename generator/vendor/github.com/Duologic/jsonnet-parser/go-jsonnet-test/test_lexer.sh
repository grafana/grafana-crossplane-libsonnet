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

LEX=$(find ${DIRNAME}/vendor/github.com/google/go-jsonnet/testdata/ -name \*.jsonnet)

for F in $LEX; do
    echo lex: $F
    ${DIRNAME}/../scripts/lex.sh $F > /dev/null
done
