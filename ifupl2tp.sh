if ping -c 1 192.168.0.1
then
	break;
else
	ifdown l2tp
	/etc/init.d/xl2tpd stop
	/etc/init.d/pppd stop
	/etc/init.d/ipsec stop
	/etc/init.d/dnsmasq restart
fi
