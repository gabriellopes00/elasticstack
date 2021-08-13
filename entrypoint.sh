#!/bin/bash

filebeat setup
service filebeat start

node index.js | npx pino-tee info ./info-warn-error-logs | tee -a ./logs.json
