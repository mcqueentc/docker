#!/usr/bin/env bash

docker run -d -p 8983:8983 chronix
docker run -d -p 80:80 -p 2003:2003 graphite
docker run -d -p 8083:8083 -p 8086:8086 tutum/influxdb
docker run -d -p 8080:8080 kairosdb
docker run -d -h localHost -p 4242:4242 opentsdb
