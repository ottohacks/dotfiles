mkcd() {
    if [ $# -eq 1 ]; then
        command mkdir -p $1 && cd $1
    fi
}

mktmp() {
    if [ $# -eq 0 ]; then
        cd $(command mktemp -d)
    else
        command mkdir -p /tmp/$1 && cd /tmp/$1
    fi
}
