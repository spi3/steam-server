# steam-server

Dockerized Steam servers

## Description

This repository contains Docker build files for creating Docker images to easily run Steam game servers.

## Environment Variables
| Variable | Description | Default | Required |
|----------|-------------|---------|----------|
| `STEAM_APP_ID` | Steam application ID of the game server to run. | None | True |
| `SERVER_RUN_CMD` | Command to run the game server | None | True |
| `STEAM_LOGIN` | Steam account login. | `anonymous` | False |
| `STEAM_PASS` | Steam account password | None | Required if STEAM_LOGIN is set |
| `SERVER_INSTALL_DIR` | Directory where the game server will be installed. | `/data/server` | False |
| `EXTRA_STEAM_ARGS` | Additional arguments to pass to `steamcmd`. | None | False |
| `VOLUME_DIR` | Directory to be used as a volume. | `/data` | False |
| `CONFIG_DIR` | Directory for configuration files. | `/data/config` | False |
| `EXTRA_SERVER_ARGS` | Additional arguments to pass to the server run command. | None | False |
| `PRE_RUN_CMD` | Command to run before starting the game server. | None | False |
