#!/usr/bin/env bash

# Unsure
brew install ncurses
brew install moreutils

# Install some work specific brew tools
brew install pandoc
brew install kubectl # Kubernetes tools
brew install kustomize

brew tap weaveworks/tap
brew install weaveworks/tap/eksctl

brew install aws-sam-cli

# zip file trimmer
brew install upx
