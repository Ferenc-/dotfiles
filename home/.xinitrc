#!/bin/bash
#
# This script is called from 'startx' when you start an X session
#

#
# In case everything goes wrong, we at least fall back to a plain xterm
#
failsafe="xterm -ls -T Failsafe -geometry 80x24-0-0"
trap "exec $failsafe" EXIT SIGHUP SIGINT SIGPIPE SIGTERM SIGIO

#
# Some bash (1 and 2) settings to avoid trouble on a
# failed program call.
#
set +e > /dev/null 2>&1
set +u > /dev/null 2>&1
set +o posix  > /dev/null 2>&1
if type shopt > /dev/null 2>&1 ; then
    shopt -s execfail
else
    no_exit_on_failed_exec=1
fi

#
# Run user xinit scripts.
#
for script in /etc/X11/xinit/xinitrc.d/*; do
    test -e $script || continue
    test -d $script && continue
    case "$script" in
	.*)		continue ;;
	*.rpm*)		continue ;;
	*.swap)		continue ;;
	*.bak)		continue ;;
	*.orig)		continue ;;
	\#*)		continue ;;
	*~)		continue ;;
    esac
    if test -x $script ; then
	if grep -qE "^# to be sourced" $script >/dev/null 2>&1; then
	    . $script
	else
	    $script &
	fi
    else
	. $script
    fi
done
unset script

#
# Source common code shared between the
# X session and X init scripts
#
. /etc/X11/xinit/xinitrc.common

#
# Special for twm
#
case "$WINDOWMANAGER" in
    *twm) xsetroot -solid darkslateblue
esac


#
# Let me add my own lines here...
#

#disables the bell
/usr/bin/xset b off
#disables dpms features
/usr/bin/xset -dpms

# General setting of mousekeys
#https://askubuntu.com/questions/68807/how-can-i-configure-mousekeys
# If mouse key is too slow use xkbset
#https://unix.stackexchange.com/questions/41702/mousekeys-is-too-slow-in-gnome3-fedora
# If 5 on the numpad is doing the wrong click then use /*- to change:
# / is left click * is middle click - is right click
#https://ubuntuforums.org/showthread.php?t=1407932&s=7ddf35758c1b26539a6a7676f1dc8924
if type kxbset;
then
    xkbset ma 50 20 20 30 300
fi

# day planer deamon
# pland &

# 
# finally start the window manager
#
unset WINDOW_MANAGER STARTUP
exec $WINDOWMANAGER ${1+"$@"}

# call failsafe
exit 0
