#!/bin/bash -e

echo "Current node version: $(node -v)"

# Parse the Dockerfile to get the Node.js version
NODE_VERSION=$(cat docker-quicktype/Dockerfile \
    | grep 'FROM node:' \
    | head -n 1 \
    | sed -E 's/FROM node:([^ ]+).*/\1/')

echo "Dockerfile node version: $NODE_VERSION"

echo "Updating .nvmrc to v$NODE_VERSION"
echo "v$NODE_VERSION" > .nvmrc

nvm install .
nvm use .
