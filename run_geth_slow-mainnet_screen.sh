#!/usr/bin/env bash

{
echo "Starting geth slow mainnet"
screen -c /home/ubuntu/new_start_kill_shells/screenrc_gsm -L -dmS gsm_geth /usr/bin/geth --port 30306 --datadir "/backup/slow-mainnet" --ipcpath "/big/smn" 2>&1
screen -ls
echo "Start done: slow_mainnet"
} || {
     echo "WARNING! Cant start: slow_mainnet"
     }