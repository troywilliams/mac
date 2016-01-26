#!/bin/bash

# Ask for the administrator password upfront.
sudo -v

brew upgrade brew-cask

# Important.
brew cask install google-drive
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install vagrant
brew cask install vagrant-bar
brew cask install packer
brew cask install vault
brew cask install node
brew cask install go
brew cask install mysql-utilities
brew cask install mysqlworkbench

# Browsers.
brew cask install google-chrome-canary
brew cask install firefox-nightly

# Media.
brew cask install miro-video-converter
brew cask install vlc

# Other
brew cask install gpgtools

# cleanup.
brew cask cleanup
