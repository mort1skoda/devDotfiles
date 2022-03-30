#! /bin/bash

########################################
####    .aliases.sh    ####
###########################

#Author:	Morten Håkestad
#Updated:	2022 03 30

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


#------------- SHELL aliases ---------------{{{

# navigate directories:
alias ..='cd .. && ls -la --color'
alias ...='cd ../.. && ls -la --color'
alias .r='cd / && ls -la --color'
alias .h='cd ~ && ls -la --color'
alias .d='cd ~/dev && ls -la --color'

# list directories:
alias l='ls -la --color --group-directories-first'
alias lg='ls -la --color | grep -i --color '

# work with directories:
alias md='mkdir -p'
alias rd='rmdir -p'

# work with aliases:
alias a='source ~/.aliases.sh && clear && alias'
alias ag='alias | grep -i --color '

# work with .bashrc
alias sb='source ~/.bashrc'
alias bl='bash --login'

# shortcuts:
alias c='cat'
alias g='grep --color=auto'

# quit or exit shell
alias q='exit'

#---------------}}}


#------------  git aliases -----------{{{

alias gp='./.gitPush*'
alias gs='git status'
alias ga='git add -u'
alias gc='git commit'

#----------------}}}


#------------  tmux cli ------------{{{

alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '

#---------------}}}


#------------ , mapleader aliases -------------{{{

alias ,ea='vim ~/.aliases.sh && source ~/.bashrc'
alias ,eb='vim ~/.bashrc && source ~/.bashrc'
alias ,ef='vim ~/.vifm/vifmrc.vim'
alias ,eg='vim .gitPush*'
alias ,et='vim ~/.tmux.conf'
alias ,ev='vim ~/.vimrc'

alias ,mh='make help'
alias ,mv='make vars'
alias ,mc='make clean'
alias ,mm='make all'
alias ,mr='make run'
alias ,md='make dbg'

#--------------}}}


shopt -s expand_aliases

echo '        .... end  '$ALIASES' ...'


