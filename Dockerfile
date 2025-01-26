FROM steamcmd/steamcmd:debian-bookworm

ENV SERVER_INSTALL_DIR="/data/server"
ENV STEAM_LOGIN=
ENV STEAM_PASS=
ENV STEAM_APP_ID=
ENV EXTRA_STEAM_ARGS=
ENV VOLUME_DIR="/data"
ENV CONFIG_DIR="/data/config"
ENV EXTRA_SERVER_ARGS=
ENV SERVER_RUN_CMD=
ENV PRE_RUN_CMD=

VOLUME ["$VOLUME_DIR"]

COPY run.sh /

RUN chmod +x /run.sh

WORKDIR $SERVER_INSTALL_DIR

ENTRYPOINT sh /run.sh