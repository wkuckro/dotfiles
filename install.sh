#!/bin/sh

#############################
# First things first
#############################

#Install some critical components needed to run the rest of the scripts.
# Ask for the administrator password upfront
echo "Enter you password now once instead of many times later"
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install homebrew/linuxbrew
if [ "$(uname)" == "Darwin" ];then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else if [ "$(uname)" == "Linux" ];then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
PATH="$HOME/.linuxbrew/bin:$PATH"
fi

source ~/.bash_profile && source ~/.bash_aliases && source ~/.functions
