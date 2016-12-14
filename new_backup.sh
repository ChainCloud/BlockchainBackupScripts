#!/bin/bash

net='fast-testnet fast-mainnet slow-testnet slow-mainnet'
now=`date +"%Y_%m_%d"`
log=backup_${now}.log
back_dir=/srv/ftp/
size=2048M


echo " ">${log}
echo "Start backup operations">>${log}

for nn in $net
do

    echo "++++++ ${nn} ++++++">>${log}
    echo "Now process working with ${nn}"

    echo "TRY Stoping geth">>${log}
    bash ${nn}_killer.sh>>${log} 2>&1

    echo "TRY Clear old archives">>${log}
    rm -rf /srv/ftp/${nn}/${nn}*.tar.gz* >>${log} 2>&1
    echo "Done Clear old archives"
    echo "TRY Creating new archive files&split">>${log}
    if [ $nn = 'fast-testnet' ] || [ $nn = 'slow-testnet' ]; 
    then 
        (tar czf - /backup/${nn}/testnet/geth/chaindata | split -b ${size} -d - /srv/ftp/${nn}/${nn}_${now}.tar.gz.part)>>${log} 2>&1;
    else
        (tar czf - /backup/${nn}/geth/chaindata | split -b ${size} -d - /srv/ftp/${nn}/${nn}_${now}.tar.gz.part)>>${log} 2>&1;
    fi 
    echo "Try Starting geth">>${log}
    bash run_geth_${nn}_screen.sh>>${log} 2>&1;

done

echo " ">>${log}
echo "Done all backup operations">>${log}
echo "------------------------------------------------------------------">>${log}
echo "Finish. Don't remenber check the log-files"
