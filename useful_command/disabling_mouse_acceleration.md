# Tried and succeeded on Linux Mint Xfce 21.2

First, use a flat acceleration profile:
```shell
sudo gedit /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
```
Add the following line (The name of the `Identifier` is arbitrary):
```text
Section "InputClass"
	Identifier "My Crazy Mouse"
	Driver "libinput"
	MatchIsPointer "yes"
	Option "AccelProfile" "flat"
	Option "AccelSpeed" "0"
EndSection
```
, and restart X.

Next, to confirm that acceleration has been disabled, enter the following (you can change the number from 50 to 100, ...):
```shell
xinput list-props {1..50} 2>/dev/null | awk -F"'" '/Device '\''/{device=$2} /libinput Accel Profile Enabled \(364\)/{print device, $0}'
```
The profile should read `0, 1`.

# Source:
- https://wiki.archlinux.org/title/Mouse_acceleration#Disabling_mouse_acceleration
