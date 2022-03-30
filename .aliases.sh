#! /bin/bash

########################################
####    .aliases.sh    ####
###########################

#Author:	Morten Håkestad
#Updated:	2022 03 29

#     p   b   a
#     #   #   #
echo '        >>>> begin '$ALIASES'>>>>'
echo '            setting aliases....'

alias f='vifm ~ ~/dev'
alias v='vim'
alias sai='sudo apt install'
alias sau='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'

# ff = toggle folds
# use ag to grep in the .aliases.sh
# example:
# ag vim  will list all aliases that contains 'vim'

# navigating the terminal ----------{{{
alias ..='cd .. && ls -la --color'
alias ...='cd ../.. && ls -la --color'
alias cdr='cd / && ls -la --color'
alias cdh='cd ~ && ls -la --color'
alias cdd='cd ~/dev && ls -la --color'

alias a='source ~/.aliases.sh && clear && alias'
alias .a='source ~/.aliases.sh'

alias ag='alias | grep -i --color '
alias .b='source ~/.bashrc'

alias c='cat'

alias g='grep --color=auto'

alias l='ls -la --color --group-directories-first'
alias lg='ls -la --color | grep -i --color '

alias md='mkdir -p'
alias rd='rmdir -p'

alias bl='bash --login'
alias q='exit'

#-----------------------------------}}}


# git aliases ----------------------{{{
alias gp='./.gitPush*'
alias gs='git status'
alias gc='git commit'
alias ga='git add -u'
#-----------------------------------}}}


# tmux command line-----------------{{{

alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '

#-----------------------------------}}}


# leader type aliases --------------{{{

alias ,ea='vim ~/.aliases.sh && source ~/.bashrc'
alias ,eb='vim ~/.bashrc && source ~/.bashrc'
alias ,ef='vim ~/.vifm/vifmrc.vim'
alias ,eg='vim .gitPush*'
alias ,et='vim ~/.tmux.conf'
alias ,ev='vim ~/.vimrc'

alias ,mc='make clean'
alias ,mm='make all'
alias ,mr='make run'
alias ,md='make dbg'
alias ,mh='make help'
alias ,mv='make vars'

#-----------------------------------}}}

shopt -s expand_aliases

echo '        .... end  '$ALIASES' ...'


