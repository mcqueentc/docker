#!/bin/bash

echo "Starting Hadoop"
nohup /usr/bin/nohup /etc/bootstrap.sh & 2> /dev/null

echo "Starting Hbase"
#Start hbase
/opt/hbase-0.98.10.1-hadoop2/bin/start-hbase.sh

echo "Start tsd on port 4242"
#start it again
/usr/share/opentsdb/bin/tsdb tsd