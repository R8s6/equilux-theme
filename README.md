# Equilux Theme for Xfce 4

This fork is focused strictly on Xfce 4.

It keeps the Equilux neutral dark palette and the GTK+ 3 application theme needed by Xfce, together with the Xfwm4 window-manager theme. The Xfwm4 assets include both standard and compact titlebar variants.

Support for other desktop environments and legacy toolkit integrations has been removed from this fork to keep the codebase small and maintainable. This includes GTK+ 2, GNOME Shell/GDM, Cinnamon, Budgie-specific integration, MATE/Metacity, Unity, and browser-specific theme assets. Users who need those components should use the original Equilux theme.

## Install

Install both standard and compact variants:

```bash
sudo ./install.sh
```

Install to a custom theme directory:

```bash
./install.sh --dest ~/.themes
```

Install only one size variant:

```bash
./install.sh --dest ~/.themes --size standard
./install.sh --dest ~/.themes --size compact
```

The installed themes are:

- `Equilux`
- `Equilux-compact`

## Scope

This fork maintains only:

- GTK+ 3 styling used by Xfce applications
- Xfwm4 window decorations
- Standard and compact Xfwm4 titlebar assets

No compatibility claims are made for other desktop environments.

## Development

See [`HACKING.md`](HACKING.md) for the remaining build and asset-generation workflow.

## License

Equilux is distributed under the GNU General Public License, version 2 or later. See [`COPYING`](COPYING).

## Credits

Equilux is based on the original [Equilux Theme](https://github.com/ddnexus/equilux-theme), which in turn is based on [Materia Theme](https://github.com/nana-4/materia-theme). All original authors and contributors retain their respective credits.
