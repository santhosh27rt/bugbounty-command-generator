Bug Bounty Command Generator 🚀

Created By Santhosh Manoj Kumar

Description

A simple Bash script that generates bug bounty and reconnaissance commands for a target domain.

The script automatically replaces the target domain in all commands and saves them into a text file.

Features
Subdomain Enumeration
Subfinder
Assetfinder
Findomain
DNS Resolution
DNSX
Live Host Discovery
HTTPX
URL Collection
Waybackurls
GAU
Crawling
Katana
Parameter Discovery
Arjun
Directory Discovery
FFUF
Dirsearch
Feroxbuster
Gobuster
Technology Detection
WhatWeb
HTTPX
Port Scanning
Naabu
Nmap
Vulnerability Scanning
Nuclei
Nikto
Installation

cd bug-bounty-command-generator

chmod +x generator.sh
Usage
./generator.sh

Enter the target domain when prompted:

example.com

The script will generate:

example.com_commands.txt
Example
./generator.sh

Output:

[✓] Commands Generated Successfully
[📄] File : example.com_commands.txt
[🎯] Target : example.com
Disclaimer

This project is intended for authorized security testing, bug bounty programs, and educational purposes only.

Always obtain proper authorization before testing any system.

$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
# 1. Create Script
nano bugbounty.sh

# Paste code
CTRL + X
Y
ENTER

# 2. Make Executable
chmod +x bugbounty.sh

# 3. Run Script
./bugbounty.sh

# Enter Target
example.com

# Output File Created
example.com_commands.txt

# 4. Run From Anywhere
sudo mv bugbounty.sh /usr/local/bin/bugbounty
sudo chmod +x /usr/local/bin/bugbounty

# Use Anywhere
bugbounty
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

Author

Santhosh Manoj Kumar
