#!/bin/bash

if [ -f /tmp/new_username.txt ];
then
    NEW_USER=$(cat /tmp/new_username.txt)
else
    NEW_USER=$(cat /tmp/$chroot_path/etc/passwd | grep "/home" | cut -d: -f1 | head -1)
fi

git clone https://github.com/flyingcakes85/bspwm-minimal-config.git bspwm
cd bspwm
mkdir -p /home/$NEW_USER/.config/{bspwm,sxhkd}
install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc /home/$NEW_USER/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc /home/$NEW_USER/.config/sxhkd/sxhkdrc
echo "feh --bg-fill /usr/share/endeavouros/backgrounds/endeavouros-wallpaper.png" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "~/.config/polybar/launch.sh &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "/usr/bin/dunst &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "nitrogen --restore &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "dex -a -s /etc/xdg/autostart/:~/.config/autostart/" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "picom -CGb &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "nm-applet --indicator &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
echo "xsetroot -cursor_name left_ptr &" >> /home/$NEW_USER/.config/bspwm/bspwmrc
sed -i "s/urxvt/xfce4-terminal/g" /home/$NEW_USER/.config/sxhkd/sxhkdrc
sed -i "s/dmenu_run/dmenu_run -i -p Run -nb '#1e1e1e' -nf '#b0b5bd' -sb '#7e3ebe' -sf '#ffffff'/g" /home/$NEW_USER/.config/sxhkd/sxhkdrc
mkdir -p /home/$NEW_USER/.local/share/fonts
cp IosevkaTermNerdFontComplete.ttf /home/$NEW_USER/.local/share/fonts/
cp -R .config /home/$NEW_USER/
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.local
chown -R $NEW_USER:$NEW_USER /home/$NEW_USER/.config
chmod -R +x /home/$NEW_USER/.config/bspwm/
chmod -R +x /home/$NEW_USER/.config/sxhkd/
chmod -R +x /home/$NEW_USER/.config/polybar/scripts
cd ..
rm -rf bspwm
