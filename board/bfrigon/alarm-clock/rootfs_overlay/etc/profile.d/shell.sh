#!/bin/sh

# Set timezone
export TZ=EST5EDT

# Fancy prompt
PS1="\[\e[0;36m░▒▓[\e[1;36m\u\e[0;37m@\e[1;36m\h\e[0;36m]▓▒░\e[1;34m \w \e[1;37m>\e[0;0m\] "

# Aliases
alias dir="ls -lh --color=always"
