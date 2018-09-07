#!/bin/bash

file="$HOME/.fzf.zsh"
if [ -f "$file" ]
then
  source $file
fi
