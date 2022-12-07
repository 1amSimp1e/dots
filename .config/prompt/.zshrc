# Zap 
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

ZSH_THEME="robbyrussell"

# Plugins 
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Alias 
  # Replacement Icons for ls 
alias ll="exa -l --icons"
alias la="exa -Ga --icons"
alias lt="exa -lT --icons"
alias lta="exa -lTa --icons"

  # Other 
alias nv="nvim"
alias g="git"
alias lg="lazygit"
alias pvt="pipe-viewer -n --no-video-info --player=mpvt"
alias neofetch='neofetch --source ~/.config/neofetch/logo'
alias c='vscodium'

# Zap 
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "agkozak/zsh-z"
plug "esc/conda-zsh-completion"


# Starship prompt
eval "$(starship init zsh)"
