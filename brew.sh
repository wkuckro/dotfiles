#!/usr/bin/env bash
### Install Homebrew tools


# Ask for the administrator password upfront
echo "Enter you password now once instead of many times later"
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update Homebrew and any existing formulae
brew update
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
#[ -e "/usr/local/bin/sha256sum" ] && rm -rf /usr/local/bin/sha256sum
#ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install wget
#brew install wget --with-iri

# Install more recent versions of some macOS tools.
#brew install vim --override-system-vi
#brew install homebrew/dupes/grep
#brew install homebrew/dupes/openssh
#brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
brew install cloc
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install ngrep
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install ucspi-tcp
#brew install xz

# Install other useful binaries.
#brew install ack
#brew install cmake
#brew install dark-mode
#brew install ffmpeg
brew install git
#brew install git-lfs
brew install jq
brew install libav
brew install lynx
brew install htop
brew install mas
#brew install mysql
#brew install nvm
brew install openssl
#brew install pv
#brew install python3
#brew install ruby
brew install speedtest-cli
#brew install ssh-copy-id
#brew install testssl
#brew install thefuck
#brew install tree
#brew install vbindiff
#brew install webkit2png
brew install youtube-dl

# Install help from the above
#git lfs install --system
#pip3 install --upgrade pip setuptools wheel


# Check and see if it's a Mac, then install the cask and apps below
if [ "$(uname)" == "Darwin" ]; then
# Install Caskroom
brew tap caskroom/cask
brew tap homebrew/cask-versions

# Install Apps
brew cask install airfoil
brew cask install appcleaner
brew cask install atom
brew cask install audio-hijack
brew cask install brave-browser
brew cask install caffeine
brew cask install carbon-copy-cloner
#brew cask install clipmenu
brew cask install daisydisk
#brew cask install dropbox
brew cask install firefox
brew cask install fission
brew cask install github
brew cask install google-chrome
brew cask install google-chrome-canary
#brew cask install google-drive
#brew cask install google-earth-pro
#brew cask install helium
#brew cask install icefloor
brew cask install istat-menus
brew cask install iterm2
#brew cask install netspot
#brew cask install numi
brew cask install Opera
#brew cask install parallels-desktop
#brew cask install postman
brew cask install qlstephen
brew cask install slack
#brew cask install teamviewer
brew cask install tor-browser
brew cask install transmit
brew cask install tunnelblick
#brew cask install virtualbox
brew cask install vlc
fi

# Remove outdated versions from the cellar.
brew cleanup
