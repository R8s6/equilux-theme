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

chrome() (
  cd src/chrome
  ./render-assets.sh
)

gtk() (
  cd src/gtk
  ./render-assets.sh
)

case "${1:-}" in
  "")
    chrome
    gtk
    ;;
  chrome)
    chrome
    ;;
  gtk)
    gtk
    ;;
  *)
    echo "Unknown argument '$1'"
    echo "Use 'chrome' or 'gtk' as an argument."
    exit 1
    ;;
esac
