# Equilux4K Theme for Xfce

![Screenshot](screenshot.png)

The Equilux4K provides a full-dark, neutral-gray theme for Xfce in 4K.

Supports:
- Xfce
- LightDM and GDM
- Chromium

It is based on the [Equilux Theme](https://github.com/ddnexus/equilux-theme). Users looking for Gnome, Budgie, MATE or othe GTK desktop environment please feel free to try out the original Equilux Theme instead. 

### Motivation

__4K (UHD) Support__: Visual elements are optimized for 4K resolution. 2x Window Scaling recommended.

As with the original Equilux theme, it also inherits a neutral dark-balanced colour-scheme not designed to be __fancy__, but to be __useful__ for a few specific goals.

1. __Minimize eye strain__: when you pass many hours in front of the screen or you are hyper-sensitive to light, saturation and contrast, your eyes will benefit from a dull UI

2. __Avoid disrupting your circadian rhythms__: a neutral colour-cast-free UI helps your body to produce enough melatonin at night time and sleep better, working nicely with software like `f.lux`, `redshift`, `NightLight`, ...

3. __Professional use in image editing, graphic design, 3D rendering__: in that fields any colour cast or excessive contrast, brightness or darkness introduced by the UI would affect the overall perception of the colour and balance of the images

4. __You may just like it__: even if the style is not the main goal, many people find that its very clean and minimalistic UI looks cool and professional


### Technical Focus

- Optimized for 4K resolution
- Total removal of any colour cast from the background elements (neutral base)
- Use of a neutral base for all the UI elements, with exception of a few button/boxes
- Maximum reduction of contrast/saturation
- Medium overall brightness/darkness of the UI

### Changes from the Equilux Theme

- Title bar and its button icons are optimized for 4K
- Font choices are completely by the users

## Installation

**Arch**: `yay -S `

**General**: Download the latest `equilux-theme-*.tar.xz` version listed in the __Files__ tab [here](https://www.opendesktop.org/p/1182169/), unzip it and move the Equilux* dirs to `/usr/share/themes`. As an alternative you can download the source of the latest release [here](https://github.com/ddnexus/equilux-theme/releases) and run the `install.sh` script as privileged user.

## Uninstallation 

Delete the installed directories: `sudo rm -rf /usr/share/themes/Equilux{,-compact}`


## GDM Theme Installation/Uninstallation

See the the upstream instruction [here](https://github.com/nana-4/materia-theme/blob/master/INSTALL_GDM_THEME.md).

## Related Items

A quick list of items that - for different reasons - fit well with the Equilux style and concept. Please, submit your suggestions as a new Issue, so I will add a note in this section.

### Wallpapers

Seamless textures from various sources and authors, converted to low contrast/brightness grayscale available in the __Files__ tab [here](https://www.opendesktop.org/p/1182169/)

### Icons

- [elementary-xfce](https://github.com/shimmerproject/elementary-xfce): This is an icon-theme maintained with Xfce in mind, but it should work on other desktops like Gnome3 as well.
  
- [Circle Numix Icons](https://github.com/numixproject/numix-icon-theme-circle): a circle themed icon set well maintained and not too bright (if you use Numix Folders below to tame the folder colors)

- [Numix Folders](https://github.com/numixproject/numix-folders): Customization script to change the colors and style of the numix folders (otherwise too bright and saturated). Recommended settings: Style: 6, Primary color: #9c9c9c, Secondary color; #9c9c9c, Symbol: #656565

- [Zafiro icons](https://github.com/zayronxio/Zafiro-icons): a flat theme with "washed" pastel colors

- [Papirus-Icon-Theme](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme/): a flat, sticker-like icon theme with a few variants (recommended Papirus-Dark)

- [Papirus Folders Script](https://github.com/PapirusDevelopmentTeam/papirus-folders): Customization script to change the colors of the papirus folders. Recommended command: `papirus-folders -C grey --theme Papirus-Dark`


### App Themes and Settings

- [Equilux-Telegram](https://github.com/aquatix/Equilux-Telegram-Theme)

- [Equilux-Flubox](https://www.opendesktop.org/p/1193958/)

- [HexChat](https://dl.hexchat.net/themes/Zenburn.hct): the Zenburn theme fits well with Equilux

- [Smyck terminal](https://github.com/DarthWound/smyck-gnome-terminal): a script to use SMYCK palette in GNOME Terminal

- [Equilux-Firefox](https://github.com/cj-sv/equilux-firefox): an Equilux color scheme for Firefox userContent.css and userChrome.css.

- [Tint2](https://gist.github.com/meskarune/329826937aea0effdbfa9f3bdc7e7989): tint2 panel theme that matches Equilux.

- TBD: add the style settings consistent with the Equilux Palette for apps like Vivaldi, Tilix, RubyMine, SmartGit, DeepGit, ...

### Browser Extensions

- [Dark Reader](https://github.com/darkreader/darkreader): Chrome and FireFox extension that inverts brightness of web pages and aims to reduce eyestrain while browsing the web.

## Branches

Master is always the upstream master: no changes from the base theme there.
The `equilux-*` branch(es) are the branches with the changes from the upstream master.
Please, notice that the `*-dev` branches are getting rebased on top of master at each new release. The old versions will be tagged and will not be removed/rebased.

## License

This Theme is distributed under the terms of the GNU General Public License, version 2 or later. See the [`COPYING`](COPYING) file for details.

## Credits

- All credits go to the [Equilux Theme](https://github.com/ddnexus/equilux-theme) and [Materia Theme](https://github.com/nana-4/materia-theme), their authors and contributors.
