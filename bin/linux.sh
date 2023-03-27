#!/bin/bash

# This script sets up a Linux environment with custom configurations
# All output from echo statements will be appended to a file called 'linuxsetup.log'

# Check if the operating system is Linux
if [ $(uname) != "Linux" ]; then
  echo "Error: This script is for Linux only" >> linuxsetup.log
  exit 1
fi

# Create a .TRASH directory in the home directory if it doesn't exist
if [ ! -d ~/".TRASH" ]; then
  mkdir ~/.TRASH
  echo "Created .TRASH directory" >> linuxsetup.log
fi

# Rename the existing .vimrc file to .bup vimrc if it exists
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.bup\ vimrc
  echo "Renamed existing .vimrc file to .bup vimrc" >> linuxsetup.log
fi

# Overwrite the contents of the etc/vimrc file to the .vimrc file in the home directory
cp ~/.dotfiles/etc/vimrc ~/.vimrc
echo "Copied .dotfiles/etc/vimrc to ~/.vimrc" >> linuxsetup.log

# Add the statement 'source ~/.dotfiles/etc/bashrc_custom' to the end of the .bashrc file
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
