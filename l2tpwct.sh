/etc/init.d/watchcat stop
ifdown l2tp
#/etc/init.d/xl2tpd stop
#/etc/init.d/ipsec stop
#/etc/init.d/dnsmasq restart
bash /root/tools/recon.sh
sleep 10
ifup hilink
sleep 5
while true
do
	if ping -c 1 8.8.8.8
	then
		/etc/init.d/xl2tpd stop
		/etc/init.d/ipsec stop
		/etc/init.d/dnsmasq restart
		ifup l2tp
		sleep 20
		break
	else
		bash /root/tools/rebo.sh
		sleep 20
		bash /root/tools/recon.sh
		sleep 10
		ifup l2tp
		break
	fi
done
/etc/init.d/watchcat start
