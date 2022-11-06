#!/bin/bash
set -e

declare -a pkgs=(
    "apt"
    "autojump"
    "curl"
    "lynis"
    "ncat"
    "nmap"
    "p7zip-full"
    "pwgen"
    "sudo"
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

apt-get update
list=$(for pkg in "${pkgs[@]}"; do echo "${pkg}"; done)
echo "[*]" ${list}
apt-get install -y ${list}
echo "[*]" ${list}
