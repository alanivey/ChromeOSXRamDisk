install:
	cp ./ChromeRamDisk.sh /usr/local/bin/
	cp ./com.alanthing.ChromeRamDisk.plist ~/Library/LaunchAgents/

uninstall:
	rm -f /usr/local/bin/ChromeRamDisk.sh
	rm -f ~/Library/LaunchAgents/com.alanthing.ChromeRamDisk.plist
