#!/bin/bash
echo "Enter Class C Range: 192.168.3"
read range
for ip in {1 .. 254 .. l};do
host $range.$ip | grep "name pointer" | cut -d " " -fS
done
