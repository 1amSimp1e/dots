This neovim configs was inspired by [Lunar Vim](https://github.com/LunarVim/Neovim-from-scratch) configs

- [Neovim installations](https://github.com/neovim/neovim/wiki/Installing-Neovim):

  - Ubuntu:

  ```fish
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt update && sudo apt upgrade
  sudo apt install neovim
  ```

  - Arch:

  ```
  git clone https://aur.archlinux.org/packages/neovim-git
  cd neovim-git
  makepkg -si
  ```

  - Windows:
    - [Chocolatey](https://chocolatey.org/install): Package manager for windows
    ```
    choco install neovim --pre
    ```
    - [Scoop](https://scoop.sh/): A command-line installer for windows
    ```
    scoop bucket add versions
    scoop install neovim-nightly
    ```

## Dependencies:

- Rip grep:

  - On Arch:

    ```
    paru -S ripgrep
    ```

  - On Ubuntu:
    ```
    sudo apt install ripgrep
    ```

- Xsel:
  - On Arch:
  ```
  sudo pacman -S xsel
  ```
  - On Ubuntu:
  ```
  sudo apt instal xsel
  ```
- [Python](https://www.python.org/downloads/):

  - Arch:

  ```
  sudo pacman -S python
  # or
  paru -S python
  ```

  - Neovim python support :

  ```
  pip install pynvim
  ```

- [Node](https://nodejs.org/en/download/)
  - **Install npm (for linux users only !!)**:
  ```
  sudo pacman -S npm
  # or
  paru -S npm
  ```
  - Neovim node support
  ```
  npm i -g neovim
  ```

## Font:

- [A nerd font](https://www.nerdfonts.com/font-downloads)
- [Condicon](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf)
- [An emoji font](https://github.com/googlefonts/noto-emoji/blob/main/fonts/NotoColorEmoji.ttf)
