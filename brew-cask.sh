#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# daily
brew cask install alfred
brew cask install evernote
brew cask install dropbox
brew cask install 1password
brew cask install rescuetime
brew cask install flux
brew cask install spotify
brew cask install grammarly
brew cask install slack

# dev
brew cask install visual-studio-code
brew cask install imagealpha
brew cask install imageoptim
brew cask install color-oracle
brew cask install cyberduck
brew cask install kaleidoscope
brew cask install sequel-pro
brew cask install insomnia


# browsers
brew cask install google-chrome-canary
brew cask install chromium
brew cask install opera
brew cask install vivaldi
brew cask install yandex
brew cask install brave-browser

# less often
brew cask install vlc
brew cask install transmission


# Not on cask but I want regardless.

# Google Chrome (Somebody said it shouldn't be downloaded with cask)
# Firefox (I guess that goes for Firefox as well… paranoid!)
# Also we can download Edge on the side as well. I guess.
