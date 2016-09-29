alias kpaul="curl 'http://www.kpauls.com/lunch-menu/' | grep 'h3 ' -A 1| cut -d '>' -f 2 | cut -d '<' -f 1|less"
alias check="npm outdated -g --depth=0"



#fixing issue with data for homebrew

export XDG_DATA_DIRS="/home/alpha/.linuxbrew/share:$XDG_DATA_DIRS"
export XDG_DATA_DIRS="/home/alpha/.linuxbrew/share:$XDG_DATA_DIRS"
