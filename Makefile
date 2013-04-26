install:
	[ ! -d /usr/local/bin/ ] && mkdir -p /usr/local/bin
	cp ./ChromeRamDisk.sh /usr/local/bin/
	cp ./com.alanthing.ChromeRamDisk.plist ~/Library/LaunchAgents/
	[ -f ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist ] && launchctl load -w ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist

uninstall:
	[ -f ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist ] && launchctl unload -w ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist
	[ -f /usr/local/bin/ChromeRamDisk.sh ] && rm -f /usr/local/bin/ChromeRamDisk.sh
	[ -f ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist ] && rm -f ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist
	[ -h ~/Library/Caches/Google/Chrome/Default ] && bash -c "rm -f ~/Library/Caches/Google/Chrome/Default; mkdir ~/Library/Caches/Google/Chrome/Default"
