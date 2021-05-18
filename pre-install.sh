#!/bin/bash

echo "https://raw.githubusercontent.com/flyingcakes85/bspwm-minimal-config/main/setup.sh" > /home/liveuser/community_editions/bspwm_setup.url
echo "https://raw.githubusercontent.com/flyingcakes85/bspwm-minimal-config/main/netinstall.yaml" > /home/liveuser/community_editions/bspwm-netinstall_yaml.url

sudo sed -i "s/Bspwm/Bspwm Minimal/g" /usr/share/endeavouros/scripts/welcome
sudo sed -i "s/binary tree./binary tree. UNOFFICIAL Minimal Edition/g" /usr/share/endeavouros/scripts/welcome
