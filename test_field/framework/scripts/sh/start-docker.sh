#!/bin/bash

echo "===== STOPING ALL DOCKER CONTAINER ... ====="
docker stop $(docker ps --filter="name=framework" -a -q)
echo ""

echo "===== REMOVING ALL DOCKER CONTAINER ... ====="
docker rm $(docker ps --filter="name=framework" -a -q)
echo ""

echo "===== BUILDING DOCKER-COMPOSE... ====="
docker-compose -f ./framework/docker-compose.yml build
echo ""

echo "===== STARTING DOCKER-COMPOSE... ====="
docker-compose -f ./framework/docker-compose.yml up
echo ""
