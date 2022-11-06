#!/bin/bash

declare -a paths=(
    "github.com/ffuf/ffuf@latest"
    "github.com/hakluke/hakrawler@latest"
    "github.com/projectdiscovery/httpx/cmd/httpx@latest"
    "github.com/projectdiscovery/interactsh/cmd/interactsh-client@latest"
    "github.com/projectdiscovery/naabu/v2/cmd/naabu@latest"
    "github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest"
    "github.com/projectdiscovery/proxify/cmd/proxify@latest"
    "github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest"
    "github.com/tomnomnom/gron@latest"
    "github.com/tomnomnom/meg@latest"
    "github.com/tomnomnom/unfurl@latest"
    "github.com/tomnomnom/waybackurls@latest"
)

for path in "${paths[@]}"; do
    echo "go install -v ${path}";
    go install -v ${path};
done
