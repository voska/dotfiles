#!/bin/bash

set -eufo pipefail

trap 'killall Dock' EXIT

declare -a remove_labels=(
	Launchpad
	Safari
	Messages
	Mail
	Maps
	Photos
	FaceTime
	Calendar
	Contacts
	Reminders
	Freeform
	TV
	Music
	News
	Keynote
	Numbers
	Pages
	"App Store"
	"System Settings"
	"iPhone Mirroring"
)

for label in "${remove_labels[@]}"; do
	dockutil --no-restart --remove "${label}" || true
done