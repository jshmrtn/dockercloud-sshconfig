#!/bin/sh
if [ "${SSH_PORT}" != "**None**" ]; then
    echo "=> Found variable SSH_DEFAULT_PORT=${SSH_DEFAULT_PORT}"
    echo "=> Found variable SSH_PORT=${SSH_PORT}"
    sed -i "/Port ${SSH_DEFAULT_PORT}/c\Port ${SSH_PORT}" /etc/ssh/sshd_config
    iptables -A INPUT -p tcp --dport ${SSH_PORT} -j ACCEPT
    /etc/init.d/ssh restart
else
    echo "ERROR: SSH_PORT variable not found..."
    exit 1
fi
