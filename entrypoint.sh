#!/bin/bash

service filebeat start
filebeat setup

node index.js | npx pino-tee info ./info-warn-error-logs | tee -a ./logs.json
