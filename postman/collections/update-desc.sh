#!/bin/sh 
set -e

jq --arg desc "$(cat Desc.md)" '.info.description = $desc' PostmanEcho.json | sponge PostmanEcho.json
