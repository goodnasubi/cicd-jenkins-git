#!/bin/sh

docker compose up -d --build
docker compose ps
docker compose logs -fn1
