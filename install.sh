#!/bin/bash

set -e

# Install mysql
DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

apt-get clean
apt-get purge
