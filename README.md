# Raspberry Pi 4 Media Centre

This repo will allow you to run the following application in individual containers using docker-compose to manage the build

* Plex Media Server (based on the linuxserver/plex image, more details found [here](https://hub.docker.com/r/linuxserver/plex))
* Transmission 
* Flexget 

Included are basic config files for transmission and flexget to get you started and more documentation for flexget can be found [here](https://flexget.com/Configuration)

Most Local build settings can be found in the envs/buildargs file and these are the following details 

| Argument | Use |
| :----: | --- |
| TZ | Timezone |
| PLEX_PUID | for UserID - see linuxserver/plex [documentation](https://hub.docker.com/r/linuxserver/plex) for details |
| PLEX_PGID | for GroupID - see linuxserver/plex [documentation](https://hub.docker.com/r/linuxserver/plex) for details |
| TRANS_PUID | UserID for transmission client, this user will need to exist in host and have relevant permissions |
| FLEX_PUID | UserID for flexget, this user will need to exist in host and have relevant permissions |
| URL_HOST_TRANS_DOWNLOAD | transmission default download folder |
| URL_HOST_TRANS_WATCH | transmission default watch folder |
| URL_HOST_TRANS_CONFIG | transmission default config folder |
| URL_HOST_FLEXGET_CONFIG | flexget config folder |
| URL_HOST_PLEX_CONFIG | Plex library location. *This can grow very large, 50gb+ is likely for a large collection* [documentation](https://hub.docker.com/r/linuxserver/plex) |
| URL_HOST_PLEX_MEDIA_TV | Media goes here. Add as many as needed e.g. `/movies`, `/tv`, etc. |

You can have as many volumes for media in plex as needed for your media location but addtional locations added in the buildargs file must also be added to the docker-compose.yaml file to be mounted at runtime. 
