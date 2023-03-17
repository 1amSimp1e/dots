<div align="center">
    <h1> 1amSimp1e's Dot Files 📁</h1>
    <h3> Place where I store all of my own customization </h3>
</div>

<div align="center">

![](https://img.shields.io/github/last-commit/iamverysimp1e/dots?&style=for-the-badge&color=8D748C&logoColor=D9E0EE&labelColor=252733)
![](https://img.shields.io/github/stars/iamverysimp1e/dots?style=for-the-badge&logo=starship&color=AB6C6A&logoColor=D9E0EE&labelColor=252733)
[![](https://img.shields.io/github/repo-size/iamverysimp1e/dots?color=%23DDB&label=SIZE&logo=codesandbox&style=for-the-badge&logoColor=D9E0EE&labelColor=252733)](https://github.com/1amSimp1e/dots)
<a href="https://github.com/iamverysimp1e/dots/blob/main/LICENSE">
<img alt="License" src="https://img.shields.io/github/license/iamverysimp1e/dots?style=for-the-badge&logo=starship&color=A1C999&logoColor=D9E0EE&labelColor=252733" />
</a>
<a href="https://github.com/iamverysimp1e/dots/issues">
<img alt="Issues" src="https://img.shields.io/github/issues/iamverysimp1e/dots?style=for-the-badge&logo=bilibili&color=5E81AC&logoColor=D9E0EE&labelColor=252733" />
</a>

</div>

# Contents 📚:

### **👻 Don't blindly use my setup. Use at your own risk!!!**

### Overview 🎑

- [🌿 Windows Manger]():
  - [🍚 HyprLand](#hypr)
  - [🍙 GNOME](#gnome)
- [👽 Terminal]():
  - **☄ Emulator**:
    - [kitty 😽](https://sw.kovidgoyal.net/kitty/)
    - [Alacritty](https://alacritty.org/)
  - [🌌 Shell](#shell): 
    - [Oh My Zsh](https://ohmyz.sh/#install)
    - **Plugin Manager**: [Zap](https://www.zapzsh.org/)
    - **🤖 Prompt**: [StarShip Prompt 🚀](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [✏️ Text Editor & IDE]():
  - [💫 NeoVim](#neovim)
  - [🔱 VsCodium](#VsCodium) 

# Hyprland 🍚<a name = "hypr"></a>:

### [Late Night🌃](https://github.com/1amSimp1e/dots/tree/late-night-%F0%9F%8C%83)

![](https://raw.githubusercontent.com/iamverysimp1e/dots/late-night-%F0%9F%8C%83/ScreenShots/HyprLand/preview.png)

### [Balcony🚊](https://github.com/1amSimp1e/dots/tree/balcony%F0%9F%9A%8A)
![](https://raw.githubusercontent.com/1amSimp1e/dots/balcony%F0%9F%9A%8A/ScreenShots/HyprLand/Rice.png)

## Credits

Thanks to:

- [r/unixporn community](https://www.reddit.com/r/unixporn/)
- [Hyprland Development Discord server](https://discord.com/invite/hQ9XvMUjjr)

</blockquote></details>

# GNOME 🍙<a name = "gnome"></a>:

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

# 🌌 Shell Setups <a name = "shell"></a>

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
