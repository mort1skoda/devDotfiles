# git tutorial
## using WSL Ubuntu 20.04

Install WSL:<br/>
open Powershell (x86) as admin<br/>
wsl --list --online<br/>
wsl --install -d Ubuntu-20.04<br/>


Install git for windows:
https://git-scm.com/download/win

because you need:
   git-credential-manager.exe

run this in bash shell in WSL ubuntu:
git config --global credential.helper "/mnt/c/Program\
Files/Git/mingw64/libexec/git-core/git-credential-manager.exe"

then
git config --globel user.name  "mort1skoda"
git config --global user.email "mort1skoda@gmail.com"


