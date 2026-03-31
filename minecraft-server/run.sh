#!/usr/bin/with-contenv bash

echo "Starte Minecraft Server..."

MEMORY=$(jq -r '.memory' /data/options.json)
TYPE=$(jq -r '.type' /data/options.json)
VERSION=$(jq -r '.version' /data/options.json)

export EULA=TRUE
export MEMORY=$MEMORY
export TYPE=$TYPE
export VERSION=$VERSION
export MOTD="$MOTD"
export DIFFICULTY=$DIFFICULTY
export MODE=$GAMEMODE
export MAX_PLAYERS=$MAX_PLAYERS
export VIEW_DISTANCE=$VIEW_DISTANCE
export SIMULATION_DISTANCE=$SIMULATION_DISTANCE
export PVP=$PVP
export ONLINE_MODE=$ONLINE_MODE
export ALLOW_FLIGHT=$ALLOW_FLIGHT
export HARDCORE=$HARDCORE
export ENABLE_COMMAND_BLOCK=$ENABLE_COMMAND_BLOCK
export SPAWN_ANIMALS=$SPAWN_ANIMALS
export SPAWN_MONSTERS=$SPAWN_MONSTERS
export SPAWN_NPCS=$SPAWN_NPCS
export GENERATE_STRUCTURES=$GENERATE_STRUCTURES
export LEVEL_TYPE=$LEVEL_TYPE
export LEVEL_SEED=$LEVEL_SEED
export ENABLE_WHITELIST=$WHITELIST
export OPS=$OPS
export ALLOW_NETHER=$ALLOW_NETHER
export ENABLE_RCON=$ENABLE_RCON
export RCON_PASSWORD=$RCON_PASSWORD
export RCON_PORT=$RCON_PORT

rm -rf /data
ln -s /configdata /data

exec /start
