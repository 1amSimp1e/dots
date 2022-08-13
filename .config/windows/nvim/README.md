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

- open `nvim` then enter the following commands:

```
:checkhealth
```

- You probably notice you don't have support for copy and paste also that python and node haven't been setup

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
  - Then you have to install [Python](https://www.python.org/downloads/):

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

  - And same as [Node](https://nodejs.org/en/download/) too
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

- Additional code formats packages :

```
npm install -g prettier
pip3 install autopep8
pip3 install black
```

## Font:

- [A nerd font](https://www.nerdfonts.com/font-downloads)
- [Condicon](https://github.com/microsoft/vscode-codicons/raw/main/dist/codicon.ttf)
- [An emoji font](https://github.com/googlefonts/noto-emoji/blob/main/fonts/NotoColorEmoji.ttf)
