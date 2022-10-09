#PING SWEEP#

for x in {1 .. 254 .. l};do ping -c 1 l.l.l.$x lgrep "64 b" lcut -d " " -f4 exips.txt; done
