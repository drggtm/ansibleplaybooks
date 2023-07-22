wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.11-amd64.deb 
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.17.11-amd64.deb.sha512 
shasum -a 512 -c elasticsearch-7.17.11-amd64.deb.sha512 
sudo dpkg -i elasticsearch-7.17.11-amd64.deb

# For version 8.8
# wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.8.2-amd64.deb 
# wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.8.2-amd64.deb.sha512 
# shasum -a 512 -c elasticsearch-8.8.2-amd64.deb.sha512 
# sudo dpkg -i elasticsearch-8.8.2-amd64.deb