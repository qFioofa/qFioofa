#!/usr/bin/env bash

cd "$(dirname "$0")/.." || exit
mkdir -p result

TYPST=typst
command -v "$TYPST" >/dev/null 2>&1 || TYPST="${LOCALAPPDATA:-}/Programs/Typst/typst.exe"

# "<папка>:<префикс результата>"
VARIANTS=(
  "java-backend:java"
  "python-backend:python"
  "BSA:bsa"
)

for variant in "${VARIANTS[@]}"; do
  dir="${variant%%:*}"
  name="${variant##*:}"
  pushd "$dir" >/dev/null
  for file in *.typ; do
    suf="${file%.typ}"
    if [[ "$suf" == "resume" ]]; then
      suf=""
    fi
    suf="${suf#resume_}"
    out="result/resume_${name}${suf:+_${suf}}.pdf"
    if "$TYPST" compile --root ".." "$file" "../$out"; then
      echo "[OK]   $dir/$file -> $out"
    else
      echo "[FAIL] $dir/$file"
    fi
  done
  popd >/dev/null
done
