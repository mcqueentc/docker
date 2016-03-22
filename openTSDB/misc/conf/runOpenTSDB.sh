#!/bin/bash

echo "Starting Hadoop"
nohup /usr/bin/nohup /etc/bootstrap.sh & 2> /dev/null

echo "Sleeping 30 seconds"
sleep 30

echo "Starting Hbase"
#Start hbase
/opt/hbase-1.1.3/bin/start-hbase.sh

echo "Sleeping 30 seconds"
sleep 30

echo "Start tsd on port 4242"
#start it again
/usr/share/opentsdb/bin/tsdb tsd
