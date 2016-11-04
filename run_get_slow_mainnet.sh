#! /bin/bash

/usr/bin/geth --datadir "/big/slow-mainnet" 2>&1 | tee /home/ubuntu/.ethereum/geth-slow-mainnet.log
