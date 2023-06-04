# Dribbblish

### Base
![base](base.png)
### White
![white](white.png)
### Dark
![dark](dark.png)
### Nord-Light
![nord-light](nord-light.png)
### Nord-Dark
![nord-dark](nord-dark.png)
### Beach-Sunset
![beach-sunset](beach-sunset.png)
### Purple
![purple](purple.png)
### Samourai
![samourai](samourai.png)
### Gruvbox
![gruvbox](gruvbox.png)
### Rosé Pine
![rosepine](rosepine.png)
### Lunar
![lunar](lunar.png)

##  Features
### Resizable sidebar

<img src="https://i.imgur.com/1zomkmd.png" alt="img" align="center" width="500px"> 

### Customizable sidebar
Rearrange icons positions, stick icons to header or hide unnecessary to save space.
Turn on "Sidebar config" mode in Profile menu and hover on icon to show control buttons.
After you finish customizing, turn off Config mode in Profile menu to save.

<img src="https://i.imgur.com/86gqPe8.png" alt="img" align="center" width="500px"> 

### Playlist Folder image
Right click at folder and choose images for your playlist folder. Every image formats supported by Chrome can be used, but do keep image size small and in compressed format.

<img src="https://i.imgur.com/WGQ7Bev.gif" alt="img" align="center" width="500px"> 

### Left/Right expanded cover
In profile menu, toggle option "Right expanded cover" to change expaned current track cover image to left or right side, whereever you prefer.

## Auto-install
Make sure you are using spicetify >= v2.5.0 and Spotify >= v1.1.56.
### Windows
```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-themes/master/Dribbblish/install.ps1" | Invoke-Expression
```

## Manual Install
Run these commands:

### Linux and MacOS:
In **Bash**:
```bash
cd "$(dirname "$(spicetify -c)")/Themes/Dribbblish"
spicetify config current_theme Dribbblish color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply
```

### Windows
In **Powershell**:
```powershell
cd "$(spicetify -c | Split-Path)\Themes\Dribbblish"
spicetify config current_theme Dribbblish color_scheme base
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1 inject_theme_js 1
spicetify apply
```

From Spotify > v1.1.62, in sidebar, they use an adaptive render mechanic to actively show and hide items on scroll. It helps reducing number of items to render, hence there is significant performance boost if you have a large playlists collection. But the drawbacks is that item height is hard-coded, it messes up user interaction when we explicity change, in CSS, playlist item height bigger than original value. So you need to add these 2 lines in Patch section in config file:
```ini
[Patch]
xpui.js_find_8008 = ,(\w+=)32,
xpui.js_repl_8008 = ,${1}56,
```

## Change Color Schemes
There are 9 color schemes you can choose: `base`, `white`, `dark`, `dracula`, `nord-dark`, `nord-light`, `beach-sunset`, `samourai`, `purple`. Change scheme with commands:
```
spicetify config color_scheme <scheme name>
spicetify apply
```

## Auto-uninstall 
### Windows
```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-themes/v2/Dribbblish/uninstall.ps1" | Invoke-Expression
```

## Manual uninstall 
Remove the dribbblish theme with the following commands 

```
spicetify config current_theme " " color_scheme " "
spicetify apply
```
