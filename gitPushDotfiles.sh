#!/bin/bash

echo 'in .gitPushDotfiles.sh'

git add --all
git status
update="Updated: "
datTim=$(date +'%y%m%d_%H%M')
msg="$update$datTim"
echo $msg

git commit -m "$msg"
git push -u origin master
git status
exit



#####    first time pull    #####
git init
git pull https://github.com/mort1skoda/dotfiles
git remote add origin https://github.com/mort1skoda/dotfiles
gs  =   git status
git add --all
git commit -m "first"
git push -u origin master



#################################
create a new repository on the command line

echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/mort1skoda/test.git
git push -u origin master


