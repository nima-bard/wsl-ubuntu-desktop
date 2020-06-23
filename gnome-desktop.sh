/mnt/c/Program\ Files/VcXsrv/vcxsrv.exe -ac -wgl -fullscreen -dpms&
sudo /etc/init.d/dbus restart;
sudo /etc/init.d/x11-common restart;
sudo gnome-shell --x11 -r --display=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
~                                                                                                                                    ~                                                                          
