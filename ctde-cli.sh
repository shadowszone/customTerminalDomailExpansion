#!/bin/bash

# -------------------------------
# customTerminalDomainExpansion
# CLI tool to print animated figlet text and optional images
# -------------------------------

text="${1:-Welcome Back}"      # Default text
delay="${2:-0.00005}"          # Typing speed
image1="$3"                    # First image path
image2="$4"                    # Second image path

figlet_cmd=$(command -v figlet)
jp2a_cmd=$(command -v jp2a)

# Check for figlet
if [[ -z "$figlet_cmd" ]]; then
  echo "[!] figlet not found. Install it with: sudo apt install figlet"
  exit 1
fi

# Clear screen and start animation
clear
echo -e "\e[1;32m"
figlet "$text" | while IFS= read -r line; do
  for ((i=0; i<${#line}; i++)); do
    echo -ne "${line:$i:1}"
    sleep "$delay"
  done
  echo ""
done
echo -e "\e[0m\n"

# Show images if jp2a is available and images exist
if [[ -n "$jp2a_cmd" ]]; then
  [[ -f "$image1" ]] && jp2a --width=60 "$image1"
  [[ -f "$image2" ]] && jp2a --width=60 "$image2"
else
  echo "[i] jp2a not found. Skipping image rendering."
fi
