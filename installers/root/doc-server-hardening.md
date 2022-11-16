
# VARIABLES

    MY_LOG_FOLDER=/var/log
    MY_PORT_HTTPS=443
    MY_PORT_SSH=22

# UFW

    ufw default deny incoming
    ufw default allow outgoing
    ufw allow ${MY_PORT_HTTPS},${MY_PORT_SSH}/tcp
    ufw enable
    ufw status

# SSHD

    sed -r -i "s/^#?Port 22/Port ${MY_PORT_SSH}/" /etc/ssh/sshd_config

# FAIL2BAN

    cp -v /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
    sed -r -i "s/^#?ignoreip = .*/ignoreip = 127.0.0.1\/8 ::1 $(curl -4 -sS ifconfig.co/ip)/" /etc/fail2ban/jail.local
    sed -r -i "s/^blocktype = .*/blocktype = DROP/" /etc/fail2ban/action.d/iptables-common.conf

**/etc/fail2ban/jail.local**

    cat <<EOF >>/etc/fail2ban/jail.local

    # # # # CUSTOM # # # #

    [DEFAULT]
    banaction = iptables-allports
    bantime  = 1y
    chain = DOCKER-USER
    findtime  = 10m
    maxretry = 3

    [nginx-4xx]
    enabled = true
    logpath = ${MY_LOG_FOLDER}/nginx/access.log
    port = http,https

    [nginx-http-auth]
    enabled = false
    logpath = ${MY_LOG_FOLDER}/nginx/access.log
    port = http,https
    
    EOF

**/etc/fail2ban/filter.d/nginx-4xx.conf**

    cat <<EOF >>/etc/fail2ban/filter.d/nginx-4xx.conf

    [Definition]
    failregex = ^<HOST>.*"(GET|POST).*" 4[0-9]{2} .*$
    ignoreregex =

    EOF
