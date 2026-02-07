#!/usr/bin/env bash

set -euo pipefail

readonly TEXFILE="$1"

mkdir -p build
pdflatex -interaction=nonstopmode -halt-on-error \
  -output-directory=build -file-line-error "$TEXFILE"
