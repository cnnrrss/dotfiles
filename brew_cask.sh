#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install brew-cask

echo "Install Apps"

brew cask install --appdir="~/Applications" alfred
brew cask install --appdir="~/Applications" amphetamine
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" dash
brew cask install --appdir="~/Applications" docker
brew cask install --appdir="~/Applications" dropbox
brew cask install --appdir="~/Applications" firefox
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" moom
brew cask install --appdir="~/Applications" postman
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" sourcetree
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" sublime-text
brew cask install --appdir="~/Applications" visual-studio-code
# brew cask install --appdir="~/Applications" ideaIU-2017.3.7

brew cleanup

echo "Link apps to alfred"
brew cask alfred link

echo "done!"