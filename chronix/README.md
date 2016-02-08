#InfluxDB
The container contains InfluxDB 0.10.0-1.

## Start the Container
```
docker build -t influxdb . //directory of the dockerfile
docker run -d -p 8083:8083 -p 8086:8086 influxdb 
```