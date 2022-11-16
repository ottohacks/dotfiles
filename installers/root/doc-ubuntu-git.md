
### Dependencies

    apt update
    apt install -y make libssl-dev libghc-zlib-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip

### Head to the [official Git website](https://github.com/git/git) and download the latest clean branch

### Unzip and cd

    make prefix=/usr/local all
    make prefix=/usr/local install
    git --version
