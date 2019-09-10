#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install brew-cask

apps=(
    alfred
    amphetamine
    google-chrome
    dash
    docker
    dropbox
    firefox
    iterm2
    moom
    postman
    slack
    sourcetree
    spotify
    sublime-text
    visual-studio-code
    ideaIU-2017.3.7
)

echo "Install Apps"

brew cask install --appdir="/Applications" ${apps[@]}

brew cleanup

echo "Link apps to alfred"
brew cask alfred link

echo "done!"