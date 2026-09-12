#!/bin/bash
set -ueo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$REPO_DIR/src"

DEST_DIR="/usr/share/themes"
THEME_NAME="Equilux"
SIZE_VARIANTS=('' '-compact')

usage() {
  cat << EOF
Usage: $0 [OPTION]...

OPTIONS:
  -d, --dest DIR       Specify theme destination directory (Default: $DEST_DIR)
  -n, --name NAME      Specify theme name (Default: $THEME_NAME)
  -s, --size VARIANT   Specify theme size variant [standard|compact] (Default: All variants)
  -h, --help           Show this help

INSTALLATION EXAMPLES:
Install both variants into ~/.themes
  $0 --dest ~/.themes
Install standard variant only
  $0 --dest ~/.themes --size standard
Install compact variant only
  $0 --dest ~/.themes --size compact
EOF
}

install() {
  local dest="$1"
  local name="$2"
  local size="$3"
  local THEME_DIR="$dest/$name$size"

  [[ -d "$THEME_DIR" ]] && rm -rf "${THEME_DIR:?}"

  echo "Installing '$THEME_DIR'..."

  mkdir -p "$THEME_DIR"
  cp -r "$REPO_DIR/COPYING" "$THEME_DIR"
  cp -r "$SRC_DIR/index-dark$size.theme" "$THEME_DIR/index.theme"

  cp -r "$SRC_DIR/gtk/assets" "$THEME_DIR/gtk-assets"
  mkdir -p "$THEME_DIR/gtk-3.0"
  ln -s ../gtk-assets "$THEME_DIR/gtk-3.0/assets"
  cp -r "$SRC_DIR/gtk/3.0/gtk-dark$size.css" "$THEME_DIR/gtk-3.0/gtk.css"

  mkdir -p "$THEME_DIR/xfwm4"
  cp -r "$SRC_DIR/xfwm4/"{*.svg,themerc} "$THEME_DIR/xfwm4"
  cp -r "$SRC_DIR/xfwm4/assets" "$THEME_DIR/xfwm4/assets"
  if [[ "$size" == '-compact' ]]; then
    cp -r "$SRC_DIR/xfwm4/assets-compact/." "$THEME_DIR/xfwm4/assets"
  fi
}

while [[ "$#" -gt 0 ]]; do
  case "${1:-}" in
    -d|--dest)
      dest="$2"
      if [[ ! -d "$dest" ]]; then
        echo "ERROR: Destination directory does not exist."
        exit 1
      fi
      shift 2
      ;;
    -n|--name)
      _name="$2"
      shift 2
      ;;
    -s|--size)
      shift
      for variant in "$@"; do
        case "$variant" in
          standard)
            sizes+=("${SIZE_VARIANTS[0]}")
            shift
            ;;
          compact)
            sizes+=("${SIZE_VARIANTS[1]}")
            shift
            ;;
          -*)
            break
            ;;
          *)
            echo "ERROR: Unrecognized size variant '${1:-}'."
            echo "Try '$0 --help' for more information."
            exit 1
            ;;
        esac
      done
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "ERROR: Unrecognized installation option '${1:-}'."
      echo "Try '$0 --help' for more information."
      exit 1
      ;;
  esac
done

if [[ ! -w "${dest:-$DEST_DIR}" ]]; then
  echo "Please run as root."
  exit 1
fi

for size in "${sizes[@]:-${SIZE_VARIANTS[@]}}"; do
  install "${dest:-$DEST_DIR}" "${_name:-$THEME_NAME}" "$size"
done

echo
echo "Done."
