#!/bin/bash
if [ "$1" == "" ]
    then
    echo "You forget an IP address !"
    echo "Syntax: ./scanip.sh 192.168.1"
    
rm ipaddress.txt
touch ipaddress.txt
for ip in {1..254} ; do
    ping -c 1 192.168.1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> ipaddress.txt &
    done
    
    else
	rm ipaddress.txt
        touch ipaddress.txt
        for ip in {1..254} ; do
            ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> ipaddress.txt &
            done
            fi

cat ipaddress.txt
echo "TOTAL -" & wc -l ipaddress.txt
