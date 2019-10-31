# httpv2ray

A docker-compose script for v2ray websocket on http 80

This script sets up an http server on port 80 and a v2ray service which handles all connection to _/ray_ with vmess via websocket.

## Usage

```bash
./prepare.sh $DOMAIN $UUID
docker-compose up -d
```

For example,

```bash
./prepare.sh example.org $(uuidgen)
```

The script also writes the UUID provided to the file _uuid_, and generates a v2ray config file _v2raylocal.json_.
