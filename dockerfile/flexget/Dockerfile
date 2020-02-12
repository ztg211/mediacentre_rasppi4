FROM     python

ARG      PUID

# Create a user to run the application
RUN         adduser -uid $PUID --disabled-password --force-badname flexget
WORKDIR  /home/flexget

# Data and config volumes
VOLUME   /home/flexget/.flexget
VOLUME   /home/flexget/torrents
VOLUME   /home/flexget/downloads

# Install FlexGet & transmission rpc
RUN      pip3 install -U pip && pip3 install flexget && pip3 install transmissionrpc

# Add start script
COPY     ./container_scripts/flexget_start.sh /home/flexget/start.sh
RUN      chmod +x ./start.sh

EXPOSE 5050

# Add default config file, if not config exists then these will be.

COPY    ./config/config.yml /tmp/
COPY    ./config/variables.yml /tmp/

USER     flexget
CMD      ["./start.sh"]