#!/bin/bash

echo "Running unit-tests..."
docker compose up web-ui-unit-tests
docker compose down