#!/bin/bash
set -ueo pipefail

if [[ ! "$(which inkscape 2> /dev/null)" ]]; then
  echo "'inkscape' needs to be installed to generate the PNG."
  exit 1
fi

if [[ ! "$(which optipng 2> /dev/null)" ]]; then
  echo "'optipng' needs to be installed to generate the PNG."
  exit 1
fi

(
  cd src/gtk
  ./render-assets.sh
)
