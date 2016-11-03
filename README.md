# How to install geth

```bash
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum-dev
sudo apt-get update
sudo apt-get install geth

sudo mkdir /big/fast-testnet
sudo chown -R ubuntu:ubuntu /big/fast-testnet/

```

# How to start geth 

```bash
sudo cp geth.service /etc/systemd/system/geth-fast-testnet.service
sudo systemctl daemon-reload
sudo systemctl start geth-fast-testnet.service
```

# How to show log

```bash
sudo journalctl -u geth-fast-testnet.service
```



