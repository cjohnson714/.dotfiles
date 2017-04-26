VBoxClient-all
xrdb $HOME/.Xresources
xset +fp ~/.fonts
xset fp rehash
fc-cache
hsetroot -tile $HOME/.wallpaper.png
xsetroot -cursor_name left_ptr
urxvtd -q -f -o
exec bspwm
