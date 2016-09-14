#!/bin/bash

echo "force writing on disk"
/usr/share/opentsdb/bin/tsdb fsck --full-scan --compact --fix-all
