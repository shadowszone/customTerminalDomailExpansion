#!/bin/bash

BANNER_BLOCK='
typewriter_figlet() {
  text="$1"
  delay="${2:-0.00005}"
  color="${3:-\\e[1;32m}"

  echo -e "$color"
  figlet "$text" | while IFS= read -r line; do
    for ((i=0; i<${#line}; i++)); do
      echo -ne "${line:$i:1}"
      sleep "$delay"
    done
    echo ""
  done
  echo -e "\\e[0m"
}

if command -v figlet >/dev/null && command -v jp2a >/dev/null; then
  clear
  typewriter_figlet "Welcome Back DOOM" 0.0001
  [ -f ~/Desktop/banner.jpg ] && jp2a --width=60 ~/Desktop/banner.jpg
  echo -e "\\n"
  [ -f ~/Desktop/banner2.jpg ] && jp2a --width=60 ~/Desktop/banner2.jpg
  echo -e "\\n"
  typewriter_figlet "HAPPY HACKING" 0.0001
fi
'

echo "$BANNER_BLOCK" >> ~/.zshrc
echo -e "\n[+] customTerminalDomainExpansion installed. Reloading shell..."
exec zsh
