#! /vendor/bin/sh

echo "loopback test"
spkl=1
spkr=2
rec=3
mic1=4
mic2=5
enable=1
disable=0
open="-Y"
close="-N"

if test $2 -eq $enable
then
	loopbacktest $open "$1"
elif test $2 -eq $disable
then
	loopbacktest $close "$1"
	setprop vendor.sys.loopback-spkl 2
	setprop vendor.sys.loopback-spkr 2
	setprop vendor.sys.loopback-rec 2
	setprop vendor.sys.loopback-mic1 2
	setprop vendor.sys.loopback-mic2 2
else
	echo "input error ctl cmd!"
fi
