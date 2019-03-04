# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias please='/usr/bin/sudo $(history -p !!)'
alias sl='ls'
alias dc='cd'
alias hstgm='sort | uniq -c | sort -rn'

#file and directory alias
alias ll='ls -althr'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias mount='mount |column -t'
alias mkdir='mkdir -pv'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fhere='find . -name' 

#cpu, memory, disk, network
alias pscpu='ps aux | (head -n 1; sort -nr -k 3;)'
alias psmem='ps aux | (head -n 1; sort -nr -k 4;)'
alias free='free -mlt'
alias df='df -H | sort -r -k 4'
alias du='du -c | sort -n'
alias netp='netstat -putona'

# display all iptables rules #
alias iptlist='sudo /sbin/iptables -n -v --line-numbers -L'
alias iptlistin='sudo /sbin/iptables -n -v --line-numbers -L INPUT'
alias iptlistout='sudo /sbin/iptables -n -v --line-numbers -L OUTPUT'
alias iptlistfw='sudo /sbin/iptables -n -v --line-numbers -L FORWARD'
