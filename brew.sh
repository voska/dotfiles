#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2
brew install zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install hydra
brew install knock
brew install nmap
brew install sqlmap

# Install clis for hosting
brew install heroku-toolbelt
brew install awscli

# Install databases
brew install mysql
brew install sqlite
brew install postgresql

# Install other useful binaries.
brew install dark-mode
brew install git
brew install git-lfs
brew install imagemagick
brew install p7zip
brew install speedtest_cli
brew install tree
brew install webkit2png
brew install ffmpeg
brew install keybase

# Install cask and apps.
brew install cask
brew cask install dropbox
brew cask install google-chrome
brew cask install sublime-text3
brew cask install iconping
brew cask install slack
brew cask install iterm2
brew cask install 1password
brew cask install freeze
brew cask install disk-inventory-x
brew cask install imageoptim
brew cask install limechat
brew cask install postgres

# Remove outdated versions from the cellar.
brew cleanup
