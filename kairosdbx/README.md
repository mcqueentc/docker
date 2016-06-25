#KairosDB with Cassandra
The container contains Cassandra 3.2 from the [base image](https://hub.docker.com/_/cassandra/) and KairosDB 1.1.1 [Release](https://github.com/kairosdb/kairosdb/releases/tag/v1.1.1).

## Start the Container
```
docker build -t kairosdb . //directory of the dockerfile
docker run -d -p 8080:8080 kairosdb //make the KairosDB web interface available
```
