#!/bin/bash

git add README.md
git add .a* .b* .c* .g* .l* .p* .t* .v* .z*
git rm .viminfo .bash_history
git commit -m "update"
git push -u origin master
git status

