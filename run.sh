#!/bin/bash -e
if [ ! -f ".env" ]; then
  echo ".env file must exist. Please create it based on .env.tpl."
  exit 1
fi

source .env
docker-compose down
docker-compose up