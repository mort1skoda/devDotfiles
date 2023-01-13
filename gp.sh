#!/bin/bash

echo '----****----****---- START-->  gitPushHomeDevHw.sh ----****----****----'
git status
git add --all
git status
DATE=$(date +'%Y-%m-%d %H:%M:%S %aday')
git commit -m "$DATE"
git branch -M master
git push -u origin master
echo '----****----****----- END--->  gitPushHomeDevHw.sh ----****----****----'
exit



#####-----    first time pull -----#####
git init
git pull https://github.com/mort1skoda/dotfiles
git remote add origin https://github.com/mort1skoda/dotfiles
gs  =   git status
git add --all
git commit -m "first"
git push -u origin master


#####-----     new repo cli   -----#####
create a new repository on the command line
NB! first you must create a empty repo online.
(NO README.md)  README.md is created on the command line.

echo "# test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/mort1skoda/test.git
git push -u origin master



