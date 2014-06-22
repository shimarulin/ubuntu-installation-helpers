#!/bin/bash
cat ./config/apps.json | jq ".[] |  .name, .app" >> index.txt