#!/bin/bash

/mnt/c/Program\ Files/VcXsrv/vcxsrv.exe -ac -wgl -fullscreen -dpms&
/etc/init.d/dbus restart;
/etc/init.d/x11-common restart;
gnome-shell --x11 -r --display=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
