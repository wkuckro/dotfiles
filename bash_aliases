#Alias Files

###########################
#FILE AND FOLDER MANAGEMENT
###########################
### Get os name via uname ###
_myos="$(uname)"
case $_myos in
   Darwin)
	alias lsa='ls -GFha'
	;;
   Linux)
	alias ls='ls --color=auto'
	alias lsa='ls --color=auto -a'
	;;
   *) ;;
esac

alias df='df -H'                                    # df            Define files in human-readble
alias du='du -ch'                                   # du            Define files in human-readble
alias mount='mount |column -t'                      # mount:        Make mount Human-readable
alias path='echo -e ${PATH//:/\\n}'

###########################
#FUN
###########################
alias starwars='telnet towel.blinkenlights.nl'
alias matrix='LC_ALL=C tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=unblock | GREP_COLOR="1;32" grep --color "[^ ]"'
alias binary='echo -e "1"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'
alias pic='asciiview'
alias time='timedatectl'
alias sodo='cat /dev/urandom | hexdump -C | grep "ca fe"'

###########################
#GIT
###########################
alias g='git'
alias gcm='git commit -m'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gbpurge='git fetch --all -p; git branch -vv | grep ": gone]" | awk "{ print $1 }" | xargs -n 1 git branch -d'

###########################
#NETWORKING
###########################
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'	# ipconfig:     Show public-facing ip
alias localip='ipconfig getifaddr en0'                # localip get local ip address
alias netCons='lsof -i'                             	# netCons:      Show all open TCP/IP sockets
alias ifactive='ifconfig | pcregrep -M -o "^[^\t:]+:([^\n]|\n\t)*status: active"' # ifactive Show open interfaces
alias flushDNS='dscacheutil -flushcache'            	# flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             	# lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   	# lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   	# lsockT:       Display only open TCP sockets
alias ip0='ipconfig getpacket en0'                  	# ip0:          Get info on connections for en0
alias ip1='ipconfig getpacket en1'                  	# ip1:          Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        	# openPorts:    All listening connections
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed'
alias websiteget='wget --random-wait -r -p -e robots=off -U mozilla'
alias speedtest='(date +"%Y-%m-%d_%H:%M:%S" && speedtest_cli && date +"%Y-%m-%d_%H:%M:%S") | tee -a ~/speedresults.txt'
getlocation() { lynx -dump http://www.ip-adress.com/ip_tracer/?QRY=$1|grep address|egrep 'city|state|postcode'|awk '{print $3,$4,$5,$6,$7,$8}';}

###########################
#SYSTEM
###########################
case $_myos in
    Darwin)
	 alias update='softwareupdate -i -a && mas upgrade && brew update && brew upgrade && brew cleanup --prune=30'    #Mac software updates
	 ;;
	Linux)
	 alias update='sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove && brew update && brew upgrade && brew cleanup --prune=30'  # Linux ONLY update on one command
	 ;;
    *) ;;
esac
alias about='uname -amnprsv'                                # Define os name, version, and professor type
alias freq='cut -f1 -d" " ~/.bash_history | sort | uniq -c | sort -nr | head -n 20'							# Show commands used frequently
alias topc='top -o cpu'
alias topm='top -o mem'
alias check='npm outdated -g --depth=0'						#NPM help
alias genpass='</dev/urandom LC_CTYPE=C tr -dc "!@#$%^&*()_A-Z-a-z-0-9" | head -c30; echo ""'
alias grep='grep --color=auto'
alias reload='source ~/.bash_profile && source ~/.bash_aliases'

###########################
#TOOLS
###########################
alias colorpicker="osascript -e 'tell application Finder' -e 'activate' -e 'choose color' -e ' end tell'"
alias pretty='python3 -m json.tool'
