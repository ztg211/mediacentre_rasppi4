#!/bin/sh
# Start transmission in daemon mode

if [ ! -f ~/.config/transmission-daemon/settings.json ]; then
    echo "Loading default config"
    cp /tmp/settings.json ~/.config/transmission-daemon/settings.json
fi

echo "Starting Transmission"
transmission-daemon --foreground --log-info