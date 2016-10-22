
###########################
#System
###########################

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

# Added by install_latest_perl_osx.pl
####This is causing some weird bash login behavior
#[ -r /Users/alpha/.bashrc ] && source /Users/alpha/.bashrc

###########################
#App helpers
###########################
#NVM help
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#NPM help
alias check='npm outdated -g --depth=0'

#RVM help
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Check for Ubuntu, fix for it
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
export PATH="/home/alpha/.linuxbrew/bin:$PATH"
export PATH="/home/alpha/.linuxbrew/sbin:$PATH"
export XDG_DATA_DIRS="/home/alpha/.linuxbrew/share:$XDG_DATA_DIRS"
fi
