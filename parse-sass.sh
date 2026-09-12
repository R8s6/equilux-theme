#!/bin/bash
set -ueo pipefail

if [[ ! "$(which sassc 2> /dev/null)" ]]; then
  echo "'sassc' needs to be installed to generate the CSS."
  exit 1
fi

SASSC_OPT=('-M' '-t' 'expanded')
_SIZE_VARIANTS=('' '-compact')

if [[ -n "${SIZE_VARIANTS:-}" ]]; then
  IFS=', ' read -r -a _SIZE_VARIANTS <<< "$SIZE_VARIANTS"
fi

echo "== Generating GTK+ 3 CSS..."

for size in "${_SIZE_VARIANTS[@]}"; do
  sassc "${SASSC_OPT[@]}" "src/gtk/3.0/gtk-dark$size."{scss,css}
done

echo "== Generating Chromium scrollbar CSS..."
sassc "${SASSC_OPT[@]}" src/chrome/chrome-scrollbar/scrollbars.{scss,css}
sassc "${SASSC_OPT[@]}" src/chrome/chrome-scrollbar-dark/scrollbars.{scss,css}
