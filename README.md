# bspwm minimal config

## Update : This does not work anymore with latest ISO. Use April 2021 ISO in case you want to follow. A better option will be to do a base install without DE and then add these configs.

### NOTE : This is an unofficial repo. Any issues related to the provided configs must be reported by creating an issue on this repo and NOT on the EndeavourOS forum.

This is a minimal setup for bspwm that comes with mostly default configs. This is meant to be used like an install script that works with Calamares. The EndeavourOS Bspwm Community Edition may not be the minimal setup tinkerers usually want to install. So I created a similar repo here, which has Calamares `netinstall.yaml` file and a `setup.sh` and provides a minimal environment.

## Installation

You need to download and run the provided `pre-install.sh` script that will modify Bspwm CE url to this repo. It also edits the message in installer pop up.
When you boot the Live ISO, the welcome app pops up automatically. Close it. Then open a terminal (third icon on taskbar). Run the following three commands one after another.
```sh
wget https://raw.githubusercontent.com/flyingcakes85/bspwm-minimal-config/main/pre-install.sh
chmod +x pre-install.sh
./pre-install.sh
```
Since its a good practice to know whats contained inside a script before executing it, I highly recommend looking through the contents of [`pre-install.sh`](https://github.com/flyingcakes85/bspwm-minimal-config/blob/main/pre-install.sh). You may also want to look through [`setup.sh`](https://github.com/flyingcakes85/bspwm-minimal-config/blob/main/setup.sh) which runs after the installation is complete.

After you have run the above three commands, you can close the terminal. Launch the "Install System" applet (sixth icon on taskbar). Choose "Install Community Editions". On the dialog that pops up, choose "Bspwm Minimal". You may proceed through the installation as normal. 

## Disclosure

I am one of the people who worked on EndeavourOS Bspwm Community Edition. The official CE will continue to be supported/maintained. My thanks to the people who helped develop the original CE. Some code from the original CE has been reused in this repo. This repo is in no way affiliated with EndeavourOS. As stated earlier, issues relating to the configs provided here should be discussed by creating a new issue on the issues tab, and NOT on the EndeavourOS forum. 

The repo for official EndeavourOS Bspwm Edition is here : [EndeavourOS-Community-Editions/bspwm](https://github.com/EndeavourOS-Community-Editions/bspwm)

## License

The provided files in this repository are provided under the terms of GNU GPL v3. You can read the complete license text [here](https://github.com/flyingcakes85/bspwm-minimal-config/blob/main/LICENSE). 
