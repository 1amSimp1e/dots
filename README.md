<div align="center">
    <h1>✨Tue Nhan's dot files✨</h1>
    <h3></h3>
</div>

<div align="center">

![](https://img.shields.io/github/last-commit/iamverysimp1e/dots?color=212121&logo=&logoColor=131821&style=for-the-badge)
![](https://img.shields.io/github/stars/iamverysimp1e/dots?color=212121&logo=&logoColor=131821&style=for-the-badge)
[![](https://img.shields.io/badge/Neovim-0.8+-blueviolet.svg?style=for-the-badge&logo=Neovim&color=212121&logoColor=green)](https://github.com/neovim/neovim)

</div>

![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Combined_Image.jpg)

## Contents:

### **👻 Don't blindly use my setup. Use at your own risk!!!**

- [Neovim Setups](#neovim)
- [Windows Manger]():
  - [GNOME](#gnome)
  - [Microsoft Windows](#windows)
- [Fish](#fish)
- [zsh](#zsh)
- [Tmux](#tmux)
- [Addition Apps and Terminal Tools](#Apps)

## GNOME SETUPS<a name = "gnome"></a>:

![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice1.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice2.png)
![](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Rice3.png)

<details><summary> Gnome configs </summary><blockquote>

- GTK Themes: Based on [AestheticStuff by rxyhn](https://github.com/rxyhn/AestheticStuff)

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

![Pictures 5](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new3.png)
![Pictures 9](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new4.png)
![Pictures 7](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new3.gif)
![Pictures 8](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/neovim_new2.gif)

<details><summary>Optional Package and apps</summary><blockquote>
  </blockquote>

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
- Other optional package for formatting:

  - Prettier

  ```bash
  npm install -g prettier
  ```

  - Black (Python formatter)

  ```bash
  pip install black
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

## Windows SETUPS<a name = "Windows"></a>:

![Pictures 4](https://github.com/iamverysimp1e/Public-Dot-Files/blob/main/ScreenShots/Windows_Rice.png)

<details><summary> Windows configs </summary><blockquote>

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

</details>
</blockquote></details>

## Tmux setups <a name = "tmux"></a>:

- I use [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm#installation) with custom [one dark theme](https://github.com/odedlaz/tmux-onedark-theme) after you install tmux plugin manager launch tmux and press `prefix` + I (capital I):
  - Change this in your ~/.tmux/plugins/tmux-one-dark-terminal:
  ```
  onedark_black="#0F1317"
  onedark_visual_grey="#1f2830"
  ```

## Zsh

- I use [oh-my-zsh](https://ohmyz.sh/#install) as zsh framework, extensions that i use:
  - [zsh-autosuggestion](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
  - [zsh-syntax-highlight](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)

## Apps & Other Terminal Tools <a name = "Apps"></a>:

- [Alacritty](https://github.com/alacritty/alacritty/blob/master/INSTALL.md#debianubuntu): Fast, Open GL Terminal Emulator
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
