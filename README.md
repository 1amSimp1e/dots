<div align="center">
    <h1>Kanso🌙<h1>
</div>

### ⚠️ Note that this still wip project and still need lots of improvements!! Use at your own risk

## Setups 🔧
> Just [R.T.F.M](https://en.wikipedia.org/wiki/RTFM)
### Install dependencies

```
paru -S hyprland-git eww-wayland-git blueberry bluez brillo coreutils dbus findutils \
gawk jaq jc libnotify networkmanager pavucontrol playerctl procps pipewire-pulse \
ripgrep socat udev upower util-linux wireplumber light bluez-utils swayosd swaylock-effects \
jq grimblast grim slurp wl-clipboard pamixer brightnessctl nwg-look-bin hyprpicker-git nemo \
bc swaybg rofi-lbonn-wayland-git rofi-emoji ffmpegthumbnailer gst-libav gst-plugins-ugly swayidle gross-git dunst
```

> Next provided packaged udev rules + adding the user to video group by running 
```
sudo usermod -a -G video $USER
```
Now, everything should work as expected.

> Note that to make Hyprland work flawlessly refer to [Hyprland Wiki](https://wiki.hyprland.org/Useful-Utilities/Must-have/)

### Install Kanso 🌙

```
git clone -b Kanso🌙 https://github.com/iamverysimp1e/dots
cd dots
cp -r ./configs/* ~/.config/
```

### Neccesary Font: 
 - [Iosveka nerd Font](https://github.com/be5invis/Iosevka)
 - [Roboto Font](https://fonts.google.com/specimen/Roboto)
 - [Material Icons](https://github.com/google/material-design-icons/tree/master/font)
 - [Font Awesome](https://fontawesome.com/download)

Once you downloaded all of that font unpack them, make a folder named `~/.fonts` then move all of it to that folder; then reload use this command to reload: 

```
fc-cache -fv
```

