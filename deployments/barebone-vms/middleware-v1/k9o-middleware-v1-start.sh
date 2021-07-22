#!/bin/sh

set -e

# Set environment variables for the Node backend application:
export SPECIAL_OFFER=false
export REDIS_HOST=161.35.110.83
export REDIS_PORT=6379
export POSTGRES_USER=kumademo
export POSTGRES_PASSWORD=kumademo
export POSTGRES_DB=kumademo
export POSTGRES_HOST=68.183.101.207
export POSTGRES_PORT_NUM=5432

# Navigate to the backend directory
cd ~/k9o-demo-marketplace/api/
# ORIGINAL: cd /home/vagrant/kuma-demo/backend

# Serve the application on localhost
yarn run start