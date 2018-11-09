#!/bin/bash
#
kernel=""
read -p "Plz enter the kernel version: " version
for i in `rpm -qa | grep  kernel.*$version.*`; do
        kernel="$kernel $i"
done

sudo dnf remove $kernel

