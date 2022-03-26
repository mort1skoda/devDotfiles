########################################
####    .aliases.sh    ####
###########################
echo '    start --- '$ALIASES
echo '        setting aliases...'
alias ..='cd ..'
alias ...='cd ../..'

alias a='alias'
alias .b='source ~/.bashrc'
alias .h='cd ~ && ls -la --color'
alias q='exit'
alias f='vifm ~ ~/dev'

alias gr='grep --color=auto'
alias grep='grep --color=auto'

# gp=git push
alias gp='./.push*'
alias gs='git status'
alias gc='git commit'
alias ga='git add -u'
alias l='ls -la --color'

alias m='make'
alias md='mkdir -p'
alias rd='rmdir -p'

alias sai='sudo apt install'
alias sau='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'

# tl=tmux list-sessions
alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '

alias v='vim'

# make aliases same as <leader>va in vim ,va = vim ~/.aliases.sh
alias ,va='vim ~/.aliases.sh && source ~/.bashrc'
alias ,vb='vim ~/.bashrc && source ~/.bashrc'
alias ,vf='vim ~/.vifm/vifmrc.vim'
alias ,vt='vim ~/.tmux.conf'
alias ,vv='vim ~/.vimrc'

echo '    end   --- '$ALIASES
