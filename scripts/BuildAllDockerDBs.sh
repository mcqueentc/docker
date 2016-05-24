#!/usr/bin/env bash

SCRIPT_PATH=$( cd -P -- "$(dirname -- "$(command -v -- "$0")")" && pwd -P );
echo $SCRIPT_PATH

cd $SCRIPT_PATH/../chronix/;docker build -t chronix . ;
cd $SCRIPT_PATH/../graphite/;docker build -t graphite . ;
cd $SCRIPT_PATH/../influxdb/;docker build -t tutum/influxdb . ;
cd $SCRIPT_PATH/../kairosDB/;docker build -t kairosdb . ;
cd $SCRIPT_PATH/../openTSDB/;docker build -t opentsdb . ;


