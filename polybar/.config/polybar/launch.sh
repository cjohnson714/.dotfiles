killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
#polybar top &
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m
    if [ "$m" == 'DP-0' ]; then
        MONITOR=$m TRAY_POS=right polybar --reload top &
    else
        MONITOR=$m TRAY_POS=none polybar --reload top &
    fi
done


echo "Bars launched..."
