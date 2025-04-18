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
git clone https://github.com/tomsec8/Termux-AutoSetup.git)

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
| 🧰 Base Tools     | Essential CLI tools (`git`, `curl`, `nano`, `wget`, etc.) |
| ⚔️ Hacking Tools  | Security tools (`nmap`, `sqlmap`, `hydra`, etc.)         |
| 🛠️ special Tools   | Tools from GitHub or custom-built tools                 |

---

## 👨‍💻 Maintainer

Project by [TomSec8](https://github.com/TomSec8)  
Feel free to open issues or pull requests with suggestions or fixes.

---

## 🙏 Credits

This project includes or is inspired by work from:

- [@OtherUser](https://github.com/OtherUser) – Original script: [their-repo](https://github.com/OtherUser/their-repo)

---

## 📜 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

