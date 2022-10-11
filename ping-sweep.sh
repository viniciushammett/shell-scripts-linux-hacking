#PING SWEEP#

for x in {1 .. 254 .. l};do ping -c 1 l.l.l.$x | grep "64 b" | cut -d " " -f4 exips.txt; done
