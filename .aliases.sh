#! /bin/bash
#-iiii-------------TEST
############################################
####    /home/m/.aliases.sh    ####
###################################

#Author:	Morten Håkestad
#Updated:	2022 04 04      2023 01 12

#     p   b   a
#     #   #   #
echo '        >>>> begin '$ALIASES'>>>>'
echo '            setting aliases....'

alias f='vifm ~ ~/dev'
alias v='vim'


# check which distro
DISTRO=$(cat /etc/os-release | grep -i suse )
#echo $DISTRO
if [ "$DISTRO" == "" ]; then
    echo "ubuntu/debian apt"
    alias ins='sudo apt install -y '
    alias upd='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'
else
    echo "suse zypper"
    alias ins='sudo zypper install'
    alias upd='sudo zypper refresh && sudo zypper update'
fi

# ff = toggle folds
# use ag to grep in the .aliases.sh
# example:
# ag vim  will list all aliases that contains 'vim'


#------------- SHELL aliases ---------------{{{

# navigate directories:
alias ..='cd .. && ls -la --color --group-directories-first'
alias ...='cd ../.. && ls -la --color --group-directories-first'
alias .r='cd / && ls -la --color --group-directories-first'
alias .h='cd ~ && ls -la --color --group-directories-first'
alias .d='cd ~/dev && ls -la --color --group-directories-first'
alias .c='cd ~/dev/c && ls -la --color --group-directories-first'
alias cls='clear'

# change between root and m:
alias ur='su root && .h'
#alias um='su m && cd ~ && ls -la --color --group-directories-first'

# list directories:
alias l='ls -la --color --group-directories-first'
alias ll='ls -l --color --group-directories-first'
alias ls='ls --color --group-directories-first'
alias lg='ls -la --color --group-directories-first | grep -i --color '

# work with directories:
alias md='mkdir -p'
alias rd='rmdir -p'

# work with aliases:
alias a='source ~/.aliases.sh && alias'
alias ag='alias | grep -i --color '


alias sa='source ~/.aliases.sh'
alias sb='source ~/.bashrc'
alias bl='bash --login'

# shortcuts:
alias c='cat'
alias g='grep --color=auto'

alias hg='cat .bash_history | grep -i '

alias os='cat /etc/os-release'

alias wa='whoami'

alias rm='ls'

alias wl='watch --color ls -la --color --group-directories-first'

# quit or exit shell
alias q='exit'

#---------------}}}


#------------  git aliases -----------{{{

alias ga='git add --all'
alias gc='git commit'
alias gp='./gp.sh'
alias gr='git remote -v'
alias gs='git status'
alias gl='git log'

#----------------}}}


#------------  tmux cli ------------{{{

alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '

alias tm='tmux'

#---------------}}}


#------------ , mapleader aliases -------------{{{

alias ,ea='vim ~/.aliases.sh && source ~/.aliases.sh'
alias ,eb='vim ~/.bashrc && source ~/.bashrc'
alias ,ef='vim ~/.vifm/vifmrc.vim'
alias ,eg='vim gitPush*' # not inside vim, only from shell.
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

echo '         .... end  '$ALIASES' ...'


