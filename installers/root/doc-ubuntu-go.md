
### Head to the [official Go website](https://go.dev/doc/install) and copy the latest link

    tmpdir="$(mktemp -d)/foo"
    wget -O ${tmpdir} ${link}
    rm -rf /usr/local/go && tar -C /usr/local -xzf ${tmpdir}
    export PATH=$PATH:/usr/local/go/bin
    go version