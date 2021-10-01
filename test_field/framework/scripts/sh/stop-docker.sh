#!/bin/bash

echo "===== STOPING ALL DOCKER CONTAINER ... ====="
docker stop $(docker ps --filter="name=framework" -a -q)
echo ""

echo "===== REMOVING ALL DOCKER CONTAINER ... ====="
docker rm $(docker ps --filter="name=framework" -a -q)
echo ""
