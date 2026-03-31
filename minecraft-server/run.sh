#!/usr/bin/with-contenv bash

echo "Starte Minecraft Server..."

MEMORY=$(jq -r '.memory' /data/options.json)
TYPE=$(jq -r '.type' /data/options.json)
VERSION=$(jq -r '.version' /data/options.json)

export EULA=TRUE
export MEMORY=$MEMORY
export TYPE=$TYPE
export VERSION=$VERSION

exec /start
