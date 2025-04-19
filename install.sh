#!/data/data/com.termux/files/usr/bin/bash
# Termux‑AutoSetup – by TomSec8

GREEN="\e[32m"; YELLOW="\e[33m"; CYAN="\e[36m"; NC="\e[0m"

main_menu() {
  while true; do              # <‑‑ NEW: keep showing menu
    echo -e "${CYAN}====== Termux‑AutoSetup ======${NC}"
    echo "1) Install base tools"
    echo "2) Install hacking tools"
    echo "3) Advanced tools (choose individual tools)"
    echo "0) Exit"
    echo
    read -p "Choose an option: " choice

    case $choice in
      1) bash scripts/base-tools.sh ;;     # returns → loop shows menu again
      2) bash scripts/hacking-tools.sh ;;
      3) advanced_menu ;;
      0) echo "Goodbye!" ; exit 0 ;;
      *) echo -e "${YELLOW}Invalid option, try again.${NC}" ;;
    esac
  done
}

advanced_menu() { … }   # unchanged

main_menu
