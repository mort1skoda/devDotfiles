#######################################
##    ~/.bashrc    ##
#####################

echo '    >>>> begin ~/.bashrc >>>>'

# Turn Off Software Flow Control (XON/XOFF)
# to fix keybindings in vim CTRL+s and CTRL+q
stty -ixon

# source and expand aliases
source ~/.aliases.sh 
shopt -s expand_aliases

# use vim keybindings in bash shell
set -o vi

# green prompt for regular user
PS1="\[\033[01;32m\]\w\[\033[00m\]\n"

# red prompt for root
if [ "$EUID" -eq 0 ]
    then PS1="\[\033[01;31m\]\w\[\033[00m\]\n"
fi


######### export ##########{{{
export SHELL=/bin/bash
# do NOT export TERM here, it fucks up tmux, it is set in .tmux.conf
#export TERM=screen-256color
export BASH=_ENV='~/.bash_aliases.sh'
export ALIASES='~/.aliases.sh'
export BASHRC='~/.bashrc'
export VIFMRC='~/.vifm/vifmrc.vim'
export TMUXCONF='~/.tmux.conf'
export VIMRC='~/.vimrc'
#export EDITOR='vim'
export EDITOR=/usr/bin/vim
#############}}}


######### echo   ##########{{{
#clear
#alias
#echo "exported variables:"
#echo "SHELL  =$SHELL        TERM=$TERM  BASH_ENV=$BASH_ENV"
#echo "ALIASES=$ALIASES    BASRC=$BASHRC"
#echo "VIMRC  =$VIMRC         VIFMRC =$VIFMRC   TMUXCONF=$TMUXCONF"
#echo "EDITOR =$EDITOR"
#############}}}


# only git pull if regular user
if [ "$EUID" -ne 0 ]
    then git pull https://github.com/mort1skoda/dotfiles
fi

echo '    .... end   ~/.bashrc ...'

