#!/bin/bash

#git add README.md
git add .*
#git rm .viminfo .bash_history
git add -u
update="Updated: "
datTim=$(date +'%y%m%d_%H%M')
msg="$update$datTim"
echo $msg
#exit

git commit -m "$msg"
git push -u origin master
git status

