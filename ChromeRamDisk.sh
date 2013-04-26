#!/bin/bash

# Size at the end is * 2048 where 2048 = 1 MB, so 1572864 = 768 MB
DISK=`/usr/bin/hdiutil attach -nobrowse -nomount ram://1572864`
/usr/sbin/diskutil erasevolume HFS+ "RamDiskCache" $DISK
/bin/rm -rvf ~/Library/Caches/Google/Chrome/*
/bin/mkdir -pv /Volumes/RamDiskCache/Google
/bin/ln -v -s /Volumes/RamDiskCache/Google ~/Library/Caches/Google/Chrome/Default
/usr/bin/chflags hidden /Volumes/RamDiskCache #Hide RamDisk directory
