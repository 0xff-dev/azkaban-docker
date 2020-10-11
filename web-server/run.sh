#!/bin/bash
./bin/start-web.sh
sleep 1;
tail -f logs/azkaban-webserver.log
