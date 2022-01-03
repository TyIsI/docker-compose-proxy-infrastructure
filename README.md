# docker-compose-proxy-infrastructure
A simple docker-compose file to create public and proxy networks that can then be used by proxy services

## Usage

Define COMPOSE_FILE variable with relevant YML files.

```
COMPOSE_FILE=docker-compose.yml:docker-compose.proxy.yml:docker-compose.public.yml
```

### Creating new network

1. Create a new docker-compose configuration file with the name of the network you want to create.

```
cp docker-compose.template.yml docker-compose.new-network.yml
```

2. Replace the `NETWORK_NAME` with the name of the network you want to create.