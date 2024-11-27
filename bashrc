# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Source project specific definitions, if needed
if [ -f ~/.projectrc ]; then
    . ~/.projectrc
fi


# User specific aliases and functions
export EDITOR='vim'
#### General Alias ####
alias please='/usr/bin/sudo $(history -p !!)'
alias sl='ls'
alias dc='cd'
# make output into a histogram (ie. <count> <thing>)
alias hstgm='sort | uniq -c | sort -rn'
# sync your history between shells, run on each shell
alias synchist='history -a && history -c && history -r'


#### File and Directory Alias ####
alias ls='ls --color'
alias l='ls -lFh'     #size,show type, human readable
alias la='ls -lAFh'   #long list, show almost all, show type, human readable
alias lr='ls -tRFh'   #sorted by date, recursive. show type, human readable
alias lt='ls -ltFh'   #long list, sorted by date, show type, human readable
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

alias dirs='dirs -v'

#### cpu, memory, disk, network ####
alias pscpu='ps aux | (head -n 1; sort -nr -k 3;)'
alias psmem='ps aux | (head -n 1; sort -nr -k 4;)'
alias myfree='free -mlt'
alias mydf='df -H | awk "NR==1; NR > 1 {print -bash | sort -nr -k 5}"' # couldnt get (head -n 1; sort -nr -k 3;) to work, only printed first line
alias mydu='du -c | sort -n'
alias netp='netstat -putona'
alias freqwatch='watch -n .5 "less /proc/cpuinfo | grep -i mhz "'

#### Display Iptables Rules ####
alias iptlist='sudo /sbin/iptables -n -v --line-numbers -L'
alias iptlistin='sudo /sbin/iptables -n -v --line-numbers -L INPUT'
alias iptlistout='sudo /sbin/iptables -n -v --line-numbers -L OUTPUT'
alias iptlistfw='sudo /sbin/iptables -n -v --line-numbers -L FORWARD'

# Functions
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Terminal Prompt
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[0m\] $ "
