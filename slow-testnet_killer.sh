#!/bin/bash

{
echo "Stop: slow_testnet" 
ps ax | grep [g]st_geth | awk '{print $1}' | xargs kill -9 && echo "Done stop: slow_testnet"
screen -wipe
} || {
     echo "WARNING! Cant stop: slow_testnet"
     }

