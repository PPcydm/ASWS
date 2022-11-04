#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b7beb43e-b13d-4fbe-92a2-1ad39bee12a6"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

