#!/bin/bash

ps u | awk '{print $7}' | grep pts/ | sort -u > ~/bin/pts.list
cat ~/bin/pts.list | while read BTS
do
	cat /etc/MESS/CoffeeTime5.txt | sudo tee /dev/$BTS >/dev/null 2>&1
done

