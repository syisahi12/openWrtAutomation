#!/bin/bash
i=0
counter=`cat counter.txt`
while true
do
	if bash /root/modeminfo.sh | python -mjson.tool | grep '"signalbar": "5"'
	then
		break;
	fi
	date -s 2022-07-$((counter))
	ifup wg
	sleep 10
	/etc/init.d/sysntpd restart
	ifconfig wg | grep -E -o 'RX bytes.{2}' | cut -b 10 > rx.txt
	rxon=`cat rx.txt`
	if !(($rxon == 0))
	then
		logger -p daemon.info -t "watchcat[EXECUTED]" "RX Traffic ON!"
		((counter++))
		echo $counter > ./counter.txt
		logger -p daemon.info -t "watchcat[EXECUTED]" "Wireguard Active!"
        	break
	else
		((counter++))
		echo $counter > ./counter.txt
		if ((i > 5))
		then
			break
		else
			((i++))
			ifup hilink
		fi
	fi
done
