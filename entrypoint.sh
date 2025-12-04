#!/bin/ash

CONFIG_PATH="/etc/v2ray/config.json";

if [ ! -f "$CONFIG_PATH" ]; then
  echo "Config file '$CONFIG_PATH' does not exists"
  # Add commands to execute if the file does not exist
fi

echo "Validate config file '$CONFIG_PATH'"

v2ray -test -config="$CONFIG_PATH" --format json

echo "Run v2ray"

v2ray run -config="$CONFIG_PATH" --format json