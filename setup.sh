#!/bin/bash

# Thank you @laysakura
function has() {
      type "$1" >/dev/null 2>&1
      return $?
}

has reattach-to-user-namespace || brew install reattach-to-user-namespace
has peco || brew install peco

DOT_DIRECTORY="$HOME/IdeaProjects/dotfiles"

cd ${DOT_DIRECTORY}

for file in `ls -A ${DOT_DIRECTORY} | grep -E "^\.+.*"`; do
  ln -sfvn ${DOT_DIRECTORY}/$file $HOME/$file
done 
