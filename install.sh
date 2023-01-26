#!/bin/bash
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf &
wait
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf &
wait
sysctl -p
echo "AddressFamily inet" >> /etc/ssh/sshd_config &
wait
systemctl restart sshd
