/etc/init.d/watchcat stop
bash ifdownl2tp.sh
bash rebo.sh
sleep 15
ifup l2tp
/etc/init.d/watchcat start
