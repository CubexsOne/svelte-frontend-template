#!/bin/bash

docker rm -f local-web-ui-1 || true
echo "Starting web-ui..."
docker compose up web-ui-run
echo "Stopping web-ui..."
docker compose down