#!/bin/sh


echo "##############################Private DNS server must be turnning down!################################"
apt-get install pxelinux syslinux dnsmasq

echo "Trying to copy files to directory..."
cp dnsmasq.conf /etc/dnsmasq.conf
cp dnsmasq /etc/default/dnsmasq
cp -r /tftpboot ~/

echo "Trying to restarting dnsmasq service..."
systemctl restart dnsmasq.service

echo "Setting Complete!"
