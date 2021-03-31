while true
do
	if ping -c 1 192.168.1.2 > /dev/null
	then
		logger -p daemon.info -t "network[EXECUTED]" "Connected!"
		echo "[OK] Router Connected!"
		break
	else
		logger -p daemon.info -t "network[EXECUTED]" "Reconnecting!"
		echo "[!] Router Disconnect"
		echo "[!] Connecting..."
		#/etc/init.d/network restart
		ifup lan
		sleep 10
	fi
done
