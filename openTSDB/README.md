#OpenTSDB
The container contains OpenTSDB basend on HBase and Hadoop.
Starts OpenTSDB in pseudo-distributed mode.

## Start the Container
```
docker build -t opentsdb . //directory of the dockerfile
docker run -d -h localhost -p 4242:4242 opentsdb 
```
