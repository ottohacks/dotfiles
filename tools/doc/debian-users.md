
### Add docker user

    sudo groupadd docker
    sudo usermod -aG docker ${user}

### Add restricted low user

    sudo adduser --shell /bin/false --disabled-login --disabled-password ${user}
