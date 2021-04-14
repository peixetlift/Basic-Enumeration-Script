#!/bin/bash

ip=$1
echo -e "The port scan is loading... check ports.txt when finished!\n"
nmap -A -T5 $ip >ports.txt
echo "OPEN PORTS :"
echo "--------------------------"
while read -r line; do
	if [[ $line = *[0-9]"/"* ]]; then
		echo "$line" | awk '{print substr($line,0,20)}'
	fi
done <ports.txt
echo -e "--------------------------\n"
echo -e "Do you wish to run a directory scan?(y/n)\n"
read ans
if [ "$ans" = "y" ]; then
	echo "The directory scan is loading... check directories.txt when finished!"
	gobuster dir -u $IP -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt | tee directories.txt
elif [ "$ans" = "n" ]; then
	echo "Bye!"
else
	echo "Wrong input!"
fi
