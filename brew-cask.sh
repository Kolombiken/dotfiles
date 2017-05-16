#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install alfred
brew cask install evernote
brew cask install spectacle
brew cask install dropbox
brew cask install 1password
brew cask install rescuetime
brew cask install flux
brew cask install spotify

# dev
brew cask install sublime-text
brew cask install atom
brew cask install visual-studio-code
brew cask install imagealpha
brew cask install imageoptim
brew cask install virtualbox
brew cask install color-oracle
brew cask install filezilla
brew cask install kaleidoscope
brew cask install tunnelblick

# browsers
brew cask install google-chrome-canary
brew cask install firefoxnightly
brew cask install webkit-nightly
brew cask install chromium
brew cask install lynxlet
brew cask install opera
brew cask install vivaldi
brew cask install yandex
brew cask install brave

# less often
brew cask install vlc
brew cask install transmission


# Not on cask but I want regardless.

# Google Chrome (Somebody said it shouldn't be downloaded with cask)
# Firefox (I guess that goes for Firefox as well… paranoid!)
# Local by Flywheel (https://local.getflywheel.com/ - awesome for those wp-sites)
