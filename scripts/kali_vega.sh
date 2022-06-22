#!/bin/sh

cat <<EOT | sudo tee /etc/apt/sources.list.d/stretch.list
deb http://deb.debian.org/debian/ stretch main contrib non-free
deb-src http://deb.debian.org/debian/ stretch main contrib non-free

deb http://security.debian.org/ stretch/updates main contrib non-free
deb-src http://security.debian.org/ stretch/updates main contrib non-free
EOT

sudo apt-get update -qy && sudo apt-get install libwebkitgtk-1.0 -qy


sudo apt-get install openjdk-8-jdk-headless -qy
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java #non-interactive
java -version

whoami
wget https://support.subgraph.com/downloads/VegaBuild-linux.gtk.x86_64.zip
unzip VegaBuild-linux.gtk.x86_64.zip # vagrant user home directory 
chown -R vagrant:vagrant vega
