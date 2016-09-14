#!/bin/sh

# only run on Mac OS X
[ $(uname -s) = "Darwin" ] || { echo 'Only runs on Mac OS X!!!' ; exit 1 ; }
# Install Homebrew
which -s brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Essential Brew Stuffs
brew tap caskroom/cask
brew tap Homebrew/bundle
brew install brew-cask-completion

# Install Base Brew Files
brew bundle --verbose
