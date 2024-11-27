# ~/.bash_profile

# User specific environment and startup programs

# PATH
PATH=$PATH:$HOME/.local/bin/:$HOME/bin
export PATH

# ssh
eval $(ssh-agent)
ssh-add

# Get the user aliases and functions
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc
