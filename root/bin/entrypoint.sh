#!/bin/bash

# 1. ensure cypress is installed
pushd /app
if [ ! -f node_modules/.bin/cypress ];
then
    echo "[DEBUG] Installing cypress via npm"
    npm install cypress
fi

node_modules/.bin/cypress verify

# 2. do nothing and keep the container alive
echo "[DEBUG] Staying alive"
tail -f /dev/null