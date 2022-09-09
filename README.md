# Tue Nhan's dot files

![Pictures 6](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/combine_images_new.jpg)

- ⚠️ Warning: Don’t blindly use my settings unless you know what you 're doing. Use at your own risk!

## Contents:

- [Neovim Setups](#neovim)
- [Windows Manger]():
  - [GNOME](#gnome)
  - [BSPWM](#bspwm)
  - [i3](#i3)
  - [Microsoft Windows](#windows)
- [Fish](#fish)
- [zsh](#zsh)
- [Addition Apps and Terminal Tools](#Apps)

## Neovim Setups <a name = "neovim"></a>:

![Pictures 5](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new1.png)
![Pictures 7](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new3.gif)
**Code Format with Null-Ls**
![Pictures 8](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new2.gif)
Requires Neovim (>=0.5), I currently using [Neovide](https://github.com/neovide/neovide).

<details><summary>Optional Package and apps</summary><blockquote>
  </blockquote>

- **Installations**:

```fish
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade
sudo apt install neovim
```

### Main plugins

- [Vim-Plug](https://github.com/junegunn/vim-plug): Vim's Plugins Manager
- [Lsp](https://github.com/neovim/nvim-lspconfig): A collection of common configurations for Neovim's built-in language server client.

- [Cmp](https://github.com/hrsh7th/nvim-cmp): Code Completions write in Lua

- [Lsp-Installer](https://github.com/williamboman/nvim-lsp-installer):
  Neovim plugin that allows you to seamlessly install LSP servers locally

- [Tree-Sitter](https://github.com/nvim-treesitter/nvim-treesitter): Code Syntax highlight supports mutiples languages

- Get healthy:
  - Open nvim and enter the following:
  ```
  :checkhealth
  ```
  - You probably notice you don't have support for copy and paste also that python and node haven't been setup
    - On Ubuntu:
    ```
    sudo apt install xsel
    ```
    - On Arch:
    ```
    sudo pacman -S xsel
    ```
  - Next we need to install python support (Node is optional)
    - Neovim python support:
    ```
    pip install pynvim
    # or
    pip3 install pynvim
    ```
    - Neovim Node support
    ```
    npm i -g neovim
    ```
- Other optional package for formatting:

  - Prettier

  ```bash
  npm install -g prettier
  ```

  - Black (Python formatter)

  ```bash
  pip install black
  ```

- On windows you have to install [Fd](https://github.com/sharkdp/fd):
  ```bash
  sccop install fd
  ```

</details>
</blockquote></details>

## i3<a name = "i3"></a>:

- Inspired by [endavouros i3vm setups](https://github.com/endeavouros-team/endeavouros-i3wm-setup)

> **NOTE**: my i3 configs just change a bit about the color to match my one dark color scheme

## Windows SETUPS<a name = "Windows"></a>:

![Pictures 4](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Windows_Rice.png)

- Terminal : [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=en-us&gl=US)
- [Scoop](https://scoop.sh/) : A package manager for windows
- Prompt: [Oh my posh](https://ohmyposh.dev/docs/)
- Tutorial is inspired by [this video](https://www.youtube.com/watch?v=5-aK2_WwrmM) 
- Optional Package:
  - [Terminal icons](https://github.com/devblackops/Terminal-Icons) - Icons for terminal :
  ```powershell
  Install-Module -Name Terminal-Icons -Repository PSGallery -Force
  ```
  - [Z](https://www.powershellgallery.com/packages/z/1.1.13) - Directory jump:
  ```powershell
  Install-Module -Name z -Force
  ```
  - [PsFzf](https://github.com/kelleyma49/PSFzf) - Fuzzy finder:
  ```powershell
  Install-Module -Name PSFzf -Force
  ```
  - [PSReadLine](https://docs.microsoft.com/en-us/powershell/module/psreadline/?view=powershell-7.2) - Use for completions:
  ```powershell
  Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
  ```
- ⚠️ In case you don't have PowerShell profile yet:
  ```powershell
  New-Item -Path $PROFILE -type File -force
  ```

## GNOME SETUPS<a name = "gnome"></a>:

![Pictures 1](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice1.png)

![Pictures 2](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice2.png)

<details><summary> Gnome configs </summary><blockquote>

- [Mutter Rounded](https://github.com/yilozt/mutter-rounded): Windows manager for GNOME (for rounded corners and blur windows effect)

- [Gnome Shell Extensions](https://extensions.gnome.org/):
  - [Blur My Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/): Blur the gnome shell
  - [User Themes](https://extensions.gnome.org/extension/19/user-themes/): Load shell themes from user directories
  - [Caffeine](https://extensions.gnome.org/extension/517/caffeine/): Disable the screensaver and auto suspend
  - [Color Picker](https://extensions.gnome.org/extension/3396/color-picker/): The simple color picker for gnome shell
  - [Compiz alike magic lamp effect](https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/): Magic lamp effect alike the macOS minimize effect
  - [Compiz window effect](https://extensions.gnome.org/extension/3210/compiz-windows-effect/): Compiz wobbly windows effect like a kelly windows btw
  - [Dash to Dock Lite ](https://extensions.gnome.org/extension/4994/dash2dock-lite/): A Minimal dock alike macOS dock
  - [Dash to dock for COSMIC](https://extensions.gnome.org/extension/5004/dash-to-dock-for-cosmic/): A dosh to dock fork for the COSMIC/GNOME shell
  - [Extension List](https://extensions.gnome.org/extension/3088/extension-list/): A Simple Gnome shell extension manager in the top panel
  - [Hide top bar](https://extensions.gnome.org/extension/545/hide-top-bar/): Hide the top bar to maximize the screen space
  - [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/): SImple tweak tools to customize the gnome shell and disable some UI Features
  - [Open Weather](https://extensions.gnome.org/extension/750/openweather/): A simple weather app for gnome shell
  - [Panel OSD](https://extensions.gnome.org/extension/708/panel-osd/):Reduce the top bar space (**Incompatible for newest Ubuntu release**)
  - [Remove app menu](https://extensions.gnome.org/extension/3906/remove-app-menu/): Remove the applicatin menu from the top bar
  - [Refresh Wi-Fi Connections](https://extensions.gnome.org/extension/905/refresh-wifi-connections/): Adds a refresh butoon to the Wi-fi Connection selection dialog to manually refresh the network scan
  - [Screenshot Tools](https://extensions.gnome.org/extension/1112/screenshot-tool/): Extension for taking screenshots quickly and easily
  - [Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/):Shows a list of sound output and input devices (similar to gnome sound settings) in the status menu below the volume slider.
  - [Status Area Horizontal Spacing](https://extensions.gnome.org/extension/355/status-area-horizontal-spacing/): Reduce the horizontal space between icons in the top right status area
  - [Unite](https://extensions.gnome.org/extension/1287/unite/): Remove the title bars of the windows for the minimalist in windows
  - [Vitals](https://extensions.gnome.org/extension/1460/vitals/): A simple system monitor on the top bar
  - [Workspace bar](https://extensions.gnome.org/extension/3851/workspaces-bar/): Replace the Activites button by all current workspaces buttons
  - [ddterm](https://extensions.gnome.org/extension/3780/ddterm/): Drop down terminal extension for gnome shell
- Gnome tweaks (for apply themes and icons ) installation:

  ```fish
  sudo apt update && sudo apt upgrade
  sudo apt install gnome-tweaks
  ```

    </blockquote></details>
  </blockquote></details>

## BSPWM SETUPS<a name = "bspwm"></a>:

![Pictures 4](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice4.png)

![Pictures 3](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice3.png)

<details><summary>Bspwm configs</summary><blockquote>

- Was inspired by this [video](https://www.youtube.com/watch?v=HxbhkkfaVuo)
- Dependencies:

  - Bspwm (Core WM ):

    - Arch:
      ```
      sudo pacman -S bspwm
      ```
    - Ubuntu:
      ```
      sudo apt install bspwm
      ```

  - sxhkd (Keybindings ):

    - Arch:
      ```
      sudo pacman -S sxhkd
      ```
    - Ubuntu:
      ```
      sudo apt install sxhkd
      ```

  - Polybar (Bar ):

    - Arch:
      ```
      sudo pacman -S polybar
      ```
    - Ubuntu:
      ```
      sudo apt install polybar
      ```

  - qt5ct (Change qt application themes):

    - Arch:
      ```
      sudo pacman -S qt5ct
      ```
    - Ubuntu:
      ```
      sudo apt install qt5ct
      ```

  - lxapperance (Applications to change theme and icons):

    - Arch:
      ```
      sudo pacman -S lxapperance
      ```
    - Ubuntu:
      ```
      sudo apt install lxapperance
      ```

  > You have to make a folder (~/.icons and ~/.themes ) in your home directory and copy all icons and themes you had downloaded to that directory

  - Feh : - Arch
  ` sudo pacman -S feh ` - Ubuntu:
  `sudo apt install feh` > Remember to change the [bspwm config](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/.config/bspwm/bspwmrc) wallpaper directory
    </blockquote></details>
  </blockquote></details>

## Fish Shell Setups <a name = "fish"></a>:

- [Fish Shell](https://github.com/nvim-treesitter/nvim-treesitter): a smart and user-friendly command line
  shell for Linux, macOS, and the rest of the family.

- [fisher](https://github.com/jorgebucaran/fisher): Plugins manager for fish shell

- [Tide](https://github.com/IlanCosman/tide): Prompt Themes for Fish like PowerLevel10k

- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts): I use Hack Nerd Font and Fira Code Nerd Font

- [Z](https://github.com/jethrokuan/z): Directory Jumper

- [exa](https://the.exa.website/)

- [peco](https://github.com/peco/peco)

- [Oh my Fish](https://github.com/oh-my-fish/oh-my-fish)

## Adition apps and terminal tools<a name = "Apps"></a>:

- [Kitty](https://sw.kovidgoyal.net/kitty/): The fast,Features rich,GPU based Terminal emulator

```fish
sudo apt update && sudo apt upgrade
sudo apt install kitty
```

- [FlatPak](https://www.flatpak.org/setup/): Package manager for Linux
  - [Kooha](https://flathub.org/apps/details/io.github.seadve.Kooha): Elegantly screen recorder
- [Howdy](https://github.com/boltgolt/howdy): Windows Hello Style authentication for Linux
- [Fusuma](https://github.com/iberianpig/fusuma): Multitouch gesture recognizer. This makes your linux able to recognize swipes or pinches
  - **How to make it runs when turn on your machine**:
    - Go to start up application
    - Then click to add:
      - Name section: fusuma
      - Command section: fusuma

## Terminal Tools

- [Pipe.sh](https://github.com/pipeseroni/pipes.sh): Animated pipes terminal screeen saver
- [Cmatrix](https://github.com/abishekvashok/cmatrix) Installations:

```fish
sudo apt update && sudo apt upgrade
sudo apt install cmatrix
```
