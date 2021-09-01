 # Load shell dotfiles TODO symlink / organize
source $HOME/Projects/dotfiles/.aliases
source $HOME/Projects/dotfiles/.functions
source $HOME/Projects/dotfiles/.exports
source $HOME/Projects/dotfiles/.secrets # secrets should always be last


# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="apple" # clean, cypher, theunraveler

# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git zsh-autosuggestions thefuck)

source $ZSH/oh-my-zsh.sh

# Load Zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# User configuration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TheFuck
eval $(thefuck --alias fuck)

# ----- NOT USING Kubectl Much these days
# Kubectl completion
# source <(kubectl completion zsh)

# AWS CLI completion
source /usr/local/bin/aws_zsh_completer.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion