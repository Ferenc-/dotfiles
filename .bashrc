# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200


#export PATH="$PATH:/home/ferenc/Downloads/sbt/bin"
export PATH="$PATH:/mnt/backup/Devel/Scala/sbt/bin"
#export PATH="/home/ferenc/Komodo-IDE-7/bin:$PATH"

#For common bash history between sessions
#Append instead of overwrite && auto append after every enter
#shopt -s histappend
#PROMPT_COMMAND='history -a'
#export HISTSIZE=10000

# Turn off history for less
export LESSHISTFILE=-
export LESSHISTSIZE=0
# System default is: LESS=-M -I -R
export LESS="$LESS -N"

# Makes 'man 1 man' work again
export MAN_POSIXLY_CORRECT=1

#if [ $TERM == 'xterm' ]
#then

#fi


#test -s ~/.alias && . ~/.alias || true

alias tmux='tmux -2 -u'
alias w3m='w3m -o imgdisplay=/usr/lib64/w3m/w3mimgdisplay'

# Set core file size limit to unlimited
# This should be handled by /etc/security/limits.conf
ulimit -c unlimited

setupPrebuiltClang()
{
    mkdir -p /tmp/prebuild
    pushd /tmp/prebuild
    wget http://llvm.org/releases/3.6.0/clang+llvm-3.6.0-x86_64-opensuse13.2.tar.xz
    tar -xf clang+llvm-3.6.0-x86_64-opensuse13.2.tar.xz
    export LD_LIBRARY_PATH=/tmp/prebuilt/clang+llvm-3.6.0-x86_64-opensuse13.2/lib
    export PATH=/tmp/prebuild/clang+llvm-3.6.0-x86_64-opensuse13.2/bin/:$PATH
    alias clang++='clang++ -isystem=/tmp/prebuild/clang+llvm-3.6.0-x86_64-opensuse13.2/include -stdlib=libc++ -std=c++14'
    popd
}
