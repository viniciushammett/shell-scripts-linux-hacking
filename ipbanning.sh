# This script bans any IP in the /24 subnet for 192.168.1.0 starting at 2
# It assumes 1 is the router and does not ban IPs .20, .21, .22

!/bin/sh

i=2
while [ $i -le 253 ]
do

    if [ $i -ne 20 -a $i -ne 21 -a $i -ne 22 ]; then
            echo "BANNED: arp -s 192.168.1.$i"
            arp -s 192.168.1.$i OO:OO:OO:OO:OO:Oa
    else
            echo "IP NOT BANNED: 192.168.1.$i*******************"
            echo "**********************************************"
    fi
    i='expr $i +1'
done
