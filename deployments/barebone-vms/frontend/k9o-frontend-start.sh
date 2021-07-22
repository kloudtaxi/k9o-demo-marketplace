#!/bin/sh

set -e

# Set environment variables for the Vue frontend application:
export VUE_APP_POSTGRES_ENDPOINT=
export VUE_APP_REDIS_ENDPOINT=

cd ~/k9o-demo-marketplace/app

# Serve the application on localhost 
forever start -c http-server dist -a 127.0.0.1 -p 8080 -P http://127.0.0.1:23001