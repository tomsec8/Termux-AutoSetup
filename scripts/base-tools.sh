#!/data/data/com.termux/files/usr/bin/bash
# Base‑tools installer for Termux – by TomSec8

# ── colours & symbols ───────────────────────────────────────────────────
GREEN="\e[32m"; RED="\e[31m"; CYAN="\e[36m"; YELLOW="\e[33m"; NC="\e[0m"
TICK="\xE2\x9C\x94";   CROSS="\xE2\x9C\x98"

# ── playback speed (seconds per line) ───────────────────────────────────
SLEEP=0.6       
# ── list of base tools ─────────────────────────────────────────────────
TOOLS=( curl wget git nano
        zip vim unzip tar
        python grep httping build-essential )

is_installed() { command -v "$1" >/dev/null 2>&1; }

# ── pretty status table with pacing ─────────────────────────────────────
print_table() {
  local title="$1"; shift
  local -n arr=$1               # name‑reference

  echo -e "\n${CYAN}═══ $title ═════════════════════${NC}"
  printf "%-18s | %-8s\n" "Tool" "Status"
  printf -- "------------------+---------\n"
  for tool in "${arr[@]}"; do
    if is_installed "$tool"; then
      printf "%-18s | ${GREEN}%b OK${NC}\n"  "$tool" "$TICK"
    else
      printf "%-18s | ${RED}%b MISSING${NC}\n" "$tool" "$CROSS"
    fi
    sleep "$SLEEP"              
  done
}
# ── enable extra repositories once ──────────────────────────────────────
enable_repos() {
  # X11 and unstable repos
  if ! grep -q "x11-repo" "$PREFIX/etc/apt/sources.list.d/x11.list" 2>/dev/null; then
    echo -e "${CYAN}[•] Enabling x11‑repo & unstable‑repo…${NC}"
    pkg install -y x11-repo unstable-repo
    pkg update -y
  fi
  # root‑repo only on rooted devices
  if [[ "$(id -u)" -eq 0 ]] && ! grep -q "root-repo" "$PREFIX/etc/apt/sources.list.d/root.list" 2>/dev/null; then
    echo -e "${CYAN}[•] Enabling root‑repo…${NC}"
    pkg install -y root-repo && pkg update -y
  fi
}

# ── install all missing tools ───────────────────────────────────────────
install_missing() {
  local missing=()
  for tool in "${TOOLS[@]}"; do
    is_installed "$tool" || missing+=("$tool")
  done
  if (( ${#missing[@]} )); then
    echo -e "\n${CYAN}[•] Installing missing tools…${NC}"
    pkg install -y "${missing[@]}"
  else
    echo -e "\n${GREEN}[✓] All base tools already present.${NC}"
  fi
}

# ── main routine ────────────────────────────────────────────────────────
pkg update -y && pkg upgrade -y
enable_repos

print_table "Current tool status" TOOLS
install_missing
print_table "Post‑installation status" TOOLS

# ── summary & exit ──────────────────────────────────────────────────────
leftovers=()
for tool in "${TOOLS[@]}"; do
  is_installed "$tool" || leftovers+=("$tool")
done

if (( ${#leftovers[@]} )); then
  echo -e "\n${YELLOW}[!] These tools failed to install:${NC} ${leftovers[*]}"
  echo -e "${YELLOW}    Try running the script again or check your network.${NC}"
else
  echo -e "\n${GREEN}[✓] Base toolset ready – everything installed successfully!${NC}"
fi

pkg autoclean
echo -e "\nPress any key to return to the main menu…"
read -n1 -s
exit 0
