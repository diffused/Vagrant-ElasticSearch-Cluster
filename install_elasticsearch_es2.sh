#!/bin/bash
sudo bash /vagrant/common_elasticsearch_install.sh
sudo sh -c 'echo "cluster.name: devCluster" >> /etc/elasticsearch/elasticsearch.yml'
sudo sh -c 'echo "network.publish_host: 192.168.50.21" >> /etc/elasticsearch/elasticsearch.yml'
sudo sh -c 'echo "marvel.agent.enabled: false" >> /etc/elasticsearch/elasticsearch.yml'
sudo sh -c 'echo "index.number_of_shards: 1" >> /etc/elasticsearch/elasticsearch.yml'
sudo sh -c 'echo "index.number_of_replicas: 2" >> /etc/elasticsearch/elasticsearch.yml'
echo "starting elasticsearch"
sudo service elasticsearch restart