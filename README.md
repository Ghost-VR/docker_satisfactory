# Server file install location
/home/steam/docker

# Default save file location for Satisfactory
/home/steam/.config

# Sample run command (Some comes from Makefile)
- Docker build
```
docker build --platform linux/arm64,linux/amd64 -t ghostvr/docker-satisfactory .
```

- To test image interactively
```
docker run --mount type=volume,source=satisfactory_server,target=/home/steam/docker -i -t ghostvr/docker-satisfactory /bin/bash
```

- Windows docker setup (Template)
```
docker run -v FIXME:/home/steam/docker/satisfactory_server -v FIXME:/home/steam/.config -p FIXME:7777 --name FIXME -d ghostvr/docker-satisfactory 
```

- Windows docker setup (Example)
```
docker run -v d:\docker\satisfactory_gamefile:/home/steam/docker/satisfactory_server -v d:\docker\satisfactory_save:/home/steam/.config -p 7777:7777/tcp -p 7777:7777/udp --name test_satisfactory_server -d ghostvr/docker-satisfactory 
```
