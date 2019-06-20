#!/bin/bash

sudo useradd --create-home pythonadm

sudo usermod --shell /bin/bash pythonadm

sudo su - pythonadm -c "python3 app.py"

sudo cp pythonadm.service /../../../../etc/systemd/system

sudo systemctl daemon-reload

sudo systemctl start pythonadm

sudo systemctl enable pythonadm

sudo systemctl status pythonadm
