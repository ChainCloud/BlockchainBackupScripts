#!/bin/bash

{
echo "Stop: fast_mainnet"
ps ax | grep [g]fm_geth | awk '{print $1}' | xargs kill -9 && echo "Done stop: fast_mainnet"
screen -wipe
} || {
      echo "WARNING! Cant stop: fast_mainnet"
     }

