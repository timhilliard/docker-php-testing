#!/bin/bash

set -e

service mysql start

exec "$@"
