#!/usr/bin/env bash

docker rm $(docker ps -a -q)
docker volume rm $(docker volume ls -qf dangling=true)

sudo rm -rf /mnt/tsdb-benchmark-data/graphite/
sudo rm -rf /mnt/tsdb-benchmark-data/graphite/nginx
sudo rm -rf /mnt/tsdb-benchmark-data/graphite/log
sudo rm -rf /mnt/tsdb-benchmark-data/graphite/logrotate
sudo rm -rf /mnt/tsdb-benchmark-data/graphite/statsd
sudo rm -rf /mnt/tsdb-benchmark-data/graphite/storage
sudo rm -rf /mnt/tsdb-benchmark-data/graphite/conf
sudo rm -rf /mnt/tsdb-benchmark-data/chronix/
sudo rm -rf /mnt/tsdb-benchmark-data/kairosdb/
sudo rm -rf /mnt/tsdb-benchmark-data/influxdb/
sudo rm -rf /mnt/tsdb-benchmark-data/opentsdb/


sudo mkdir /mnt/tsdb-benchmark-data/graphite/
sudo mkdir /mnt/tsdb-benchmark-data/graphite/nginx
sudo mkdir /mnt/tsdb-benchmark-data/graphite/log
sudo mkdir /mnt/tsdb-benchmark-data/graphite/logrotate
sudo mkdir /mnt/tsdb-benchmark-data/graphite/statsd
sudo mkdir /mnt/tsdb-benchmark-data/graphite/storage
sudo mkdir /mnt/tsdb-benchmark-data/graphite/conf
sudo mkdir /mnt/tsdb-benchmark-data/chronix
sudo mkdir /mnt/tsdb-benchmark-data/kairosdb
sudo mkdir /mnt/tsdb-benchmark-data/influxdb
sudo mkdir /mnt/tsdb-benchmark-data/opentsdb


sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/nginx
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/log
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/logrotate
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/statsd
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/storage
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite/conf
sudo chmod 777 /mnt/tsdb-benchmark-data/chronix
sudo chmod 777 /mnt/tsdb-benchmark-data/kairosdb
sudo chmod 777 /mnt/tsdb-benchmark-data/influxdb
sudo chmod 777 /mnt/tsdb-benchmark-data/opentsdb

