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
    "python3-pip"
    "python3"
    "sudo"
    "tmux"
    "tree"
    "vim"
    "wget"
    "zsh"
    # "docker"  # external dependencies
    # "git"     # external dependencies
    # "go"      # external dependencies
)

apt-get update

list=$(for pkg in "${pkgs[@]}"; do echo "${pkg}"; done)
echo "[*]" ${list}

apt-get install -y ${list}
echo "[*]" ${list}
