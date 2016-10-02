#!/usr/bin/env sh

# Custom settings for macOS

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
echo "Enter you password now once instead of many times later"
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

##########################
## General System Settings
##########################

echo "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

echo "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "

echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Check for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "Turn off keyboard illumination when computer is not used for 5 minutes"
defaults write com.apple.BezelServices kDimTime -int 300

echo "Setting system crashes to Notifications Pane"
defaults write com.apple.CrashReporter UseUNC 1

echo "Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

echo "Speed up Mission Control animations"
defaults write com.apple.dock expose-animation-duration -float 0.1

echo "Automatically hide and show the Dock"
defaults write com.apple.dock autohide -bool true

echo "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true

##########################
## Finder Settings
##########################

echo "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo "Show Path bar in Finder"
defaults write com.apple.finder ShowPathbar -bool true

echo "Show Status bar in Finder"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Show item info to the right of the file"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

echo "Show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "Show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true

echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Use column view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

#echo "Order by Kind"
#/usr/libexec/PlistBuddy -c "Set :StandardViewOptions:ColumnViewOptions:ArrangeBy dnam" ~/Library/Preferences/com.apple.finder.plist

##########################
## Safari Settings
##########################

echo "Enabling Safari's debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "Making Safari's search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

echo "Enabling the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true

echo "Make Safari’s search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

echo "Show the full URL in the address bar (note: this still hides the scheme)"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

echo "Adding a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

echo "Disable Java"
defaults write com.apple.Safari WebKitJavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false

echo "Enable 'Do Not Track' "
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

echo "Update extensions automatically"
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

##########################
## Mail, Address Book, Disk Utility Settings
##########################

echo "Setting email addresses to copy as 'foo@example.com' instead of 'Foo Bar <foo@example.com>' in Mail.app"
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

echo "Enable the debug menu in Address Book"
defaults write com.apple.addressbook ABShowDebugMenu -bool true

echo "Enable the debug menu in Disk Utility"
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

##########################
## Chrome/Chrome Canary Settings
##########################

echo "Disable the all too sensitive backswipe on trackpads"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false

echo "Using the system-native print preview dialog in Chrome"
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

echo "Expand the print dialog by default"
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

##########################
## Transmission Settings
##########################

echo "Trash original torrent files"
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

echo "Hide the donate message"
defaults write org.m0k.transmission WarningDonate -bool false
echo "Hide the legal disclaimer"
defaults write org.m0k.transmission WarningLegal -bool false

echo "IP block list."
# Source: https://giuliomac.wordpress.com/2014/02/19/best-blocklist-for-transmission/
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true


echo "Kill affected applications"
for app in "Address Book" "Calendar" "Contacts" "Dock" "Finder" "Google Chrome" \
  "Google Chrome Canary" "Mail" "Messages" "Safari" "SystemUIServer" "Terminal" \
	"Transmission"; do
	killall "${app}" &> /dev/null
done
