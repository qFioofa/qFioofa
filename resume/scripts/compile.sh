#!/usr/bin/env bash

cd "$(dirname "$0")/.." || exit
mkdir -p result
typst compile resume.typ result/resume.pdf
