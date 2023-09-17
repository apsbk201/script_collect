#!/bin/bash
sudo ufw disable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow www
sudo ufw allow ftp
sudo ufw allow https

sudo ufw enable
sudo ufw status numbered
