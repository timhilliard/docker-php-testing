#!/bin/bash

set -e

# Install php versions
apt-get install -y libjpeg-dev libpng-dev libcurl4-openssl-dev re2c libmcrypt-dev libtidy-dev libgmp-dev libc-client-dev freetds-dev libpq-dev libt1-dev libxpm-dev libltdl-dev libmagickwand-dev libgpgme11-dev libssh2-1-dev
/bin/bash -l -c "phpenv install 5.5.29"
/bin/bash -l -c "phpenv install 5.6.13"
/bin/bash -l -c "phpenv install 7.0.0RC2"
/bin/bash -l -c "phpenv global 5.6.13"
/bin/bash -l -c "curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin"

apt-get clean
apt-get purge
