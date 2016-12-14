#!/usr/bin/env bash

{
echo "Starting geth fast testnet"
screen -c /home/ubuntu/new_start_kill_shells/screenrc_gft -L -dmS gft_geth /usr/bin/geth --testnet --fast --datadir "/backup/fast-testnet" --ipcpath "/big/ftn" 2>&1
screen -ls
echo "Start done: fast_testnet"
} || {
     echo "WARNING! Cant start: fast_testnet"
     }