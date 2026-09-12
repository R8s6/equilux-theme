# Hacking

This fork is focused on Xfce 4. Chromium assets are retained for browser integration, and GNOME Shell 3.30 assets are retained only as a GDM theme payload. GNOME Shell as a desktop environment is not a supported target.

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

## GDM payload

The retained GDM payload uses the latest GNOME Shell sources from the original Equilux tree, version 3.30:

- `src/_sass/gnome-shell/`
- `src/gnome-shell/3.30/`
- `src/gnome-shell/assets-dark/`

Only the Equilux dark standard and compact GNOME Shell CSS variants are kept. `./parse-sass.sh` rebuilds them together with the GTK CSS.

`./install.sh --size standard --gdm` installs the standard theme and compiles its GNOME Shell resources into the system GDM theme. Back up and restore the system GNOME Shell resource when testing GDM changes.

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
