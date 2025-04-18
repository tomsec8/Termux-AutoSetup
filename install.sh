#!/data/data/com.termux/files/usr/bin/bash
# Termux-AutoSetup - By TomSec8

GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
NC="\e[0m" 

function main_menu() {
  echo -e "${CYAN}====== Termux-AutoSetup ======${NC}"
  echo "1) Install base tools"
  echo "2) Install hacking tools"
  echo "3) Advanced tools (choose individual tools)"
  echo "0) Exit"
  echo
  read -p "Choose an option: " choice

  case $choice in
    1) bash scripts/base-tools.sh ;;
    2) bash scripts/hacking-tools.sh ;;
    3) advanced_menu ;;
    0) echo "Goodbye!"; exit 0 ;;
    *) echo -e "${YELLOW}Invalid option, try again.${NC}"; main_menu ;;
  esac
}


function advanced_menu() {
  while true; do
    echo -e "\n${CYAN}====== Advanced Tools Menu ======${NC}"
    echo "1) Install Tool A"
    echo "2) Install Tool B"
    echo "3) Install Tool C"
    echo "0) Back to main menu"
    echo
    read -p "Select a tool: " tool_choice

    case $tool_choice in
      1)
        echo -e "${GREEN}Installing Tool A...${NC}"
        
        ;;
      2)
        echo -e "${GREEN}Installing Tool B...${NC}"
        
        ;;
      3)
        echo -e "${GREEN}Installing Tool C...${NC}"
        
        ;;
      0) main_menu ;;
      *) echo -e "${YELLOW}Invalid option, try again.${NC}" ;;
    esac
  done
}


main_menu

