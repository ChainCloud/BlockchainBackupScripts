#! /bin/bash

/usr/bin/geth --testnet --fast --rpc --rpcport "8545" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --datadir "/big/fast-testnet" 2>&1 | tee /home/ubuntu/.ethereum/geth-fast-testnet.log
