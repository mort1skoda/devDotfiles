# Lines configured by zsh-newuser-install
setopt appendhistory autocd extendedglob notify 
unsetopt beep nomatch
# End of lines configured by zsh-newuser-install

#export TERM=screen-256color

stty -ixon

NL=$'\n'
PS1="%F{green}%~${NL}%F{255}" 

# vi mode
bindkey -v

source ~/.aliases
alias .='source'

uname -a
echo
alias

#source ~/powerlevel10k/powerlevel11k.zsh-theme



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
