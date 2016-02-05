#!/bin/bash
echo "starting cassandra"
service cassandra start

sleep 10s

echo "starting kairosdb"
service kairosdb start

tail -f /opt/kairosdb/log/kairosdb.log