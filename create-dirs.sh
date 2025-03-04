#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Create necessary directories
mkdir -p ./gitea
mkdir -p ./postgres
mkdir -p ./npm
mkdir -p ./letsencrypt

echo "Created necessary directories."

# Set ownership and permissions for Gitea
# Gitea runs as UID 1000 and GID 1000 inside the container
GITEA_UID=1000
GITEA_GID=1000

chown -R ${GITEA_UID}:${GITEA_GID} ./gitea
chmod -R 755 ./gitea

echo "Set ownership and permissions for ./gitea"

# Set ownership and permissions for PostgreSQL
# PostgreSQL runs as UID 999 and GID 999 inside the container
POSTGRES_UID=999
POSTGRES_GID=999

chown -R ${POSTGRES_UID}:${POSTGRES_GID} ./postgres
chmod -R 700 ./postgres

echo "Set ownership and permissions for ./postgres"

# Set ownership and permissions for Nginx Proxy Manager
# Assuming it runs as UID 1000 and GID 1000
NPM_UID=1000
NPM_GID=1000

chown -R ${NPM_UID}:${NPM_GID} ./npm
chmod -R 755 ./npm

chown -R ${NPM_UID}:${NPM_GID} ./letsencrypt
chmod -R 700 ./letsencrypt

echo "Set ownership and permissions for ./npm and ./letsencrypt"

echo "All directories are set up with the necessary permissions."