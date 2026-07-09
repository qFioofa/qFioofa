#!/usr/bin/env bash

cd "$(dirname "$0")/.." || exit
mkdir -p result

for file in *.typ; do
	typst compile "$file" result/"$(basename "${file%.*}")".pdf
done
