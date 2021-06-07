#!/bin/bash
ENB_N="192.168.255.129"
ENB_NB="192.168.255.1"
IPHY="192.168.200.1"
function Checkmodules() {
if ping -c 5 $1 &> /dev/null; then
	echo "eNB works for IP: $1"
else
	if ping -c 5 $2 &> /dev/null; then
		echo "eNB works for IP: $2"
	else
		echo "eNB doesnt works for IP's: $1 and $2"
	fi
fi
if ping -c 5 $3 &> /dev/null; then
        echo "IPHY works for IP: $3"
else
        echo "IPHY doesnt works for IP: $3"
fi
}
Checkmodules $ENB_N $ENB_NB $IPHY


