#!/bin/sh 
set -e

while read line; do
  DESC=$DESC"$line\n"
done < Desc.md
echo "$DESC"

jq --arg desc "$DESC" '.info.description = $desc' PostmanEcho.json | sponge PostmanEcho.json
