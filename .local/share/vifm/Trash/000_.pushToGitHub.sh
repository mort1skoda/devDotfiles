#!/bin/bash

#git init
#git add README.md
git add .push* .gdbinit
git add *.c *.h Makefile 
update="Updated: "
datTim=$(date +'%y%m%d_%H%M')
msg="$update$datTim"
echo $msg

git commit -m "$msg"
#git branch -M master
#git remote add origin https://github.com/mort1skoda/devC00template.git
git push -u origin master
#git status
#git log
#---------------------------------

