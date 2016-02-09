#Graphite
The container contains Graphite 0.9.12

## Start the Container
```
docker build -t graphite . //directory of the dockerfile
docker run -d -p 80:80 -p 2003:2003 graphite 
```
