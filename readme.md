# docker-hbase-0.98
-------
This configuration builds a docker container to run HBase (with embedded zookeeper) running on the files inside the container.

### Note
-------
HBase version is 0.98.18


### Build Image
--------
	$ docker built -t docker-hbase-0.98 .
	
### Run HBase
--------
	$ docker run -p 60010:60010 docker-hbase-0.98
	
	
View HBase Master status in browser `http://${docker-machine env default}:60010`

### Run HBase Thrift
	$ docker run -p 9095:9095 docker-hbase-0.98 ./bin/hbase-daemon.sh --config conf/ foreground_start thrift