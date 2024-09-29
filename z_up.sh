#!/bin/sh

docker compose up -d --build
docker compose exec -it jenkins /bin/bash /tmp/init_jenkins.sh
docker compose ps
docker compose logs -fn1
