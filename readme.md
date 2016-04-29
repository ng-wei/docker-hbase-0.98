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
	$ docker run -p 60010:60010 -p 9095:9095 --name hmaster docker-hbase-0.98
	
	
View HBase Master status in browser `http://${docker-machine env default}:60010`

### Run HBase Thrift
-------
	$ docker exec hmaster ./bin/hbase-daemon.sh --config conf/ start thrift
    # enter hbase shell
    $ docker exec -it hmaster ./bin/hbase shell

### Next
-------
* implement pseudo-distributed and distributed cluster