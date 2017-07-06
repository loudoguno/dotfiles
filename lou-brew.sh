#!/usr/bin/env bash
# lou-brew



# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all


brew install blueutil



# Remove outdated versions from the cellar.
brew cleanup