#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
NC='\033[0m'

clear

echo -e "${MAGENTA}"
echo "════════════════════════════════════════════════════"
echo "         Created By Santhosh Mani Kumar 🚀"
echo "════════════════════════════════════════════════════"
echo -e "${NC}"

echo -e "${CYAN}"
echo "╔══════════════════════════════════════════════╗"
echo "║      BUG BOUNTY COMMAND GENERATOR 🚀        ║"
echo "╚══════════════════════════════════════════════╝"
echo -e "${NC}"

read -p "$(echo -e ${YELLOW}'[?] Enter Target Domain: '${NC})" target

output="${target}_commands.txt"

echo -e "${GREEN}[+] Generating Commands...${NC}"

cat << EOF > "$output"

subfinder -d $target -all -recursive -o subfinder.txt
assetfinder --subs-only $target | tee assetfinder.txt
findomain -t $target -u findomain.txt

cat subfinder.txt assetfinder.txt findomain.txt | sort -u > all_subs.txt

dnsx -l all_subs.txt -o resolved.txt

httpx -l resolved.txt -status-code -title -tech-detect -o live.txt

waybackurls $target > wayback.txt

gau $target > gau.txt

cat wayback.txt gau.txt | uro > urls.txt

katana -list live.txt -d 5 -jc -o katana.txt

arjun -u https://$target/api -oT arjun.txt

ffuf -u https://$target/FUZZ -w /usr/share/wordlists/dirb/common.txt -mc 200,301,302,403 -o ffuf_results.json

dirsearch -u https://$target -e php,asp,aspx,jsp,html,js,txt,bak,old -o dirsearch.txt

feroxbuster -u https://$target -w /usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt

gobuster dir -u https://$target -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x php,html,js,txt

whatweb -a 3 https://$target

httpx -u https://$target -tech-detect -status-code -title

naabu -host $target -p - -o naabu_ports.txt

nmap -p- --min-rate=10000 -T4 $target -oN ports.txt

nmap -sV -sC -p 80,443,8080,8443 $target -oN services.txt

nuclei -u https://$target -t technologies/

nuclei -u https://$target -t misconfiguration/

nuclei -u https://$target -severity critical,high -o nuclei_critical.txt

nuclei -l live.txt -severity critical,high -o nuclei_results.txt

nikto -h https://$target -o nikto_results.txt

EOF

echo ""
echo -e "${GREEN}══════════════════════════════════════════════${NC}"
echo -e "${GREEN}[✓] Commands Generated Successfully${NC}"
echo -e "${BLUE}[📄] File   : ${output}${NC}"
echo -e "${MAGENTA}[🎯] Target : ${target}${NC}"
echo -e "${GREEN}══════════════════════════════════════════════${NC}"

echo ""
echo -e "${CYAN}══════════════════════════════════════════════${NC}"
echo -e "${YELLOW}Created By Santhosh Mani Kumar 🚀${NC}"
echo -e "${CYAN}══════════════════════════════════════════════${NC}"

echo ""
cat "$output"
