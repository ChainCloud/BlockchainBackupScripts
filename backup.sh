#! /bin/bash

net=testnet
now=`date +"%Y_%m_%d"`
file=${net}_${now}.tar.gz
folder=~/.ethereum/${net}/chaindata/
size=2048M

#folder=~/test-folder
#size=10M

echo "Creating new file: $file"
tar -czvf ${file} ${folder}
cat ${file} | split -d -b ${size} - ${file}

echo "Ready..."


