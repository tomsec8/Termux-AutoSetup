# 🛠️ Termux Toolkit Installer

A modular and beginner-friendly toolkit to set up your Termux environment with essential tools in one click.

---

## 📋 Project Overview

This project provides a centralized script that helps you install multiple Termux tools quickly and efficiently. Whether you're setting up a fresh environment or just want to save time, this script has you covered.

---

## ✅ System Requirements

Before using this toolkit, make sure your system meets the following:

- 📱 **Device:** Android with Termux installed  
- 🧱 **Storage:** At least 200MB of free space  
- 🌐 **Internet Connection:** Required for downloading packages  
- 🧰 **Permissions:** Run `termux-setup-storage` if you want to access internal storage

---

## 📦 Pre-Installation (One-Time Setup)

Before cloning this project, you must install `git` in Termux:

```bash
pkg update -y && pkg upgrade -y
pkg install git -y
```

---

## 🚀 Installation

After installing `git`, follow these steps:

```bash
# 1. Clone the repository
git clone https://github.com/TomSec8/termux-toolkit-installer.git

# 2. Enter the project directory
cd termux-toolkit-installer

# 3. Give execute permission to the installer script
chmod +x install.sh

# 4. Run the installer
bash install.sh
```

---

## 📁 Project Structure

```
termux-toolkit-installer/
├── install.sh             # Main script (you will run this)
├── scripts/
│   ├── base-tools.sh      # Base tools like git, curl, wget, etc.
│   ├── hacking-tools.sh   # Offensive/security tools
│   └── custom-tools.sh    # Special tools not in official repo
├── assets/                # (Optional) logos or future assets
├── LICENSE                # Project license (MIT)
├── README.md              # You're reading this!
└── .gitignore             # Ignore temp/log files
```

---

## 🧠 Available Categories

During installation, you'll be able to choose one or more of the following:

| Category         | Description                                             |
|------------------|---------------------------------------------------------|
| 🧰 Base Tools     | Essential CLI tools (`git`, `curl`, `nano`, `wget`, etc.) |
| ⚔️ Hacking Tools  | Security tools (`nmap`, `sqlmap`, `hydra`, etc.)         |
| 🛠️ Custom Tools   | Tools from GitHub or custom-built tools                 |

---

## 👨‍💻 Maintainer

Project by [TomSec8](https://github.com/TomSec8)  
Feel free to open issues or pull requests with suggestions or fixes.

---

## 📜 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

