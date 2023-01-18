#! /bin/bash
############################################
####    /home/m/.aliases.sh    ####
###################################

#- header --------------------------------------------------------{{{

#Author:	Morten Håkestad
#Updated:	2022 04 04
#           2023 01 12
#           2023 01 15
#           2023 01 17
#
# This script file is called from .bashrc
#
# ff = toggle folds
# use ag to grep in the list of aliases
# use cag to grep in the file .aliases.sh
# example:
# ag vim   will list all aliases that contains 'vim'
# cag vim   will list all accourences of 'vim' in the whole file .aliases.sh

echo '        3... begin ' $ALIASES ' ............'
echo

#-----------------------------------------------------------------}}}


#- aliases --------------------------------------------------------{{{

# start programs
alias f='vifm /home/m  /01data'
alias v='vim'

# change directory:
alias ..='cd .. && ls -la --color --group-directories-first'
alias ...='cd ../.. && ls -la --color --group-directories-first'
alias .r='cd / && ls -la --color --group-directories-first'
alias .h='cd ~ && ls -la --color --group-directories-first'
alias .d='cd /01data && ls -la --color --group-directories-first'
# windows c:\
alias .wc='cd /mnt/c && ls -la --color --group-directories-first'
# windows d:\
alias .wd='cd /mnt/d && ls -la --color --group-directories-first'

# clear screan:
alias cls='clear'

# cat .aliasesh.sh | grep -i <token>
alias cag='source ~/.aliases.sh && cat ~/.aliases.sh | grep -i --color '

# su  =  su root  by default in bash. 

# directories:
alias l='ls -la --color --group-directories-first'
alias ll='ls -l --color --group-directories-first'
alias ls='ls --color --group-directories-first'
alias lg='ls -la --color --group-directories-first | grep -i --color '
alias md='mkdir -p'
alias rd='rmdir -p'

# aliases:
alias a='source ~/.aliases.sh && alias'
alias ag='alias | grep -i --color '


# source profile, bashrc, aliases 
alias sp='source ~/.profile'
alias sb='source ~/.bashrc'
alias sa='source ~/.aliases.sh'

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


# mapleader  edit  file
#     ,      vim   a=alias b=bash f=vifm p=profile v=vim
# linux:
alias ,ea='vim ~/.aliases.sh && source ~/.aliases.sh'
alias ,eb='vim ~/.bashrc && source ~/.bashrc'
alias ,ef='vim ~/.vifm/vifmrc.vim'
alias ,ep='vim ~/.profile'
alias ,ev='vim ~/.vimrc'

# windows:
alias ,eahk='vim /mnt/c/Users/Monica/Documents/AutoHotKey/myHotKeys.ahk'


# quit or exit shell.  same as quiting vim (whitout save)
alias q='exit'

#------------------------------------------------------------------}}}


#- git aliases ----------------------------------------------------{{{

alias ga='git add --all'
alias gc='git clone'
alias gco='git commit'
 alias gp='./gitPush.sh'
alias gpl='git pull'
alias gpu='git push'
alias gr='git remote -v'
alias gs='git status'
alias gl='git log'

# mapleader = , pronounced edit
alias ,egi='v .gitignore'
alias ,egp='vim gitiPush.sh'

#------------------------------------------------------------------}}}


#- tmux aliases ---------------------------------------------------{{{

# tm = tmux, start a new tmux session
alias tm='tmux'
# tl = tmux list
alias tl='tmux ls'
# ta=tmux attach -t [enter session-name from tl]
alias ta='tmux a -t '
# ,et = edit .tmux.conf
alias ,et='vim ~/.tmux.conf'

#------------------------------------------------------------------}}}


#- make aliases ---------------------------------------------------{{{


alias ,mh='make help'
alias ,mv='make vars'
alias ,mc='make clean'
alias ,mm='make all'
alias ,mr='make run'
alias ,md='make dbg'

#------------------------------------------------------------------}}}


#- check distro ---------------------------------------------------{{{

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

#------------------------------------------------------------------}}}


#- footer --------------------------------------------------------{{{

shopt -s expand_aliases
echo '             shopt -s expand_aliases'
echo '             .aliases.sh is sourced'
echo
echo '        3... end   ' $ALIASES ' ............'

#----------------------------------------------------------------}}}


