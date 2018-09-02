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
brew install awscli
brew install heroku

# Install databases
brew install mysql
brew install postgresql
brew install sqlite

# Install other useful binaries.
brew install dark-mode
brew install ffmpeg
brew install git
brew install git-lfs
brew install imagemagick
brew install p7zip
brew install speedtest_cli
brew install tig
brew install tree
brew install webkit2png
brew install cheat
brew install tldr
brew install prettyping
brew install bat

# Install cask and apps.
brew install cask
brew cask install 1password
brew cask install arq
brew cask install dropbox
brew cask install firefox
brew cask install github
brew cask install gnucash
brew cask install google-adwords-editor
brew cask install google-chrome
brew cask install gpgtools
brew cask install imageoptim
brew cask install iterm2
brew cask install mactex
brew cask install mullvad
brew cask install mysqlworkbench
brew cask install omnidisksweeper
brew cask install plex-media-player
brew cask install popsql
brew cask install postgres
brew cask install postico
brew cask install shiftit
brew cask install skype
brew cask install slack
brew cask install sublime-text
brew cask install teamviewer
brew cask install texstudio
brew cask install torbrowser
brew cask install universal-media-server
brew cask install vlc
brew cask install whatsapp

# Remove outdated versions from the cellar.
brew cleanup
