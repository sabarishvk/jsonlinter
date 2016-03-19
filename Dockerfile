FROM ubuntu:14.04
RUN sudo apt-get -y update && sudo apt-get -y install python && sudo apt-get -y install python-pip && sudo pip install demjson && apt-get -y install git
RUN cd /opt && git clone https://github.com/sabarishvk/jsonlinter.git
