#!/usr/bin/bash
set -xe
sudo mkdir -v /var/log/swap
cd /var/log/swap
sudo dd if=/dev/zero of=swapfile bs=1K count=2M
sudo chmod 600 swapfile
sudo mkswap swapfile
echo "/var/log/swap/swapfile none swap sw 0 0" | sudo tee -a /etc/fstab
sudo swapon -va
