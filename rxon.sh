#!/bin/bash
ifconfig wg | grep -E -o 'RX bytes.{2}' | cut -b 10 > rx.txt

rxon=`cat rx.txt`

if !(($rxon == 0))
then
	echo mati
else
	echo hidup
fi
