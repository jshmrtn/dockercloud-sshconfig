#!/bin/sh
if [ "${SSH_PORT}" != "**None**" ]; then
    echo "=> Found variable SSH_PORT..."
    sed -i '/Port 22/c\Port 2222' /etc/ssh/sshd_config
    /etc/init.d/ssh restart
else
    echo "ERROR: SSH_PORT variable not found..."
    exit 1
fi
