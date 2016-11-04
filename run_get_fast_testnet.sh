#! /bin/bash

/usr/bin/geth --testnet --fast --datadir "/big/fast-testnet" 2>&1 | tee /home/ubuntu/.ethereum/geth-fast-testnet.log
