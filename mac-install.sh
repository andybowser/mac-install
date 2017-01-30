#!/usr/bin/env bash

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
# brew update

# Binaries
binaries=(
  ssh-copy-id
)

# Install binaries
echo "Installing binaries..."
brew install ${binaries[@]}

# Cleanup
brew cleanup

# Install brew-cask
brew install caskroom/cask/brew-cask
# brew tap caskroom/fonts
brew tap caskroom/versions

# Casks
casks=(
  appcleaner
  firefox
  gimp
  google-chrome
  atom
  vagrant
  virtualbox
)

# Install casks to /Applications
echo "Installing casks..."
brew cask install --appdir="/Applications" ${casks[@]}
