#!/usr/bin/env bash

cd "$(dirname "$0")/.." || exit
mkdir -p result

TYPST=typst
command -v "$TYPST" >/dev/null 2>&1 || TYPST="${LOCALAPPDATA:-}/Programs/Typst/typst.exe"

for dir in java python; do
  pushd "$dir-backend" >/dev/null
  for file in *.typ; do
    suf="${file%.typ}"
    if [[ "$suf" == "resume" ]]; then
      suf=""
    fi
    suf="${suf#resume_}"
    out="result/resume_${dir}${suf:+_${suf}}.pdf"
    if "$TYPST" compile --root ".." "$file" "../$out"; then
      echo "[OK]   $dir-backend/$file -> $out"
    else
      echo "[FAIL] $dir-backend/$file"
    fi
  done
  popd >/dev/null
done
