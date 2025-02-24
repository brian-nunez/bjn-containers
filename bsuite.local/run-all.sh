#!/bin/bash

set -e

# create network
echo "Trying to create docker network `dev_application`"
docker network create dev_application || true

# start all services
echo "Starting all services"
docker compose \
  -f ./caddy/docker-compose.yaml \
  -f ./keycloak/docker-compose.yaml \
  up -d

