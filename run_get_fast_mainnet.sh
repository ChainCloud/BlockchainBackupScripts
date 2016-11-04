#! /bin/bash

/usr/bin/geth --fast --datadir "/big/fast-mainnet" 2>&1 | tee /home/ubuntu/.ethereum/geth-fast-mainnet.log
