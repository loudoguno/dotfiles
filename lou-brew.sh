#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade --all


# Install Packages
brew install blueutil
brew install mackup


# Casks# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" xquartz

brew cask install --appdir="~/Applications" dropbox

brew cask install --appdir="~/Applications" seil
brew cask install --appdir="~/Applications" karabiner
brew cask install --appdir="~/Applications" keyboard-maestro
brew cask install --appdir="~/Applications" bettertouchtool
brew cask install --appdir="~/Applications" slate
brew cask install --appdir="~/Applications" alfred
brew cask install --appdir="~/Applications" bartender

brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" firefox
brew cask install --appdir="~/Applications" evernote
brew cask install --appdir="~/Applications" sublime
brew cask install --appdir="~/Applications" pocket

brew cask install --appdir="~/Applications" snagit
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" keepassx

brew cask install --appdir="~/Applications" appcleaner



# Remove outdated versions from the cellar.
brew cleanup