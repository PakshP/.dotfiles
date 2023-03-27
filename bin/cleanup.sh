#!/bin/bash

# This script removes any changes made by the 'linux.sh' script
# All output from echo statements will be appended to a file called 'cleanup.log'

# Remove the .vimrc file in the home directory if it exists
if [ -f ~/.vimrc ]; then
  rm ~/.vimrc
  echo "Removed .vimrc file" >> cleanup.log
fi

# Remove the line 'source ~/.dotfiles/etc/bashrc_custom' from the .bashrc file
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
echo "Removed 'source ~/.dotfiles/etc/bashrc_custom' from .bashrc" >> cleanup.log

# Remove the .TRASH directory in the home directory if it exists
if [ -d ~/".TRASH" ]; then
  rm -r ~/".TRASH"
  echo "Removed .TRASH directory" >> cleanup.log
fi
