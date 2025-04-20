#!/data/data/com.termux/files/usr/bin/bash

GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
NC="\e[0m"

while true; do
  clear
  echo -e "${CYAN}====== Advanced Tools Menu ======${NC}"
  echo "1) Install Metasploit"
  echo "2) Install sqlmap"
  echo "3) Install Aircrack-ng"
  echo "0) Back to main menu"
  echo
  read -p "Select a tool to install: " choice

  case $choice in
    1)
      read -p "Are you sure you want to install Metasploit? (y/n): " confirm
      if [ "$confirm" == "y" ]; then
        clear
        echo -e "${CYAN}Installing: METASPLOIT${NC}"
        sleep 2
        mkdir -p $HOME/tools
        cd $HOME/tools
        wget https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
        chmod +x metasploit.sh
        ./metasploit.sh
        echo -e "${GREEN}✓ Metasploit installed successfully!${NC}"
        echo -e "${GREEN}After installation start Metasploit using the command: msfconsole${NC}"
      else
        echo -e "${YELLOW}✗ Installation cancelled.${NC}"
      fi ;;
    2)
      read -p "Are you sure you want to install sqlmap? (y/n): " confirm
      if [ "$confirm" == "y" ]; then
        clear
        echo -e "${CYAN}Installing: sqlmap${NC}"
        sleep 2
        mkdir -p $HOME/tools
        cd $HOME/tools
        git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
        echo -e "${GREEN}✓ sqlmap installed successfully!${NC}"
        echo -e "${GREEN}To get a list of basic options and switches use: python sqlmap.py -h${NC}"
        echo -e "${GREEN}To get a list of all options and switches use: python sqlmap.py -hh${NC}"
      else
        echo -e "${YELLOW}✗ Installation cancelled.${NC}"
      fi ;;
    3)
      read -p "Are you sure you want to install Aircrack-ng? (y/n): " confirm
      if [ "$confirm" == "y" ]; then
        clear
        echo -e "${CYAN}Installing: AIRCRACK-NG${NC}"
        sleep 2
        pkg install -y root-repo
        pkg install -y aircrack-ng
        echo -e "${GREEN}✓ Aircrack-ng installed successfully!${NC}"
      else
        echo -e "${YELLOW}✗ Installation cancelled.${NC}"
      fi ;;
    0)
      break ;;
    *)
      echo -e "${YELLOW}Invalid option.${NC}" ;;
  esac

  echo
  read -p "Press Enter to return to advanced tools menu..." _
done

