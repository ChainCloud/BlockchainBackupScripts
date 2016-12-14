#!/bin/bash

{
echo "Stop: slow_mainnet"
ps ax | grep [g]sm_geth | awk '{print $1}' | xargs kill -9 && echo "Done stop: slow_mainnet"
screen -wipe
} || {
     echo "WARNING! Cant stop: slow_mainnet"
     }

