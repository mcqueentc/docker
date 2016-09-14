#!/usr/bin/env bash

docker rmi -f chronix
docker rmi -f opentsdb
docker rmi -f kairosdb
docker rmi -f graphite
docker rmi -f influxdb
#docker rmi -f tutum/curl
