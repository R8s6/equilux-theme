# Hacking

This fork is intentionally limited to Xfce 4.

## GTK+ 3

GTK styling lives under:

- `src/_sass/gtk/`
- `src/gtk/3.0/`
- `src/gtk/assets.svg`

Edit the SCSS sources rather than generated CSS, then rebuild the Equilux dark CSS with:

```bash
./parse-sass.sh
```

This requires `sassc`.

GTK PNG assets are generated from `src/gtk/assets.svg`. Rebuild them with:

```bash
./render-assets.sh
```

This requires Inkscape and `optipng`.

## Xfwm4

Xfwm4 sources live under `src/xfwm4/`.

- `assets/` contains the standard titlebar/button assets.
- `assets-compact/` contains the compact titlebar/button overrides.
- `themerc` contains Xfwm4 theme settings.

The Xfwm4 SVG files are edited directly. Keep standard and compact variants separate and test both after changes.

## Install for testing

Install both variants:

```bash
sudo ./install.sh
```

Or test one variant in a user theme directory:

```bash
./install.sh --dest ~/.themes --size standard
./install.sh --dest ~/.themes --size compact
```
