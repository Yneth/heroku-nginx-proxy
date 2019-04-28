#!/bin/bash
./build.sh
docker stop hnp &> /dev/null
docker rm hnp &> /dev/null
docker run --name=hnp -d -p 9000:9000 -e PORT=9000 -e PROXY_HOST=https://www.google.com/ hnp
