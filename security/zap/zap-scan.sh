#!/bin/bash

docker run -t owasp/zap2docker-stable \
zap-baseline.py \
-t http://YOUR_APPLICATION_URL \
-r zap-report.html
