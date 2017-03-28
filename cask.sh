#!/bin/bash

# Ask for the administrator password upfront.
sudo -v

brew install caskroom/cask/brew-cask

# Important.
brew cask install google-drive
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vagrant
brew cask install vagrant-bar
brew cask install atom
brew cask install docker
brew cask install mysql-utilities
brew cask install mysqlworkbench

# Browsers.
brew cask install google-chrome-canary
brew cask install firefoxnightly

# Media.
brew cask install vlc

# Other.
brew cask install gpgtools
brew cask install tcl

# cleanup.
brew cask cleanup
