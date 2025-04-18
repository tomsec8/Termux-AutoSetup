#!/data/data/com.termux/files/usr/bin/bash
# Installs base Termux tools

echo "[*] Installing base tools..."
pkg install -y root-repo x11-repo curl wget nano zip unzip python net-tools python-pip unstable-repo grep httping  && apt autoremove -y

