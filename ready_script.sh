#!/bin/bash

sudo usermod -aG docker $USER
groups $USER
ls -l /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
sudo systemctl restart docker
make execute
