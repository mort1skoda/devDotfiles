#!/bin/bash

git status
git add --all
git status
DATE=$(date +'%Y-%m-%d %H:%M:%S %aday')
git commit -m "$DATE"
git branch -M master
git push -u origin master

