#!/bin/bash

#git add README.md
#git add .a* .b* .c* .g* .l* .p* .t* .v* .z*
#git rm .viminfo .bash_history
git add -u
update="Updateed: "
datTim=$(date +'%y%m%d_%H%M')
msg="$update$datTime"
git commit -m "$msg"
git push -u origin master
git status

