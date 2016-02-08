#!/bin/bash
echo "starting influxdb"
sudo service influxdb start

tail -f /var/log/influxdb/influxd.log