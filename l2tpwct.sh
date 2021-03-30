logger -p daemon.info -t "watchcat[EXECUTED]" "First!"
/etc/init.d/watchcat stop
logger -p daemon.info -t "watchcat[EXECUTED]" "L2TP Going Down!"
ifdown l2tp
#/etc/init.d/xl2tpd stop
#/etc/init.d/ipsec stop
#/etc/init.d/dnsmasq restart
bash /root/tools/recon.sh
sleep 10
logger -p daemon.info -t "watchcat[EXECUTED]" "HILINK Restart!"
ifup hilink
sleep 5
logger -p daemon.info -t "watchcat[EXECUTED]" "Checking PING!"
while true
do
	if ping -c 1 8.8.8.8
	then
		logger -p daemon.info -t "watchcat[EXECUTED]" "PING Done!"
		logger -p daemon.info -t "watchcat[EXECUTED]" "Stopping Services"
		/etc/init.d/xl2tpd stop > /dev/null
		logger -p daemon.info -t "watchcat[EXECUTED]" "XL2TP Stopped!"
		/etc/init.d/ipsec stop > /dev/null
		logger -p daemon.info -t "watchcat[EXECUTED]" "IPSEC Stopped!"
		/etc/init.d/dnsmasq restart > /dev/null
		logger -p daemon.info -t "watchcat[EXECUTED]" "DNSMASQ Stopped!"
		logger -p daemon.info -t "watchcat[EXECUTED]" "L2TP Going Up!"
		ifup l2tp
		sleep 20
		break
	else
		logger -p daemon.info -t "watchcat[EXECUTED]" "PING Error!"
		bash /root/tools/rebo.sh
		sleep 20
		bash /root/tools/recon.sh
		sleep 10
		logger -p daemon.info -t "watchcat[EXECUTED]" "L2TP Going Up!"
		ifup l2tp
		break
	fi
done
/etc/init.d/watchcat start
