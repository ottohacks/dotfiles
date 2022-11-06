#!/bin/bash
set -e

declare -a pkgs=(
    "curl"
    "lynis"
    "ncat"
    "nmap"
    "p7zip-full"
    "pwgen"
    "tmux"
    "tree"
    "vim"
    "wget"
    "zsh"
    # "docker" # external dependencies
    # "git" # external dependencies
    # "python3-pip"
    # "python3"
)

list=$(for pkg in "${pkgs[@]}"; do echo "${pkg}"; done)
echo "[*]" ${list}
sudo apt install -y ${list}
echo "[*]" ${list}
