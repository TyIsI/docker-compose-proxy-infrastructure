#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $(basename $0) <network name>"
    exit 1
fi

COMPOSE_FILE="docker-compose.$1.yml"

if [ -f "$COMPOSE_FILE" ]; then
    echo "Configuration file $COMPOSE_FILE already exists."
    exit 2
fi

cp docker-compose.template.yml $COMPOSE_FILE

sed -i "s/NETWORK_NAME/$1/g" $COMPOSE_FILE
