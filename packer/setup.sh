#!/bin/bash
set -o nounset
set -o errexit
set -x


#if you're not using aws assigned private dns names in your vpc you may need this
#apt-get is sad if it can't resolve it's own hostname
#LOCAL_IPV4=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
#echo -e "$LOCAL_IPV4 $(hostname) \n127.0.0.1 localhost" > /etc/hosts

export DEBIAN_FRONTEND=noninteractive
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-get -qq update
apt-get -y -qq install puppet




