#!/data/data/com.termux/files/usr/bin/bash
# Termux‑AutoSetup – by TomSec8

GREEN="\e[32m"; YELLOW="\e[33m"; CYAN="\e[36m"; NC="\e[0m"

main_menu() {
  while true; do
    clear
    echo -e "${CYAN}====== Termux‑AutoSetup ======${NC}"
    echo "1) Install base tools"
    echo "2) Install hacking tools"
    echo "3) Advanced tools (individual)  (coming soon)"
    echo "0) Exit"
    echo
    read -rp "Choose an option: " choice

    case $choice in
      1) bash "$(dirname "$0")/scripts/base-tools.sh" ;;
      2) bash "$(dirname "$0")/scripts/hacking-tools.sh" ;;
      3) bash "$(dirname "$0")/scripts/advanced-tools.sh" ;;
      0) echo "Goodbye!" ; exit 0 ;;
      *) echo -e "${YELLOW}Invalid option, try again.${NC}" ; sleep 1 ;;
    esac
  done
}

main_menu
