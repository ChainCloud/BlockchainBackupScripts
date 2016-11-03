#! /bin/bash

/usr/bin/geth --fast --rpc --rpcport "8545" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --datadir "/big/fast-mainnet" 2>&1 | tee /home/ubuntu/.ethereum/geth-fast-mainnet.log
