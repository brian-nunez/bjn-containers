#!/bin/bash

set -e

docker compose \
  -f ./caddy/docker-compose.yaml \
  -f ./keycloak/docker-compose.yaml \
  down

