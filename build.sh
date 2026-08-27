#!/usr/bin/env bash
# Build notebooks: execute cells with aximar-mcp to generate outputs, then
# export to HTML (or PDF) and regenerate the index.
#
# Usage: ./build.sh [--pdf] [--no-exec] [notebook.macnb ...]
#
# With no notebook arguments, builds every notebook under notebooks/.
# With arguments, builds only the specified notebook(s).
#
#   --pdf      export maxima_pdf instead of maxima_html
#   --no-exec  skip execution, just re-export the outputs already baked in
#
# Requires:
#   - aximar-mcp on PATH (or set AXIMAR_MCP)
#   - uv, for running nbconvert via the project's venv

set -euo pipefail

AXIMAR_MCP="${AXIMAR_MCP:-aximar-mcp}"
OUTPUT_DIR="${OUTPUT_DIR:-docs/pages}"
FORMAT="maxima_html"
EXECUTE=1

args=()
for arg in "$@"; do
  case "$arg" in
    --pdf)     FORMAT="maxima_pdf" ;;
    --no-exec) EXECUTE=0 ;;
    *)         args+=("$arg") ;;
  esac
done

mkdir -p "$OUTPUT_DIR"

if [[ ${#args[@]} -gt 0 ]]; then
  notebooks=("${args[@]}")
else
  shopt -s globstar nullglob
  notebooks=(notebooks/**/*.macnb)
  if [[ ${#notebooks[@]} -eq 0 ]]; then
    echo "No .macnb files found in notebooks/" >&2
    exit 1
  fi
fi

if (( EXECUTE )); then
  echo "==> Executing ${#notebooks[@]} notebook(s) with aximar-mcp..."
  for nb in "${notebooks[@]}"; do
    echo "    $nb"
    "$AXIMAR_MCP" run --allow-dangerous "$nb"
  done
else
  echo "==> Skipping execution (--no-exec)"
fi

echo "==> Exporting to ${FORMAT}..."
for nb in "${notebooks[@]}"; do
  name="$(basename "$nb" .macnb)"
  echo "    $nb -> $OUTPUT_DIR/$name"
  uv run jupyter nbconvert --to "$FORMAT" --output-dir "$OUTPUT_DIR" --output "$name" "$nb"
done

echo "==> Generating index.html..."
./gen-index.sh

echo "==> Done. Output in $OUTPUT_DIR/"
