# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"
plugins=(
git
zsh-autosuggestions
zsh-syntax-highlighting
web-search
copydir
copyfile
jump
)

source $ZSH/oh-my-zsh.sh


# Aliases
#ZSH
alias zshrc="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias src="source ~/.zshrc"
#System:
alias update="sudo apt update && sudo apt upgrade"
alias ls="lsd -Fl"
alias la="lsd -Fla"
#Apps and tools:
alias soundbeat="cava"
alias pipe="pipes.sh"
alias matrix='cmatrix'
alias typer='ttyper'
alias kittyconfig="vim ~/.config/kitty/kitty.conf"
alias bspwmrc="vim ~/.config/bspwm/bspwmrc"
alias sxhkdrc="vim ~/.config/sxhkd/sxhkdrc"
alias starshipconfig="vim ~/.config/starship.toml"
alias brewupdate="brew update --force --quiet"
#Starship
#eval "$(starship init zsh)"
#Brew Laucher:
eval "$(homebrew/bin/brew shellenv)"

# Launching Script:
# ColorScript 
colorscript random

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
