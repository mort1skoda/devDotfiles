#!/bin/bash

git add .a* .b* .c* .g* .l* .p* .t* .v* .z*
git rm -r .viminfo
#git status
git commit -m "update"
#git status
git push -u origin master
#git status

