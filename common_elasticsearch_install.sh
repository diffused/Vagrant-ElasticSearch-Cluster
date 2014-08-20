#!/bin/bash
echo "installing oracle jdk"
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install oracle-java7-installer -y
java -version
echo "downloading elasticsearch"
wget -nc https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.2.1.deb
echo "installing elasticsearch-1.2.1"
sudo dpkg -i elasticsearch-1.2.1.deb
echo "installing elasticsearch marvel"
sudo /usr/share/elasticsearch/bin/plugin -i elasticsearch/marvel/latest
echo "installing elasticsearch head"
sudo /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head
echo "installing geohash-facet plugin"
sudo /usr/share/elasticsearch/bin/plugin --url https://github.com/triforkams/geohash-facet/releases/download/geohash-facet-0.0.17/geohash-facet-0.0.17.jar --install geohash-facet
echo "enabling elasticsearch auto-start"
sudo update-rc.d elasticsearch defaults 95 10
sudo ufw enable
sudo ufw allow 9200:9400/tcp
sudo ufw allow 54328
sudo ufw allow 22
