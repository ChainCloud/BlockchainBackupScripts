#!/usr/bin/env bash

{
echo "Starting geth fast mainnet"
screen -c /home/ubuntu/new_start_kill_shells/screenrc_gfm -L -dmS gfm_geth /usr/bin/geth --fast --port 30309 --datadir "/backup/fast-mainnet" --ipcpath "/big/fmn" 2>&1 
screen -ls
echo "Start done: fast_mainnet"
} || {
     echo "WARNING! Cant start: fast_mainnet"
     }

