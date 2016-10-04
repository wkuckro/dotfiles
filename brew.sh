#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Update Homebrew and any existing formulae
brew update
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install wget
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install cloc
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install ucspi-tcp
brew install xz

# Install other useful binaries.
brew install ack
brew install cmake
brew install dark-mode
brew install git
brew install git-lfs
brew install mysql
brew install nvm
brew install openssl
brew install pv
brew install python3
brew install ruby
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png

# Check and see if it's a Mac, then install the cask and apps below
if [ "$(uname)" == "Darwin" ]; then
# Install Caskroom
brew tap caskroom/cask

# Install Apps
brew cask install airfoil
brew cask install appcleaner
brew cask install atom
brew cask install audio-hijack
brew cask install caffine
brew cask install carbon-copy-cloner
brew cask install daisydisk
brew cask install dropbox
brew cask install firefox
brew cask install fission
brew cask install google-chrome
brew cask install google-drive
brew cask install google-earth-pro
brew cask install helium
brew cask install icefloor
brew cask install istat-menus
brew cask install netspot
brew cask install numi
brew cask install parallels-desktop
brew cask install postman
brew cask install slack
brew cask install teamviewer
brew cask install torbrowser
brew cask install transmit
brew cask install virtualbox
brew cask install vlc
fi

# Remove outdated versions from the cellar.
brew cask cleanup
brew cleanup
