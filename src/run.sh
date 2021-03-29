#!/bin/env bash

FILE=src/env.sh
if [ -f "$FILE" ];then
	source src/env.sh
	echo "Environment variables loaded"
fi
docker build -t telegram-bot .
docker run -d --rm --env TOKEN=$TOKEN telegram-bot

