#!/bin/bash

sed -i -e 's/#DNS=/DNS=8.8.8.8/' /etc/resolv.conf

sed '/DNS1/d' /etc/sysconfig/network-scripts/ifcfg-*

systemctl restart network