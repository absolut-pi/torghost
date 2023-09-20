#!/bin/bash
SERVICE_NAME="torghost.service"

sudo systemctl disable "$SERVICE_NAME"
sudo systemctl stop "$SERVICE_NAME"

sudo cp -f "./$SERVICE_NAME.py" "/usr/local/bin/$SERVICE_NAME.py"
sudo cp -f "./$SERVICE_NAME" "/lib/systemd/system/$SERVICE_NAME"

sudo systemctl daemon-reload
sudo systemctl enable "$SERVICE_NAME"
sudo systemctl start "$SERVICE_NAME"
