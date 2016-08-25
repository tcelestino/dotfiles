# General UI/UX #
#############################################################################################

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# disbale transparency menu bar
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# disbale transparency menu bar yosemite
defaults write com.apple.universalaccess reduceTransparency -bool true

# Disable the â€œAre you sure you want to open this application?â€ dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Trackpad, mouse, keyboard, Bluetooth accessories, and input #
#############################################################################################

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Screen #
#############################################################################################

# Set screenshot config
ScreenShotConfig() {
  mkdir ${HOME}/Pictures/Screenshots/
  defaults write com.apple.screencapture location ${HOME}/Pictures/Screenshots/
  defaults write com.apple.screencapture type -string "png"
  defaults write com.apple.screencapture disable-shadow -bool true
}

# Finder #
#############################################################################################

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool false

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Remove Dropbox's green checkmark icons in Finder
file=/Applications/Dropbox.app/Contents/Resources/emblem-dropbox-uptodate.icns
[ -e "${file}" ] && mv -f "${file}" "${file}.bak"

# Dock, Dashboard
#############################################################################################

# Set the icon size of Dock items to 40 pixels
defaults write com.apple.dock tilesize -int 40

# Don't animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don't show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Hide indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool false

# Safari & WebKit #
#############################################################################################

# Privacy: don't send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Show the full URL in the address bar
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Set Safari's home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Prevent Safari from opening â€˜safe' files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Hide Safari's bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Hide Safari's sidebar in Top Sites
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Disable Safari's thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari's debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Spotlight #
#############################################################################################

sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"

# Transmission.app #
#############################################################################################

# Don't prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

# Kill all application #
#############################################################################################

ScreenShotConfig()

for app in "Dock" "Finder" "Safari" "SystemUIServer" "Terminal" "Transmission"; do
  killall "${app}" > /dev/null 2>&1
done

echo 'Done. Reboot your computer'
