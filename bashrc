# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions

#### General Alias ####
alias please='/usr/bin/sudo $(history -p !!)'
alias sl='ls'
alias dc='cd'
alias hstgm='sort | uniq -c | sort -rn' # make output into a histogram (ie. <count> <thing>)
alias synchist='history -a && history -c && history -r' # sync your history between shells, run on each shell


#### File and Directory Alias ####
alias ll='ls -althr'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias mount='mount |column -t'
alias mkdir='mkdir -pv'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias fh='find . -iname'
alias vim='vim -o'


#### cpu, memory, disk, network ####
alias pscpu='ps aux | (head -n 1; sort -nr -k 3;)'
alias psmem='ps aux | (head -n 1; sort -nr -k 4;)'
alias myfree='free -mlt'
alias mydf='df -H | awk "NR==1; NR > 1 {print -bash | sort -nr -k 5}"' # couldnt get (head -n 1; sort -nr -k 3;) to work, only printed first line
alias mydu='du -c | sort -n'
alias netp='netstat -putona'


#### Display Iptables Rules ####
alias iptlist='sudo /sbin/iptables -n -v --line-numbers -L'
alias iptlistin='sudo /sbin/iptables -n -v --line-numbers -L INPUT'
alias iptlistout='sudo /sbin/iptables -n -v --line-numbers -L OUTPUT'
alias iptlistfw='sudo /sbin/iptables -n -v --line-numbers -L FORWARD'

