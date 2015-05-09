#!/bin/sh
filestat=$( ping -c3 192.168.56.101|grep transmitted|awk '{print $4}')
if((filestat==0));then
    echo "connect time out"
else
    ssh ghost@192.168.56.101 
fi
