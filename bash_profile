

#alias term='/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier'
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
alias Matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 30'							# Show commands used frequently
alias topc='top -o cpu'
alias topm='top -o mem'


#   -------------------------------
#   FILE AND FOLDER MANAGEMENT
#   -------------------------------
alias ls='ls -GFh'                                  # ls            Get the list of info, pretty lie
alias df='df -H'                                    # df            Define files in human-readble
alias du='du -ch'                                   # du            Define files in human-readble
alias mount='mount |column -t'                      # mount:        Make mount Human-readable

#   ---------------------------
#   NETWORKING
#   ---------------------------
alias ip='curl ifconfig.me'		                      # ipconfig:     Show public-facing ip
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ip0='ipconfig getpacket en0'                  # ip0:          Get info on connections for en0
alias ip1='ipconfig getpacket en1'                  # ip1:          Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed'

#   ---------------------------
#   SYSTEM
#   ---------------------------
alias update='sudo apt-get update && sudo apt-get upgrade'  # Linux ONLY update on one command
alias about='uname -amnprsv'                                # Define os name, version, and professor type




sendtext () { curl http://textbelt.com/text -d number=7033714467 -d "message=$1";echo message sent; }
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH


#   ----------------------
#   Fun
#   ----------------------
alias starwars='telnet towel.blinkenlights.nl'
alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias binary='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'


# Added by install_latest_perl_osx.pl
[ -r /Users/alpha/.bashrc ] && source /Users/alpha/.bashrc

#NVM help
source ~/.bashrc
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

#NPM help
alias check='npm outdated -g --depth=0'

#RVM help
source ~/.profile


#Source .bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
