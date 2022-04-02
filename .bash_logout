# ~/.bash_logout: executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy
echo '>>>> begin ~/.bash_logout >>>>'

#if [ "$SHLVL" = 1 ]; then
    #[ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
#fi

if [ "$TMUX" == "" ]; then

    echo '-------------------------------> git push dotfiles before quiting !!!!!!!!!!!!!!!!!!!!'
    gp

    echo '----------------------------------> git push dev/c/template           !!!!!!!!!!!!!!!'
    cd ~/dev/c/00template
    ~/dev/c/00template/.gitPush.sh
    cd ~

fi

echo '.... end   ~/:bash_logout ....'


