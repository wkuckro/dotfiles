
###########################
#System
###########################
source ~/.bash_aliases
source ~/.functions
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
case $_myos in
   Darwin)
	export GREP_OPTIONS='--color=always'
	export GREP_COLOR='1;35;40'
	;;
   Linux)
	;;
   *) ;;
esac
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#Append to the Bash history file, rather than overwriting it
shopt -s histappend;
export HISTCONTROL=erasedups

####This is causing some weird bash login behavior
#[ -r /Users/alpha/.bashrc ] && source /Users/alpha/.bashrc

#Solving for DO login
ssh-add ~/.ssh/algo > /dev/null 2>&1

###########################
#App helpers
###########################
#NVM help
#export NVM_DIR="$HOME/.nvm"
#. "$(brew --prefix nvm)/nvm.sh"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#RVM help
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
source ~/.profile

# Check for Ubuntu, fix for it
#if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
#export PATH="/home/alpha/.linuxbrew/bin:$PATH"
#export PATH="/home/alpha/.linuxbrew/sbin:$PATH"
#export XDG_DATA_DIRS="/home/alpha/.linuxbrew/share:$XDG_DATA_DIRS"
#fi
#eval $(/usr/libexec/path_helper -s)

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export GOPATH=$HOME/go
export GOPATH=$GOPATH/bin
