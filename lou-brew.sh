#!/usr/bin/env bash
# lou-brew

# Ask for the administrator password upfront.
sudo -v

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade --all


# Install Packages
brew install blueutil


# Casks
brew cask install --appdir="~/Applications" dropbox
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" alfred

brew cask install --appdir="~/Applications" seil
brew cask install --appdir="~/Applications" karabiner
brew cask install --appdir="~/Applications" keyboard-maestro
brew cask install --appdir="~/Applications" bettertouchtool
brew cask install --appdir="~/Applications" slate

brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" firefox
brew cask install --appdir="~/Applications" evernote
brew cask install --appdir="~/Applications" sublime



brew cask install --appdir="~/Applications" snagit

brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" keepassx


brew cask install --appdir="~/Applications" appcleaner





# Remove outdated versions from the cellar.
brew cleanup