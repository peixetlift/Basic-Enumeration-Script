# Basic-Enumeration-Script-1.2
Port scan + directory scan (for web servers) on the specified @IP

## Usage
Download the script and run it with ```enum.sh <IP ADDRESS TO SCAN>```
The script will create a ports.txt and a directories.txt file in the directory you are working on, keep that in mind.

## Important

The gobuster scan will use a `/usr/share/wordlists dictionary`, wihch is included by default in Kali, feel free to change which wordlist you use by modifying the code.

## Requirements
<ul>
  <li>Nmap</li>
  <li>GoBuster</li>
 </ul>
  
