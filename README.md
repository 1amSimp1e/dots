<div align="center">
    <h1>✨Tue Nhan's Dot Files✨</h1>
    <h3>A place where I store all of my own customization </h3>
</div>

<div align="center">

![](https://img.shields.io/github/last-commit/iamverysimp1e/dots?&style=for-the-badge&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41)
![](https://img.shields.io/github/stars/iamverysimp1e/dots?style=for-the-badge&logo=starship&color=8bd5ca&logoColor=D9E0EE&labelColor=302D41)
[![](https://img.shields.io/github/repo-size/iamverysimp1e/dots?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41)](https://github.com/iamverysimp1e/dots)
<a href="https://github.com/iamverysimp1e/dots/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/iamverysimp1e/dots?style=for-the-badge&logo=starship&color=ee999f&logoColor=D9E0EE&labelColor=302D41" />
</a>
<a href="https://github.com/iamverysimp1e/dots/issues">
<img alt="Issues" src="https://img.shields.io/github/issues/iamverysimp1e/dots?style=for-the-badge&logo=bilibili&color=F5E0DC&logoColor=D9E0EE&labelColor=302D41" />
</a>

</div>

![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/Combined.png)

## Contents:

### **👻 Don't blindly use my setup. Use at your own risk!!!**

### Overview 🎑

- [🌿 Windows Manger]():
  - [🍚 HyprLand](#hypr)
  - [🍙 GNOME](#gnome)
- [👽 Terminal]():
  - **☄ Emulator**:
    - [kitty 😽](https://sw.kovidgoyal.net/kitty/)
    - [Alacritty](https://alacritty.org/)
  - [🌌 Shell](#shell): Zsh with [Zap](https://www.zapzsh.org/) plugin manager
  - **🤖 Prompt**: [StarShip Prompt 🚀](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [✏️ Text Editor & IDE]():
  - [💫 NeoVim](#neovim): **Main Text Editor**
  - [🔱 VsCodium](#VsCodium): **Just for back up**

## Hyprland 🍚<a name = "hypr"></a>:

![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/HyprLand/Rice1.png)
![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/HyprLand/Rice2.png)
![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/HyprLand/Rice3.png)

### Setup 🔧:

> To install my dots just [R.T.F.M](https://en.wikipedia.org/wiki/RTFM)

<details><summary> 1. Install Required dependencies: </summary><blockquote>

⚠️ This setup instructions only provided for Arch Linux (and other Arch-based distributions)

- First of all, Install the newest [Hyprland](https://hyprland.org/) using this [guide](https://wiki.hyprland.org/Getting-Started/Installation/) depend on your Distro:

  ```zsh
  yay -S hyprland-git
  ```

- Base setups:

  - Install Rofi, Dunst, kitty terminal, swaybg, swaylock-fancy, swayidle, pamixer, light, Brillo:

  ```
  yay -S rofi dunst kitty swaybg swaylock-fancy-git swayidle pamixer light brillo
  ```

    <details><summary> Eww bar version</summary><blockquote>

  ```
  yay -S bc blueberry bluez coreutils dbus findutils gawk gnunet jaq light networkmanager network-manager-applet pavucontrol playerctl procps ripgrep socat udev upower util-linux wget wireplumber wlogout eww-wayland pipewire-pulse
  ```

    </blockquote></details>

    <details><summary> Waybar version</summary><blockquote>

  ![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/HyprLand/archive/Rice1.png)

  - You just simply install waybar-hyprland package:

    ```
    yay -S waybar-hyprland
    ```

    </blockquote></details>

- Other Utilities:

  - For screenshots tools to be work you have to install grim, swappy, slurp:

    ```
    yay -S grim swappy slurp
    ```

  - Emoji icons selector
    ```
    yay -S rofi-emoji
    ```
    > Also see [must have apps](https://wiki.hyprland.org/Useful-Utilities/Must-have/) and [awesome-hyprland](https://github.com/hyprland-community/awesome-hyprland) for more.

- Also, if you want gtk applications to fits with my colorscheme on my dots, I recommend the [decay themes](https://github.com/decaycs/decay-gtk).
  To change the gtk themes I use nwg-look.
  > First, Install nwg-look
  ```
  yay -S nwg-look
  ```
  > Then, Install decay themes using the [this](https://github.com/decaycs/decay-gtk/#Installation) instruction.
  ```
  git clone --depth=1 https://github.com/decaycs/decay-gtk
  cd decay-gtk
  mkdir -p ~/.themes
  # Put any theme you want from the Themes folder into the created .themes folder
  cp -r ./Themes/<theme> ~/.themes
  ```
  > After that, launch nwg-look then choose the decay themes

</blockquote></details>

<details><summary>2. Install my dots:</summary><blockquote>

> Clone the repos

```zsh
git clone https://github.com/iamverysimp1e/dots
cd dots/configs
```

> Copy configs files

```zsh
cp -r waybar kitty hypr rofi dunst swaylock eww ~/.config
```

> Install a few font

Necessary Font:

- [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip)

- [Material Design Icons](https://github.com/google/material-design-icons/tree/master/variablefont)

  > Note that install the [MaterialSymbolsOutlined](https://github.com/google/material-design-icons/raw/master/variablefont/MaterialSymbolsOutlined%5BFILL%2CGRAD%2Copsz%2Cwght%5D.ttf) and [this](https://github.com/google/material-design-icons/raw/master/variablefont/MaterialSymbolsOutlined%5BFILL%2CGRAD%2Copsz%2Cwght%5D.woff2) , **just to make sure**

- [Products Sans](https://github.com/iamverysimp1e/fonts/raw/master/product-sans.zip)

Optional Font:

- [NotoColorEmoji](https://github.com/googlefonts/noto-emoji/raw/main/fonts/NotoColorEmoji.ttf)
- [Codicon](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf)

> Or either way, check my [fonts](https://github.com/iamverysimp1e/fonts) repos where i store all of the programming fonts.

Once you download them and unpack them, place them into `~/.fonts` or `~/.local/share/fonts.`

Then run this command for your system to detect the newly installed fonts.

```
fc-cache -fv
```

Congratulations! You had installed this beautiful rice on your machine🍚
Log out your current desktop session and login to Hyprland:)

## Credits

Thanks to:

- [R/unixporn community](https://www.reddit.com/r/unixporn/)
- [Hyprland Development Discord server](https://discord.com/invite/hQ9XvMUjjr)
- [fufexan](https://github.com/fufexan/dotfiles) for the eww widgets :)

</blockquote></details>

## GNOME 🍙<a name = "gnome"></a>:

![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/Gnome_Rice/Rice1.png)
![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/Gnome_Rice/Rice2.png)
![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/Gnome_Rice/Rice3.png)

<details><summary> Gnome configs </summary><blockquote>

- GTK Themes: Based on [AestheticStuff by Rxyhn](https://github.com/rxyhn/AestheticStuff)

- GTK Icons:[Papirus icons ](https://www.gnome-look.org/p/1166289)

- [Mutter Rounded (Optional)](https://github.com/yilozt/mutter-rounded): Windows manager for GNOME (for blur windows effect)
- [Gnome Shell Extensions](https://extensions.gnome.org/):

  - [Aylur's Widget](https://extensions.gnome.org/extension/5338/aylurs-widgets/): Beautiful Plugins with customizable bar
  - [Blur My Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/): Blur the gnome shell
  - [User Themes](https://extensions.gnome.org/extension/19/user-themes/): Load shell themes from user directories
  - [Color Picker](https://extensions.gnome.org/extension/3396/color-picker/): The simple color picker for gnome shell
  - [Compiz alike magic lamp effect](https://extensions.gnome.org/extension/3740/compiz-alike-magic-lamp-effect/): Magic lamp effect alike the macOS minimize effect
  - [Extension List](https://extensions.gnome.org/extension/3088/extension-list/): A Simple Gnome shell extension manager in the top panel
  - [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/): SImple tweak tools to customize the gnome shell and disable some UI Features
  - [Open Weather](https://extensions.gnome.org/extension/750/openweather/): A simple weather app for gnome shell
  - [Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/):Shows a list of sound output and input devices (similar to gnome sound settings) in the status menu below the volume slider.
  - [Unite](https://extensions.gnome.org/extension/1287/unite/): Remove the title bars of the windows for the minimalist in windows
  - [Vitals](https://extensions.gnome.org/extension/1460/vitals/): A simple system monitor on the top bar
  - [gtk title bar](https://extensions.gnome.org/extension/1732/gtk-title-bar/):remove title bar for non-gtk apps with minimal inference
  - [Rounded Window Corners](https://extensions.gnome.org/extension/5237/rounded-window-corners/): Rounded corners for all windows

  - Bar (based on [smooth by Aylur Themes ](https://github.com/Aylur/dotfiles/tree/main/Smooth/gnome-shell)):

    **DISCLAIMER ⚠️: This bar color mod is still in progress and some color sections may not appear correctly if you want to contribute really grateful about that !**

    - Install all of the Extensions above then copy .themes to ~/.themes
    - Open Gnome tweaks -> Appearance -> Shell -> Choose Smooth

- Gnome tweaks (for apply themes and icons ) installation:

  ```fish
  sudo apt update && sudo apt upgrade
  sudo apt install gnome-tweaks
  ```

    </blockquote></details>
  </blockquote></details>

## 🌌 Shell & 🤖 Prompt setups <a name = "shell"></a>

![](https://raw.githubusercontent.com/iamverysimp1e/dots/main/ScreenShots/Other/prompt.png)

<details><summary>How to ❓</summary><blockquote>

- First of all install zsh based on your Linux distributions:

  - For Arch Users:

  ```
  yay -S zsh
  ```

- For other linux distributions install using ![this](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) guide
- Then install ![ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) with ![Zap](https://www.zapzsh.org/) plugin manager

  - For the prompt im currently using this awesome ![StarShip Prompt 🚀](https://starship.rs/guide/#%F0%9F%9A%80-installation) prompt

- Also, if you want the terminal icon install **exa** using [this](https://the.exa.website/install) guide

- Install my prompt:
  - Clone the repos and enter that:
  ```zsh
  git clone https://github.com/iamverysimp1e/dots.git
  cd dots/configs/prompt
  ```
  - Copy necessary files:
  ```zsh
  cp starship.toml ~/.config && cp .zshrc $HOME
  ```
  > Then relaunch your terminal then congratulations your beautiful prompt is ready 🥳
- Install the [nerd fonts](https://www.nerdfonts.com/font-downloads)
  - Download then extract it to `~/.fonts`
  - Then run this from the terminal
  ```
  fc-cache -f -v
  ```

</blockquote></details>

## Neovim Setups <a name = "neovim"></a>:

- Im currently working on ![OctoVim](https://github.com/OctoVim/OctoVim) which is yet another NeoVim IDE
  > The conigs on my dots are still working as well so if you interested in try it out and give it star 💫

<details><summary>How to setups</summary><blockquote>

- Setups:

```
├── init.lua
├── lua
│   └── user
│       ├── alpha.lua
│       ├── autocommands.lua
│       ├── autopairs.lua
│       ├── bufferline.lua
│       ├── cmp.lua
│       ├── colorizer.lua
│       ├── colorscheme.lua
│       ├── comment.lua
│       ├── gitsigns.lua
│       ├── impatient.lua
│       ├── indentline.lua
│       ├── keymaps.lua
│       ├── lsp
│       │   ├── configs.lua
│       │   ├── handlers.lua
│       │   ├── init.lua
│       │   ├── lspsaga.lua
│       │   ├── null-ls.lua
│       │   └── settings
│       │       ├── jsonls.lua
│       │       ├── pyright.lua
│       │       ├── sumneko_lua.lua
│       │       └── tsserver.lua
│       ├── lualine.lua
│       ├── nvim-transparent.lua
│       ├── nvim-tree.lua
│       ├── options.lua
│       ├── plugins.lua
│       ├── project.lua
│       ├── syntax.lua
│       ├── telescope.lua
│       ├── toggleterm.lua
│       ├── treesitter.lua
│       ├── truezen.lua
│       ├── whichkey.lua
│       └── winbar.lua
└── plugin
    └── packer_compiled.lua
```

<details><summary>1. Install NeoVim</summary><blockquote>
I recommend the NeoVim Nightly Version, my NeoVim configs also work with the Release version but there're some error while installations.

- On Arch:

  > Assume that your package manager is yay

  ```
  yay -S nvim-nightly
  # or
  yay -S neovim-git
  ```

- On Ubuntu

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade
sudo apt install neovim
```

</blockquote></details>

<details><summary>2. Install required dependencies </summary><blockquote>
- You probably notice you don't have support for copy and paste also that python and node haven't been setup
  
  - If you on X11 install xsel and xclip

    - On Ubuntu:
    ```
    sudo apt install xsel xclip
    ```

    - On Arch:
    ```
    sudo pacman -S xsel xclip
    ```

- But if you on Wayland like me, install wlcopy & wl-clipboard

  - On Arch:

  ```
  sudo pacman -S wlcopy wl-clipboard
  ```

  - On Ubuntu:

  ```
  sudo apt install wlcopy wl-clipboard
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
- Other dependencies for formatting & finding text:):

  - Prettier

  ```bash
  npm install -g prettier
  ```

  - Black (Python formatter)

  ```bash
  pip install black
  ```

  - Ripgrep

  ```
  paru -S ripgrep
  ```

- On Fedora you have to install c++ and lstdc++ :

```bash
sudo dnf install g++
#and
sudo yum install glibc-static libstdc++-static -y;
```

- On windows you have to install
  - [gcc]():
    ```bash
    sccop install gcc
    ```
  - [Zig]()
    ```bash
    scoop install zig
    ```

</details>
</blockquote></details>
