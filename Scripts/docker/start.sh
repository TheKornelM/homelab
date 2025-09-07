#!/bin/sh

# Create Portainer volume

docker volume create portainer_data

docker-compose up