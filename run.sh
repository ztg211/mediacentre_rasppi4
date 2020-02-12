#!/usr/bin/env bash

##Add buildargs file to current directory
rm -f ./.env
cp $BUILD_ARGS ./.env
source ./.env

# Run compose
docker-compose -f docker-compose.yml "$@"

rm -f ./.env