#!/bin/bash

windscribe disconnect
windscribe logout
sudo systemctl stop windscribe
sudo ifconfig wlp2s0 down
sudo macchanger -r wlp2s0
sudo ifconfig wlp2s0 up
sudo systemctl start windscribe

