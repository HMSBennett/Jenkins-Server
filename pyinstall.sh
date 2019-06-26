#!/bin/bash

sudo useradd --create-home pythonadm

sudo usermod --shell /usr/bin/python pythonadm

sudo su - pythonadm

sudo cp pythonadm.service /etc/systemd/system

sudo mkdir /home/pythonadm/public

sudo cp app.py /home/pythonadm | sudo cp public/index.html /home/pythonadm/public

sudo systemctl daemon-reload

sudo systemctl start pythonadm

sudo systemctl enable pythonadm

sudo systemctl status pythonadm
