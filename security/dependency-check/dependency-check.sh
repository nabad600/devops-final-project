#!/bin/bash

docker run --rm \
-v $(pwd):/src \
owasp/dependency-check \
--scan /src \
--format HTML \
--out /src/reports
