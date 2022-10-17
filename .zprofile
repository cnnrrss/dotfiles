export PATH=/opt/homebrew/bin:/$HOME/bin:$PATH

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

export PAGER="less"
export EDITOR="vim"

# LESS configuration:
# - show ln # / total num of lines
# - colored output
# - read file to the end, to enable the full metadata in status line
export LESS="-MR+Gg"


# Case-insensitive globbing (used in pathname expansion)
#shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
#shopt -s histappend;

# Autocorrect typos in path names when using `cd`
#shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
# for option in autocd globstar; do
#    shopt -s "$option" 2> /dev/null;
# done;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config |    grep -v "[?*]" | cut -d "    " -f2- | tr ' ' '\n')" scp sftp ssh;