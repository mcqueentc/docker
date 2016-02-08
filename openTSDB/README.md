#OpenTSDB
The container contains OpenTSDB based on HBase and Hadoop

## Start the Container
```
docker build -t opentsdb . //directory of the dockerfile
docker run -d -p 4242:4242 -p 4242:4242 opentsdb 
```
