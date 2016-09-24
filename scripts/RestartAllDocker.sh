#!/usr/bin/env bash

docker restart chronix
docker restart graphite
docker restart influxdb
docker restart kairosdb
docker restart opentsdb