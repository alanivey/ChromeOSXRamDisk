ChromeOSXRamDisk
================

Run at startup to have Chrome's Cache be in a RamDisk

Simple Installation
============
- Quit Google Chrome
- Run `make install`

Manual Installation
============
- Copy `com.alanthing.ChromeRamDisk.plist` to ~/Library/LaunchAgents to start on login
- Copy `ChromeRamDisk.sh` to /usr/local/bin
- Reboot, or quit Chrome and manually run `/usr/local/bin/ChromeRamDisk.sh`

Uninstall
============
- Run `make uninstall`
- Or...
  - `rm /usr/local/bin/ChromeRamDisk.sh`
  - `launchctl unload -w ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist`
  - `rm ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist`


[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/dcb35e19520f29ae527d047b0c0da4ee "githalytics.com")](http://githalytics.com/alanthing/ChromeOSXRamDisk)
