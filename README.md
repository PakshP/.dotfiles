# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## Scripts
linux.sh - Located in ./bin/ - Configures Linux environment by creating a `.TRASH` directory, changing the name of the `.vimrc` file (if it exists) to `.bup vimrc`, and overwriting the contents of `~/.vimrc` with `./etc/vimrc`. Also adds `source ~/.dotfiles/etc/bashrc_custom` to the end of `~/.bashrc`.
cleanup.sh - Located in ./bin/ - Reverses the changes made by `linux.sh`, including removing the `.vimrc` file, removing the `source ~/.dotfiles/etc/bashrc_custom` line from `~/.bashrc`, and removing the `.TRASH` directory.
Makefile - Defines two targets: `linux` and `clean`. `linux` runs `linux.sh` after cleaning up with `cleanup.sh`, and `clean` runs `cleanup.sh`. Also sets execute permissions on the scripts.
