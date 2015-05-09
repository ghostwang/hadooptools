#!/bin/sh
vmstat=$( ping -c3 192.168.56.101|grep transmitted|awk '{print $4}')
if((vmstat==0));then
    echo "connect time out"
else
    ssh ghost@192.168.56.101 
fi
