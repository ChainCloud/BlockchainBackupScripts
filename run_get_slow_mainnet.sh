#! /bin/bash

/usr/bin/geth --rpc --rpcport "8545" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --datadir "/big/slow-mainnet" 2>&1 | tee /home/ubuntu/.ethereum/geth-slow-mainnet.log
