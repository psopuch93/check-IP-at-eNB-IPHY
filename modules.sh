#!/bin/bash
ENB_N="192.168.255.129"
ENB_NB="192.168.255.1"
IPHY="192.168.200.1"
function Checkenb() {
if ping -c 5 $ENB_N &> /dev/null; then
	echo "eNB works for IP: $ENB_N"
else
	if ping -c 5 $ENB_NB &> /dev/null; then
		echo "eNB works for IP: $ENB_NB"
	else
		echo "eNB doesnt works for IP's: $ENB_N and $ENB_NB"
	fi
fi
}
function Checkiphy() {
if ping -c 5 $IPHY &> /dev/null; then
        echo "IPHY works for IP: $IPHY"
else
        echo "IPHY doesnt works for IP: $IPHY"
fi
}

Checkenb
Checkiphy
