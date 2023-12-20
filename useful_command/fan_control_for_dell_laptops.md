# Not sure if it works yet
- install i8k
```bash
sudo apt install i8kutils
```

- check setting in i8kmon
```bash
i8kmon -v
```

- change config i8k
```bash
sudo gedit /etc/i8kmon.conf
```

- use i8k every time restart laptop:
```bash
sudo modprobe i8k force=1
```

- make i8k work every time the laptop is turned on (currently not working)
```bash
echo "options i8k force=1" | sudo tee /etc/modprobe.d/i8k.conf
```

# sources
- https://askubuntu.com/questions/522954/setting-temperature-thresholds-in-i8kmon-ubuntu-14-04
- https://wiki.archlinux.org/title/fan_speed_control#Dell_laptops
- https://manpages.ubuntu.com/manpages/noble/en/man1/i8kmon.1.html
- https://github.com/lochotzke/i8k
- 
