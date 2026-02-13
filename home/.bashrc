# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export EDITOR=/usr/bin/vim

#For common bash history between sessions
#Append instead of overwrite && auto append after every enter
shopt -s histappend
PROMPT_COMMAND='history -a'
export HISTSIZE=10000

# Turn off history for less
export LESSHISTFILE=-
export LESSHISTSIZE=0
# System default is: LESS=-M -I -R
export LESS="$LESS -N"
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP

# Makes 'man 1 man' work again
export MAN_POSIXLY_CORRECT=1


# Set core file size limit to unlimited
# This should be handled by /etc/security/limits.conf
ulimit -c unlimited

