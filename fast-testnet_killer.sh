#!/bin/bash

{
echo "Stop: fast_testnet"
ps ax | grep [g]ft_geth | awk '{print $1}' | xargs kill -9 && echo "Done stop: fast_testnet"
screen -wipe
} || {
     echo "WARNING! Cant stop: fast_testnet"
     }
