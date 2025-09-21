#!/bin/bash -e

CURRENT_NODE_VERSION="$(node -v)"

echo "Current node version: $CURRENT_NODE_VERSION"

# Parse the Dockerfile to get the Node.js version
DOCKER_NODE_VERSION=v$(cat docker-quicktype/Dockerfile \
    | grep 'FROM node:' \
    | head -n 1 \
    | sed -E 's/FROM node:([^ ]+).*/\1/')

echo "Docker node version: $DOCKER_NODE_VERSION"

if [[ "$CURRENT_NODE_VERSION" == "$DOCKER_NODE_VERSION" ]]; then
    echo "Node version is already up to date."
    exit 0
fi

echo "Updating .nvmrc to $NODE_VERSION"
echo "$NODE_VERSION" > .nvmrc

nvm install .
nvm use .

cd docker-quicktype
npm i
