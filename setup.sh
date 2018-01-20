#!/bin/bash

DOT_DIRECTORY="$HOME/dotfiles"

cd ${DOT_DIRECTORY}

for file in `ls -A ${DOT_DIRECTORY} | grep -E "^\.+.*"`; do
  ln -sfvn ${DOT_DIRECTORY}/$file $HOME/$file
done 
