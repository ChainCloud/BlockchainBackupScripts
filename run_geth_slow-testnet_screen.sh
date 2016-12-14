#!/usr/bin/env bash

{
echo "Starting geth slow testnet"
screen -c /home/ubuntu/new_start_kill_shells/screenrc_gst -L -dmS gst_geth /usr/bin/geth --testnet --port 30305 --datadir "/backup/slow-testnet/" --ipcpath "/big/stn" 2>&1
screen -ls
echo "Start done: slow_testnet"
} || {
     echo "WARNING! Cant start: slow_testnet"
     }
