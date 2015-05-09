#!/bin/sh
normallist=("HadoopMaster" "HadoopSlave01" "HadoopSlave02")
for vm in ${normallist[@]}
do 
    status=$(/usr/bin/VBoxManage showvminfo $vm |grep State|awk {'print $2'})
    if [ $status = "running" ]
    then
        echo $vm is running,skip
    else
        echo $vm is not running, Starting
        /usr/bin/VBoxManage startvm $vm --type headless
    fi
done

