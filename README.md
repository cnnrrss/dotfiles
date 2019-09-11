# DotFiles

Shamelessly influenced by a much smarter programmer..

[Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles project](https://github.com/mathiasbynens/dotfiles)

## Requirements

If you wish, set zsh as your login shell:

`chsh -s $(which zsh)`
OR
`sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh`

## Install (for Bash)

Using Git and the bootstrap script
You can clone the repository wherever you want. (I like to keep it in ~/Projects/dotfiles, with ~/dotfiles as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

`git clone https://github.com/cnnrrss/dotfiles.git && cd dotfiles && source bootstrap.sh`

To update, cd into your local dotfiles repository and then:

`source bootstrap.sh`

Alternatively, to update while avoiding the confirmation prompt:

`set -- -f; source bootstrap.sh`

### Specify the $PATH
If ~/.path exists, it will be sourced along with the other files, before any feature testing (such as detecting which version of ls is being used) takes place.

Here’s an example ~/.path file that adds /usr/local/bin to the $PATH:

`export PATH="/usr/local/bin:$PATH"`

Add custom commands without creating a new fork
If ~/.extra exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My ~/.extra looks something like this:


```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Connor Ross G"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="connor@mailinator.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

You could also use ~/.extra to override settings, functions and aliases from my dotfiles repository. It’s probably better to fork this repository instead, though.


## For ZSH

### Sensible macOS defaults
When setting up a new Mac, you may want to set some sensible macOS defaults:

`./.macos`

### Install Homebrew formulae
When setting up a new Mac, you may want to install some common Homebrew formulae (after installing Homebrew, of course):

`./brew.sh`

### Download apps

`./brew_cask.sh`

**NOTE** It is a pain to use `brew cask install` for specific versions of apps. See your Dropbox for .dmg files of specific version apps.

#### Stack
Shell = ZSH

