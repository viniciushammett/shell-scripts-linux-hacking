#AUTOMATED DOMAIN NAME RESOLVE BASH SCRIPT

for ip in {1 .. 254 .. 1}; do dig -x l.l.l.$ip | grep $ip dns.txt; done;
