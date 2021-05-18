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
sed -i "s/urxvt/xfce4-terminal/g" /home/$NEW_USER/.config/sxhkd/sxhkdrc 
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
