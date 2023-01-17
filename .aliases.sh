#! /bin/bash
############################################
####    /home/m/.aliases.sh    ####
###################################

#Author:	Morten Håkestad
#Updated:	2022 04 04
#           2023 01 12
#           2023 01 15
#           2023 01 17

# ff = toggle folds
# use ag to grep in the .aliases.sh
# example:
# ag vim  will list all aliases that contains 'vim'
#     p   b   a
#     #   #   #

echo '        >>>> begin '$ALIASES'>>>>'
echo '            setting aliases....'

# start programs
alias f='vifm /home/m  /01data'
alias v='vim'




#------------- SHELL aliases ---------------{{{

# navigate directories:
#alias /='cd / && ls -la --color --group-directories-first'
alias ..='cd .. && ls -la --color --group-directories-first'
alias ...='cd ../.. && ls -la --color --group-directories-first'
alias .r='cd / && ls -la --color --group-directories-first'
alias .h='cd ~ && ls -la --color --group-directories-first'
alias .d='cd /01data && ls -la --color --group-directories-first'

alias cd='cd ~ && ls -la --color --group-directories-first'

alias cls='clear'

# cat .aliasesh.sh | grep -i <token>
alias cag='source ~/.aliases.sh && cat ~/.aliases.sh | grep -i --color '


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
#Watch List Diretory:
alias wl='watch --color ls -la --color --group-directories-first'
#alias 
alias sd='sudo'
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
alias gcl='git clone'

# mapleader = , pronounced edit
alias ,egi='v .gitignore'
alias ,egp='vim gp.sh' # not inside vim, only from shell.

#----------------}}}


#------------  tmux aliases ------------{{{

# tm = tmux, start a new tmux session
alias tm='tmux'
# tl = tmux list
alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '

alias ,et='vim ~/.tmux.conf'

#---------------}}}


#------------ , mapleader aliases -------------{{{

alias ,ea='vim ~/.aliases.sh && source ~/.aliases.sh'
alias ,eb='vim ~/.bashrc && source ~/.bashrc'
alias ,ef='vim ~/.vifm/vifmrc.vim'

alias ,ev='vim ~/.vimrc'

alias ,mh='make help'
alias ,mv='make vars'
alias ,mc='make clean'
alias ,mm='make all'
alias ,mr='make run'
alias ,md='make dbg'

#--------------}}}


#------------------- check distro ---------------------------------------{{{
#DISTRO=$(cat /etc/os-release | grep -i suse )
#echo $DISTRO
#if [ "$DISTRO" == "" ]; then
    #echo "ubuntu/debian apt"
    #alias ins='sudo apt install -y '
    #alias upd='sudo apt update && sudo apt upgrade -y && sudo apt autoremove'
#else
    #echo "suse zypper"
    #alias ins='sudo zypper install'
    #alias upd='sudo zypper refresh && sudo zypper update'
#fi

#------------------------------------------------------------------------}}}

shopt -s expand_aliases

echo '         .... end  '$ALIASES' ...'


