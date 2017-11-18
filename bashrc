#source /Users/alpha/perl5/perlbrew/etc/bashrc
#source ~/.bash_profile
#source ~/.functitons

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Added to handle swift in Linux
export PATH=$HOME/bin:$PATH

export NVM_DIR="/Users/wkuckro/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Addin handing for thefuck
eval $(thefuck --alias fuck)

#Handle history better
export HISTTIMEFORMAT='%F %T '
