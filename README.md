# Provisions a multi-machine vagrant/virtualbox elasticsearch cluster

What you get:
* 3 ubuntu precise32 instances using 1024mb ram
** es1 - 192.168.50.20
** es2 - 192.168.50.21
** es3 - 192.168.50.22
* OracleJDK
* Elasticsearch
** Marvel plugin
** geohash-facet plugin
** head plugin

## Pre-requisites
* Virtualbox
* Vagrant
* Cygwin


## Installation
* Using cygwin, cd into this directory
* Run `vagrant plugin install vagrant-vbguest`
* Run `vagrant up`
 
## Usage
Ports should be forwards to 
```
localhost:9200
localhost:9201
localhost:9202
```

You can ssh to each machine using
```
vagrant ssh es1
vagrant ssh es2
vagrant ssh es3
```