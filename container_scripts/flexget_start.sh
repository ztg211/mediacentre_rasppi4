#!/bin/sh

# this script will remove the lock file in the case of a hard shutdown
# it would also install the supplied config file and variables file in the case they do not exist
if [ -f ~/.flexget/.config-lock ]; then
    rm ~/.flexget/.config-lock
fi
if [ ! -f ~/.flexget/config.yml ]; then
    cp /tmp/config.yml ~/.flexget/config.yml
fi
if [ ! -f ~/.flexget/variables.yml ]; then
    cp /tmp/variables.yml ~/.flexget/variables.yml
fi

flexget daemon start