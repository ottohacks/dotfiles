#!/bin/bash
set -e

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

export dotfiles="$(dirname $(readlink -f $0))"
export tools="${dotfiles}/tools"

[[ ":$PATH:" != *":${dotfiles}/bin:"* ]] && export PATH="${dotfiles}/bin:${PATH}"
[[ ":$PATH:" != *":${HOME}/go/bin:"* ]] && export PATH="${HOME}/go/bin:${PATH}"

source ${dotfiles}/env/aliases.sh
source ${dotfiles}/env/functions.sh
source ${dotfiles}/env/variables.sh

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

set +e
