#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d12a3e89-03d8-473a-b41f-c4c4aeb8177a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

