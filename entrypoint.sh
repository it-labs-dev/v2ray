#!/usr/bin/sh

CONFIG_PATH="/etc/v2ray/config.json";

if [ ! -f "$CONFIG_PATH" ]; then
  echo "Config file '$CONFIG_PATH' does not exists"
  # Add commands to execute if the file does not exist
fi

v2ray run -config="$CONFIG_PATH" --format json