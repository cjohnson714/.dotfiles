#VBoxClient-all
#[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xrdb -merge ~/.Xresources &
xset +fp $HOME/.fonts
xset fp rehash
fc-cache
#hsetroot -tile $HOME/.wallpapers/coil.png
feh --bg-fill $HOME/.wallpapers/floral.png
xsetroot -cursor_name left_ptr
dunst &
wmname LG3D
urxvtd -q -f -o
exec bspwm
