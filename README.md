# bugbounty-command-generator

> Generate a complete reconnaissance command set for a target domain — in one step.

![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green.svg)

A simple Bash script that builds a ready-to-run bug-bounty and recon command list for a given
domain. It substitutes your target into every command and saves the result to a text file you
can review and run step by step.

---

## ✨ What it covers

| Stage | Tools |
|---|---|
| Subdomain enumeration | `subfinder`, `assetfinder`, `findomain` |
| DNS resolution | `dnsx` |
| Live host discovery | `httpx` |
| URL collection | `waybackurls`, `gau` |
| Crawling | `katana` |
| Parameter discovery | `arjun` |
| Directory discovery | `ffuf`, `dirsearch`, `feroxbuster`, `gobuster` |
| Technology detection | `whatweb`, `httpx` |
| Port scanning | `naabu`, `nmap` |
| Vulnerability scanning | `nuclei`, `nikto` |

> The script **generates** commands; it does not install the tools. Make sure the tools you
> intend to run are installed and in your `PATH`.

## 🚀 Usage

```bash
git clone https://github.com/santhosh27rt/bugbounty-command-generator.git
cd bugbounty-command-generator
chmod +x generator.sh
./generator.sh
```

Enter the target domain when prompted:

```text
[?] Enter Target Domain: example.com
```

The script writes all commands to:

```text
example.com_commands.txt
```

### Run from anywhere (optional)

```bash
sudo mv generator.sh /usr/local/bin/bugbounty
sudo chmod +x /usr/local/bin/bugbounty
bugbounty
```

## ⚠️ Legal & responsible use

For **authorized security testing, bug-bounty programs, and educational purposes only**.
Always confirm the target is in scope and that you have permission before running any command.

## 📝 License

Released under the [MIT License](LICENSE).

---

**Author:** Santhosh Manoj Kumar
