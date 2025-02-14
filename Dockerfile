FROM steamcmd/steamcmd:debian-bookworm

ENV SERVER_INSTALL_DIR="/data/server"
ENV STEAM_LOGIN=anonymous
ENV STEAM_PASS=
ENV STEAM_APP_ID=
ENV EXTRA_STEAM_ARGS=
ENV VOLUME_DIR="/data"
ENV CONFIG_DIR="/data/config"
ENV EXTRA_SERVER_ARGS=
ENV SERVER_RUN_CMD=
ENV PRE_RUN_CMD=
ENV UPDATE_SERVER=true

VOLUME ["$VOLUME_DIR"]

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR $SERVER_INSTALL_DIR

ENTRYPOINT ["/entrypoint.sh"]