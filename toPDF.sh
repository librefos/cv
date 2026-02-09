#!/usr/bin/env bash

set -euo pipefail

TEXFILE="$1"

# Get the current git tag
VERSION=$(git describe --tags --exact-match 2>/dev/null || echo "dev")

mkdir -p build

pdflatex -file-line-error -halt-on-error -interaction=nonstopmode \
         -output-directory=build -jobname="cv-$VERSION" "$TEXFILE"
