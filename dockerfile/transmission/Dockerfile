FROM        alpine

ARG     PUID

# Create a user to run the application
# Using the UID of host user with write permissions
RUN         adduser -D -g "" -u $PUID transmission
#RUN         addgroup -g 1000 transmission pi

WORKDIR     /home/transmission

# Data and config volumes
VOLUME      /home/transmission/.config
VOLUME      /home/transmission/downloads
VOLUME      /home/transmission/watch

# Install Transmission
RUN         apk update && apk add --no-cache transmission-daemon

EXPOSE      9091

COPY     ./container_scripts/transmission_start.sh /home/transmission/start.sh
RUN      chmod +x /home/transmission/start.sh

COPY    ./config/settings.json /tmp/

USER        transmission
CMD      ["./start.sh"]