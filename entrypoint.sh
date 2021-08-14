#!/bin/bash

filebeat setup
service filebeat start

node index.js \
| npx pino-tee info /var/log/info-warn-error-logs \
| tee -a /var/log/elastic-node.json
