#######################################
##    ~/.bashrc    ##
#####################
echo 'start of ~/.bashrc'

# Turn Off Software Flow Control (XON/XOFF)
# to fix keybindings in vim CTRL+s and CTRL+q
stty -ixon

source ~/.aliases.sh 
shopt -s expand_aliases

# use vim keybindings in bash shell
set -o vi

# minimal prompt
PS1="\[\033[01;33m\]\w\[\033[00m\]\n"

export SHELL=/bin/bash
#export TERM=screen-256color
export BASH=_ENV='~/.bash_aliases.sh'
export ALIASES='~/.aliases.sh'
export BASHRC='~/.bashrc'
export VIFMRC='~/.vifm/vifmrc.vim'
export TMUXCONF='~/.tmux.conf'
export VIMRC='~/.vimrc'


####  Print variables info ####
#clear
alias
echo "exported variables:"
echo "SHELL=$SHELL  TERM=$TERM  BASH_ENV=$BASH_ENV"
echo "ALIASES=$ALIASES   BASRC=$BASHRC   VIMRC=$VIMRC   VIFMRC=$VIFMRC   TMUXCONF=$TMUXCONF"

echo 'end of ~/.bashrc'

