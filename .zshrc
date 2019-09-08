# Add option MANPATH
export MANPATH=/opt/local/share/man:$MANPATH

# Optional for Oh My ZSH, if you choose to do so #
##################################################

# Path to your oh-my-zsh installation.
export ZSH="/Users/connorvanderhook/.oh-my-zsh"

##################################################

# Load Zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"