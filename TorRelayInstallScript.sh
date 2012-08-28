#!/bin/bash

# Installs Tor on a Debian-based distribution.
sudo 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 886DDD89'
sudo add-apt-repository "deb http://deb.torproject.org/torproject.org $(lsb_release -s -c) main"
sudo apt-get update
sudo apt-get install tor

# Replaces the torrc file with a relay-enabled version.
sudo mv torrc.relay /etc/tor/torrc

# Start up Tor.
tor