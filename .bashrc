#######################################
##    ~/.bashrc    ##
#####################

# header ---------------------------------------------------------{{{

echo '    2... begin ~/.bashrc ........'
echo

# unalias all, lets start clean:-)
unalias -a
# Turn Off Software Flow Control (XON/XOFF)
stty -ixon
# use vim keybindings in bash shell
set -o vi

#------------------------------------------------------------------}}}


# exports ----------------------------------------------------{{{
export SHELL=/bin/bash
# do NOT export TERM here, it interferes up tmux, it is set in .tmux.conf
#export TERM=screen-256color
export BASH_ENV='~/.bash_aliases.sh'
export ALIASES='~/.aliases.sh'
export BASHRC='~/.bashrc'
export VIFMRC='~/.vifm/vifmrc.vim'
export TMUXCONF='~/.tmux.conf'
export VIMRC='~/.vimrc'
export EDITOR=/usr/bin/vim
#----------------------------------------------------------------------}}}


# git -----------------------------------------------------{{{

git pull https://github.com/mort1skoda/dot-wsl-Ubuntu20.04.git


# only git pull if regular user
#if [ "$EUID" -ne 0 ] && [ "$TMUX" == "" ]; then

    #cd ~
    #git pull https://github.com/mort1skoda/dotfiles

    #cd ~/dev/c/00template
    #git pull https://github.com/mort1skoda/devCtemplate

    #cd ~/dev/c/getStr
    #git pull https://github.com/mort1skoda/devCgetStr

#fi
#---------------------------------------------------------}}}


#  prompt -------------------------------------------------------{{{

# green prompt for regular user
PS1="\[\033[01;32m\]\w\[\033[00m\]\n"

# red prompt for root
if [ "$EUID" -eq 0 ]
    then PS1="\[\033[01;31m\]\w\[\033[00m\]\n"
fi

#-----------------------------------------------------------------}}}


# echo info ------------------------------------------------------{{{
#clear
#alias
echo "    exported shell variables:"
echo "    SHELL    =$SHELL      BASH_ENV =$BASH_ENV"
echo "    ALIASES  =$ALIASES  BASHRC   =$BASHRC"
echo "    VIMRC    =$VIMRC       VIFMRC   =$VIFMRC"
echo "    TMUXCONF =$TMUXCONF   EDITOR   =$EDITOR" 
echo
#------------------------------------------------------------------}}}


# source and expand aliases --------------------------------------{{{

source ~/.aliases.sh 
shopt -s expand_aliases

#-----------------------------------------------------------------}}}


# footer ---------------------------------------------------------{{{

#cd ~
#echo
#ls -l  --color  --color --group-directories-first
#echo

echo
echo '    2... end   ~/.bashrc ........'

#------------------------------------------------------------------}}}


