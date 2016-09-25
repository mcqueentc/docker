#!/usr/bin/env bash

sudo rm -rf /mnt/tsdb-benchmark-data/graphite/
sudo rm -rf /mnt/tsdb-benchmark-data/graphite_nginx
sudo rm -rf /mnt/tsdb-benchmark-data/graphite_log
sudo rm -rf /mnt/tsdb-benchmark-data/chronix/
sudo rm -rf /mnt/tsdb-benchmark-data/kairosdb/
sudo rm -rf /mnt/tsdb-benchmark-data/influxdb/
sudo rm -rf /mnt/tsdb-benchmark-data/opentsdb/

sudo mkdir /mnt/tsdb-benchmark-data/graphite
sudo mkdir /mnt/tsdb-benchmark-data/graphite_nginx
sudo mkdir /mnt/tsdb-benchmark-data/graphite_log
sudo mkdir /mnt/tsdb-benchmark-data/chronix
sudo mkdir /mnt/tsdb-benchmark-data/kairosdb
sudo mkdir /mnt/tsdb-benchmark-data/influxdb
sudo mkdir /mnt/tsdb-benchmark-data/opentsdb

sudo chmod 777 /mnt/tsdb-benchmark-data/graphite
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite_nginx
sudo chmod 777 /mnt/tsdb-benchmark-data/graphite_log
sudo chmod 777 /mnt/tsdb-benchmark-data/chronix
sudo chmod 777 /mnt/tsdb-benchmark-data/kairosdb
sudo chmod 777 /mnt/tsdb-benchmark-data/influxdb
sudo chmod 777 /mnt/tsdb-benchmark-data/opentsdb
