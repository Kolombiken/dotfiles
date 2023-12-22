#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed


# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install wget
brew install wget

# Install more recent versions of some OS X tools
brew install nano
brew install grep
brew install vim

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
brew install hub

# Install other useful binaries
brew install node
brew install imagemagick
brew install git-delta
brew install z
brew install ffmpeg

## Install json things
brew install jq
brew install gron

brew install zsh
brew install zsh-completions
