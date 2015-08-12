#!/bin/sh
SHELL=/bin/bash
DATE=`date +"%Y-%m-%d-%H-%M-%S"`
cp /var/log/shadowsocks.log ~/${DATE}.txt
echo "Log file backup at ${DATE}" | mutt xuechaowei@gmail.com -s "Log file backup at ${DATE}" -a ~/${DATE}.txt
rm ${DATE}.txt
echo "================STARTING AT ${DATE} ====================" > /var/log/shadowsocks.log


