#!/bin/bash

echo "Deleting databases"
#/usr/share/opentsdb/bin/tsdb scan 1970/01/01-00:00:00 * --delete
echo "truncate 'tsdb'" | /opt/hbase/bin/hbase shell
