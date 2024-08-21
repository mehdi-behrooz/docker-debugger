# Docker Debugger

## Intro

A small linux ready to stick to docker network with useful packages such as netstat, nmap, curl, vim, etc.

## Usage

```yaml
services:
  debugger:
    container_name: debugger
    image: ghcr.io/mehdi-behrooz/docker-debugger
    stdin_open: true
    tty: true
```

And then:

```bash
    docker exec -it debugger /bin/bash
```
