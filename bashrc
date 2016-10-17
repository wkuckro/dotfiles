#source /Users/alpha/perl5/perlbrew/etc/bashrc
#source ~/.bash_profile
#source ~/.functitons

export NVM_DIR="/Users/alpha/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
