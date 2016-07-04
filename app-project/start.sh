#!/bin/bash

echo "Installing and starting applications ..."
COMPOSE_HTTP_TIMEOUT=200
docker-compose -p app up -d
