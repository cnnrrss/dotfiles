#!/usr/bin/env bash

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash

brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install tmux

# Install other useful binaries.
brew install ack
brew install jq       # json query
brew install git
brew install htop
brew install tree     # display dir as a tree
brew install yarn
brew install python
brew install dep      # yes, still not everyone on modules
brew install thefuck  # utility to fix last run cmd
brew install lynx     # terminal based web browser
brew install hexyl    # cmd-line hex viewer
brew install graphviz

# Install interactive unix cl filter to be used with list; files, history, processes, hostnames, bookmarks, git commits, etc.
brew install ripgrep  # a better grep
brew install fzf      # a fuzzy finder
brew install zsh      # a better shell
brew install zsh-syntax-highlighting

# just for fun
brew install shpotify

# Remove outdated versions from the cellar.
brew cleanup
