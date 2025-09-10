#!/bin/bash

set -eufo pipefail

defaults write -g AppleEnableSwipeNavigateWithScrolls -bool false
defaults write -g AppleMiniaturizeOnDoubleClick -bool false
defaults write -g AppleICUForce24HourTime -bool true
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false
defaults write -g com.apple.mouse.scaling -float 2
defaults write -g com.apple.trackpad.forceClick -bool false
defaults write -g AppleKeyboardUIMode -int 2

defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode -string TwoButton;
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseTwoFingerDoubleTapGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadTwoFingerDoubleTapGesture -int 1

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.25
defaults write com.apple.dock largesize -int 128
defaults write com.apple.dock launchanim -int 0
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock mineffect -string scale
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock orientation -string left
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock showLaunchpadGestureEnabled -bool false
defaults write com.apple.dock tilesize -int 36

defaults write com.apple.finder FXPreferredViewStyle -string Nlsv
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true
defaults write com.apple.finder FXRemoveOldTrashItems -bool true
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.finder NewWindowTarget -string PfHm

defaults write com.apple.menuextra.clock DateFormat -string "\"EEE d MMM HH:mm:ss\""

defaults write com.apple.TextEdit RichText -bool false

defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

defaults write com.apple.ActivityMonitor IconType -int 6

defaults write com.apple.Terminal SecureKeyboardEntry -bool true

defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 12

defaults write com.knollsoft.Rectangle launchOnLogin -bool true
defaults write com.knollsoft.Rectangle hideMenubarIcon -bool true
defaults write com.knollsoft.Rectangle SUEnableAutomaticChecks -bool true
