#!/bin/bash

echo "Running unit-tests..."
docker compose up web-ui-ci-unit-tests
docker compose down