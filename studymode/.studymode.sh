# Ask user if they want to toggle Study Mode
gxmessage --title "Enter Study Mode?" \
    --center \
    --buttons "Yes:0,No:1" \
    "Toggle study mode?"
ans=$?
if [ $ans -eq 0 ]; then
    # If the user confirms, check actual mode and change configurations to the other mode
    if [[ $(/usr/bin/cat /home/alvaro/.config/polybar/launch.sh | grep 'polybar -q main') ]]; then
        sed -i '11s/main/study1/' /home/alvaro/.config/polybar/launch.sh
        sed -i '13s/second/study2/' /home/alvaro/.config/polybar/launch.sh
        sed -i '14s/10/0/' /home/alvaro/.config/bspwm/bspwmrc
        sed -i '19s/50/35/' /home/alvaro/.config/bspwm/bspwmrc
        sed -i '966s/0.85/1/' /home/alvaro/.config/kitty/kitty.conf
        sed -i '13s/#1E1E2E/#282A36/' /home/alvaro/.config/polybar/colors.ini
        sed -i '962s/#1E2329/#282A36/' /home/alvaro/.config/kitty/kitty.conf
        pactl -- set-sink-mute 2 on
    else
        sed -i '11s/study1/main/' /home/alvaro/.config/polybar/launch.sh
        sed -i '13s/study2/second/' /home/alvaro/.config/polybar/launch.sh
        sed -i '14s/0/10/' /home/alvaro/.config/bspwm/bspwmrc
        sed -i '19s/35/50/' /home/alvaro/.config/bspwm/bspwmrc
        sed -i '966s/1/0.85/' /home/alvaro/.config/kitty/kitty.conf
        sed -i '13s/#282A36/#1E1E2E/' /home/alvaro/.config/polybar/colors.ini
        sed -i '962s/#282A36/#1E2329/' /home/alvaro/.config/kitty/kitty.conf
        pactl -- set-sink-mute 2 off
    fi
    # Reload the window manager for the config changes to apply
    bspc wm -r
fi
