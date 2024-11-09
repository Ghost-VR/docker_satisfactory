#!/usr/bin/env bash
/home/steam/steamcmd/steamcmd.sh +force_install_dir "${STEAM_APP_DIR}" +login anonymous +app_update "${STEAM_APP_ID}" validate +quit
