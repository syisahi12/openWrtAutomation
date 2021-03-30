/etc/init.d/watchcat stop
sleep 3
ifconfig wg | grep -E -o 'RX bytes.{2}' | cut -b 10 > rx.txt
rxon=`cat rx.txt`
if !(($rxon == 0))
then
	/etc/init.d/watchcat start
	/etc/init.d/sysntpd restart
else
	bash /root/rebo.sh
	bash /root/rebotenda.sh
	reboot -f
fi
