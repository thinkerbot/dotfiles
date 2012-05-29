#!/bin/bash

echo "Linking dotfiles..."
for dotfile in dotfiles/*
do
  target="$HOME/.$(basename "$dotfile")"
  if ! [ -e "$target" ]
  then 
    echo "Install: $target"
    ln -s "$(pwd)/$dotfile" "$target"
  else
    echo "Exists:  $target"
  fi
done
