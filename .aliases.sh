########################################
####    .aliases.sh    ####
###########################

alias ..='cd ..'
alias a='alias'
alias .b='source ~/.bashrc'
alias .h='cd ~ && ls -la --color'
alias e='exit'
alias f='vifm ~ ~/dev'

alias grep='grep --color=auto'

# gp=git push
alias gp='./.push*'
alias l='ls -la --color'
alias m='make'

alias sai='sudo apt install'
alias sau='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'

# tl=tmux list-sessions
alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '

alias v='vim'
alias ,va='vim ~/.aliases.sh && source ~/.bashrc'
alias ,vb='vim ~/.bashrc && source ~/.bashrc'

alias ,vf='vim ~/.vifm/vifmrc.vim'
alias ,vt='vim ~/.tmux.conf'
alias ,vv='vim ~/.vimrc'


