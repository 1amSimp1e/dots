##### Last tested version: `1.1.97.962.g24733a46`
# SpotifyNoPremium
A cross-platform Spicetify theme which removes all Spotify ads (audio, banner, popup, etc.) and declutters the stock UI. 

---
### For installation instructions, go here: [Installation](#installation) <br>
**If you see a blank/black screen, please follow this link for a fix: https://github.com/Daksh777/SpotifyNoPremium/issues/46#issuecomment-1059945231**


---

# Features
This is a Spicetify theme which:
- Removes all audio, banner, sponsored and popup ads ([Source](https://github.com/CharlieS1103/spicetify-extensions/blob/main/adblock/adblock.js))
- Removes `Upgrade` button
- Removes `Upgrade to Premium` entry in drop-down menu
- Removes ad placeholders (in Home tab and above the now playing bar)
- Adds pointer cursors to clickable elements (See [#10](https://github.com/Daksh777/SpotifyNoPremium/discussions/10))

# Screenshots

| Before | After |
| ----------- | ----------- |
| <img src="https://i.imgur.com/o714XSp.png"/> | <img src="https://i.imgur.com/289Qq2v.png"/> |
| <img src="https://i.imgur.com/HVjTHTO.png"/> | <img src="https://i.imgur.com/Nhy3OOJ.png"/> |

<img src="https://i.imgur.com/kEffDy8.png">

# Installation

## 1. Automatic installation/updates for Windows users
##### **Note: If you're on Windows 8.1 or lower, please install Powershell v5.1 since the automatic installation script does not support Powershell versions below v5. <br> Download here: https://www.microsoft.com/en-us/download/details.aspx?id=54616 <br> More info: [#30](https://github.com/Daksh777/SpotifyNoPremium/issues/30#issuecomment-962822618)**
### Installation
Run the `install.bat` if you are installing for the the first time. <br>
[[CLICK HERE TO DOWNLOAD]](https://daksh777.github.io/SpotifyNoPremium/install.bat) <br>


### Updating
You can fetch the latest version of this theme by running the `update.bat` script <br>
[[CLICK HERE TO DOWNLOAD]](https://daksh777.github.io/SpotifyNoPremium/update.bat)


## 2. Manual installation for all users
> **Note for users who install this manually:** Make sure to use the latest Spicetify CLI and Spotify App. Run `spicetify upgrade` and then `spicetify auto` to update Spicetify to the latest version.
### Linux and MacOS:
In **Bash**:
```bash
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
cd "$(dirname "$(spicetify -c)")/Themes"
git clone https://github.com/Daksh777/SpotifyNoPremium
spicetify config current_theme SpotifyNoPremium
cp "$(dirname "$(spicetify -c)")/Themes/SpotifyNoPremium/adblock.js" "$(dirname "$(spicetify -c)")/Extensions"
spicetify config extensions adblock.js
spicetify apply
```

#### Windows
In **Powershell**:
```powershell
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1" | Invoke-Expression
cd "$(spicetify -c | Split-Path)\Themes"
git clone https://github.com/Daksh777/SpotifyNoPremium
spicetify config current_theme SpotifyNoPremium
Copy-Item "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium\adblock.js" "$(spicetify -c | Split-Path)\Extensions"
spicetify config extensions adblock.js
spicetify apply
```

# Updating Manually
### Linux and MacOS:
In **Bash**:
```bash
cd "$(dirname "$(spicetify -c)")/Themes/SpotifyNoPremium"
git pull
cp "$(dirname "$(spicetify -c)")/Themes/SpotifyNoPremium/adblock.js" "$(dirname "$(spicetify -c)")/Extensions"
spicetify config extensions adblock.js
spicetify auto
```

#### Windows
In **Powershell**:
```powershell
cd "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium"
git pull
Copy-Item "$(spicetify -c | Split-Path)\Themes\SpotifyNoPremium\adblock.js" "$(spicetify -c | Split-Path)\Extensions"
spicetify config extensions adblock.js
spicetify auto
```
