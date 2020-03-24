 # If you come from bash you might have to change your $PATH.
 export GOPATH=$HOME/go
 # Add Visual Studio Code (code)
 export VSCODEPATH="${HOME}/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
 # Add pyenv Path
 export PYENVPATH="${HOME}/.pyenv"
 # NPM path
 export NPMPATH=$HOME/.npm-packages/lib/node_modules
 export NPM_CONFIG_PREFIX=$HOME/.npm-global
 # Update Path
 export PATH=$HOME/bin:$PATH:$GOPATH/bin:$VSCODEPATH:$PYENVPATH:$NPMPATH

 # Pyenv
 eval "$(pyenv init -)"

# Setup Go Paths
GO_TOOLS_PATH="/usr/local/Cellar/go/1.13/bin/go"
if [ -d "$GO_TOOLS_PATH" ] ; then
  PATH="$GO_TOOLS_PATH:$PATH"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean" # cypher, theunraveler

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions thefuck)

source $ZSH/oh-my-zsh.sh

# Load Zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"

# User configuration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Load shell dotfiles TODO symlink / organize
source /Users/cnnrrss/Projects/dotfiles/.aliases
source /Users/cnnrrss/Projects/dotfiles/.functions
source /Users/cnnrrss/Projects/dotfiles/.exports
source /Users/cnnrrss/Projects/dotfiles/.secrets

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

# Usage: $ fzf

# TODO
# Files under current directory
# - You can select multiple items with TAB key
# vim **<TAB>

# Files under parent directory
# vim ../**<TAB>

# Files under parent directory that match `fzf`
# vim ../fzf**<TAB>

# Files under your home directory
# vim ~/**<TAB>

# Directories under current directory (single-selection)
# cd **<TAB>

# Directories under ~/github that match `fzf`
# cd ~/github/fzf**<TAB>

# Can select multiple processes with <TAB> or <Shift-TAB> keys
# kill -9 <TAB>

# For ssh and telnet commands, extracted from /etc/hosts and ~/.ssh/config.o
# ssh **<TAB>
# telnet **<TAB>

# Env vars & aliases
# unset **<TAB>
# export **<TAB>
# unalias **<TAB>
#
#
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]]      && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/  local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/ local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
