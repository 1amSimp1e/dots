<div align="center">
    <h1>✨Tue Nhan's dot files✨</h1>
    <h3></h3>
</div>

<div align="center">

![](https://img.shields.io/github/last-commit/iamverysimp1e/dots?color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&style=for-the-badge)
![](https://img.shields.io/github/stars/iamverysimp1e/dots?color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&style=for-the-badge)
[![](https://img.shields.io/badge/Neovim-0.9+-blueviolet.svg?style=for-the-badge&logo=Neovim&color=C9CBFF&logoColor=D9E0EE&labelColor=302D41&)](https://github.com/neovim/neovim)
[![](https://img.shields.io/github/repo-size/iamverysimp1e/dots?color=%23DDB6F2&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=302D41)](https://github.com/iamverysimp1e/dots)

</div>

![](https://github.com/iamverysimp1e/dots/blob/main/ScreenShots/combinedImages.png)

## Contents:

### **👻 Don't blindly use my setup. Use at your own risk!!!**

- [Windows Manger]():
  - [HyprLand 🍚](#hypr)
  - [GNOME 🍙](#gnome)
- [Neovim Setups](#neovim)

## Hyprland 🍚<a name = "hypr"></a>:

![](https://github.com/iamverysimp1e/dots/blob/main/ScreenShots/HyprLand/Rice1.png)
![](https://github.com/iamverysimp1e/dots/blob/main/ScreenShots/HyprLand/Rice2.png)
![](https://github.com/iamverysimp1e/dots/blob/main/ScreenShots/HyprLand/Rice3.png)

### Setup 🔧:

> To install my dots just [R.T.F.M](https://en.wikipedia.org/wiki/RTFM)

<details><summary> 1. Install Required dependencies: </summary><blockquote>

⚠️ This setup instructions only provided for Arch Linux (and other Arch-based distributions)

- First of all, Install the newest [Hyprland](https://hyprland.org/) using this [guide](https://wiki.hyprland.org/Getting-Started/Installation/) depend on your Distro:

  ```zsh
  yay -S hyprland-git
  ```

- Install Rofi, Dunst, Waybar and Alacritty(optional):

  ```
  yay -S rofi dunst waybar-hyprland-git alacritty
  ```

</blockquote></details>

<details><summary>2. Install my dots:</summary><blockquote>

> Clone the repos

```zsh
git clone https://github.com/iamverysimp1e/dots
cd dots/.config
```

> Copy configs file + Wallpaper

```zsh
cp -r waybar alacritty hypr rofi dunst ~/.config
# Wallpaper
cp -r Wallpaper ~/Pictures
```

> Install a few font

Necessary Font:

- [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip)
- [JetBrains Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip)

Optional Font:

- [NotoColorEmoji](https://github.com/googlefonts/noto-emoji/raw/main/fonts/NotoColorEmoji.ttf)
- [Codicon](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf)

Once you download them and unpack them, place them into ~/.fonts or ~/.local/share/fonts.

Then run this command for your system to detect the newly installed fonts.

```
fc-cache -fv
```

Congratulations! You had installed this beautiful rice on your machine🍚
Log out your current desktop session and login to Hyprland:)

## Credits

Thanks to [R/unixporn community](https://www.reddit.com/r/unixporn/) & [Hyprland Development Discord servier](https://discord.com/invite/hQ9XvMUjjr)

</blockquote></details>

## GNOME 🍙<a name = "gnome"></a>:

![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Gnome_Rice/Rice1.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Gnome_Rice/Rice2.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Gnome_Rice/Rice3.png)

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

## Neovim Setups <a name = "neovim"></a>:

![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Neovim/neovim_rice1.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Neovim/neovim_rice2.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Neovim/neovim_rice3.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Neovim/neovim_rice4.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Neovim/neovim_rice5.png)

<details><summary>How to setups</summary><blockquote>
  </blockquote>

- Setups:

```
├── init.lua
├── lua
│  └── user
│     ├── alpha.lua
│     ├── autocommands.lua
│     ├── autopairs.lua
│     ├── bufferline.lua
│     ├── cmp.lua
│     ├── colorizer.lua
│     ├── colorscheme.lua
│     ├── comment.lua
│     ├── gitsigns.lua
│     ├── impatient.lua
│     ├── indentline.lua
│     ├── keymaps.lua
│     ├── lsp
│     │  ├── configs.lua
│     │  ├── handlers.lua
│     │  ├── init.lua
│     │  ├── null-ls.lua
│     │  └── settings
│     │     ├── jsonls.lua
│     │     ├── pyright.lua
│     │     └── sumneko_lua.lua
│     ├── lualine.lua
│     ├── nvim-transparent.lua
│     ├── nvim-tree.lua
│     ├── options.lua
│     ├── plugins.lua
│     ├── project.lua
│     ├── syntax.lua
│     ├── telescope.lua
│     ├── toggleterm.lua
│     ├── treesitter.lua
│     └── whichkey.lua
└── plugin
   └── packer_compiled.lua
```

- **Installations**:

```fish
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt upgrade
sudo apt install neovim
```

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
- Other optional package for formatting & finding text:):

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
