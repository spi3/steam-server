#!/bin/bash

if [[ $UPDATE_SERVER == true ]]; then
    steamcmd +force_install_dir $SERVER_INSTALL_DIR +login $STEAM_LOGIN $STEAM_PASS +app_update $STEAM_APP_ID validate $EXTRA_STEAM_ARGS +quit
fi

$PRE_RUN_CMD

$SERVER_RUN_CMD $EXTRA_SERVER_ARGS