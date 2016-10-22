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
