VBoxClient-all
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xset +fp $HOME/.fonts
xset fp rehash
fc-cache
hsetroot -tile $HOME/.wallpapers/tile1.png
xsetroot -cursor_name left_ptr
urxvtd -q -f -o
exec bspwm
