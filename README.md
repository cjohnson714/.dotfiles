```
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝

bspwm -------> bspwm wm configs
misc --------> fonts, colors, scripts
polybar -----> bar configs
rofi --------> rofi configs
sxhkd -------> keybinding configs
urxvt -------> urxvt specific config and Xresources
vim ---------> vim config files
wallpaper ---> any wallpapers that I used
x -----------> .xinitrc
zsh ---------> zsh config files and .zprofile

```
# Dependencies
- [bspwm](https://github.com/baskerville/bspwm), [sxhkd](https://github.com/baskerville/sxhkd), zsh, rxvt-unicode, [rofi](https://davedavenport.github.io/rofi/)

  `sudo pacman -S bspwm sxhkd zsh rxvt-unicode rofi`

  - Change shell to zsh

    `chsh -s /bin/zsh`

- [polybar][8a64b679], [hsetroot](https://github.com/himdel/hsetroot)
  - Through an AUR helper:

    `yaourt polybar hsetroot`

    or

    `packer -S polybar hsetroot`

  - [Manually build polybar from source:][6faa9aee]
    ```
    git clone --branch 3.0.5 --recursive https://github.com/jaagr/polybar
    mkdir polybar/build
    cd polybar/build
    cmake ..
    sudo make install
    ```

  [8a64b679]: https://github.com/jaagr/polybar "polybar github"
  [6faa9aee]: https://github.com/jaagr/polybar#building-from-source "polybar github"

# Installation
Uses gnu stow to install:

`sudo pacman -S stow`

To install:
```
cd ~
git clone https://github.com/cjohnson714/.dotfiles.git
cd .dotfiles
stow bspwm misc sxhkd ...
```
To remove configs:

`stow -D bspwm misc sxhkd ...`

# Credits
- xero: [github/xero/dotfiles](https://github.com/xero/dotfiles)
  - For figlet ASCII fonts used in this document, inspiration for using stow
- crshd: [github/crshd](https://github.com/crshd)
  - For colors/zsh configs
- unix121: [github/unix121](https://github.com/unix121/i3wm-themes)
  - For polybar config
