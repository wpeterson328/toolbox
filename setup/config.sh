#!/bin/bash

#one off type stuff to be done with better automation later
mkdir /home/wyatt/.ssh
mkdir /home/wyatt/projects
mkdir /home/wyatt/tmp
cp -r ~/toolbox/config/* ~/.config

git config --local user.email "wyatt.peterson@gmail.com"
git config --local user.name "Wyatt"
git config --global push.default matching
