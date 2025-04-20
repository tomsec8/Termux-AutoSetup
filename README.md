# 🛠️ Termux-AutoSetup

A modular and beginner-friendly toolkit to set up your Termux environment with essential tools in one click.

---

## 📋 Project Overview

This project provides a centralized script that helps you install multiple Termux tools quickly and efficiently. Whether you're setting up a fresh environment or just want to save time, this script has you covered.

---

## ✅ System Requirements

Before using this toolkit, make sure your system meets the following:

- 📱 **Device:** Android with Termux installed  
- 🧱 **Storage:** At least 2000MB of free space  
- 🌐 **Internet Connection:** Required for downloading packages  
- 🧰 **Permissions:** Run `termux-setup-storage` if you want to access internal storage

---

## 📦 Pre-Installation (One-Time Setup)

Before cloning this project, you must install `git` in Termux:

```bash
apt-get update -y && apt-get upgrade -y
pkg install git -y
```

---

## 🚀 Installation

After installing `git`, follow these steps:

```bash
# 1. Clone the repository
git clone https://github.com/tomsec8/Termux-AutoSetup.git

# 2. Enter the project directory
cd Termux-AutoSetup

# 3. Give execute permission to the installer script
chmod +x install.sh

# 4. Run the installer
bash install.sh

```

---

## 🧠 Available Categories

During installation, you'll be able to choose one or more of the following:

| Category         | Description                                             |
|------------------|---------------------------------------------------------|
| 🧰 Base Tools     | Essential CLI tools (`curl`, `nano`, `wget`, `zip`, `vim`, `unzip`, `tar`, `python`, `grep`, `httping`, `build-essential`, `perl`, `clang`, `make`, `tsu`, `python2` ) |
| ⚔️ Hacking Tools  | Security tools (`nmap`, `dnsmap`, `dirb`, `apksigner`, `crunch`, `netcat-openbsd` )         |
| 🛠️ special Tools   | Tools from GitHub or custom-built tools (`metasploit`, `sqlmap`, `nikto`)                |

---

## 👨‍💻 Maintainer

Project by [TomSec8](https://github.com/TomSec8)  
Feel free to open issues or pull requests with suggestions or fixes.

---

## 🙏 Credits

This project includes or is inspired by work from:

- [@gushmazuko](https://github.com/gushmazuko) – Metasploit install script: [metasploit_in_termux](https://github.com/gushmazuko/metasploit_in_termux)
- [@sqlmapproject](https://github.com/sqlmapproject) – SQLMap tool: [sqlmap](https://github.com/sqlmapproject/sqlmap)
- [@sullo](https://github.com/sullo) – Nikto web scanner: [nikto](https://github.com/sullo/nikto)

---

## 📜 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

