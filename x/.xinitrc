#VBoxClient-all
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
xset +fp $HOME/.fonts
xset fp rehash
fc-cache
#hsetroot -tile $HOME/.wallpapers/coil.png
#feh --bg-fill $HOME/.wallpapers/floral.png
xsetroot -mod 5 5 -bg "$(xrdb -query|awk '/\*color0/ {print $2}')" -fg "$(xrdb -query|awk '/\*color8/ {print $2}')"
xsetroot -cursor_name left_ptr &
dunst &
nvidia-settings --load-config-only
unclutter &
wmname LG3D
#urxvtd -q -f -o
exec bspwm
