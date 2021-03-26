#!/bin/bash

echo "What is the machine's @IP?"
read IP
echo "The port scan is loading... check ports.txt when finished!"
nmap -A -T5 $IP > ports.txt
echo "Do you wish to run a directory scan?(y/n)"
read ans
y="y"
n="n"
if [ "$ans" = "$y" ] 
then
	echo "The directory scan is loading... check directories.txt when finished!"
	gobuster dir -u $IP -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt | tee directories.txt
elif [ "$ans" = "$n" ] 
then
	echo "Bye!"
else
	echo "Wrong input!"
fi

