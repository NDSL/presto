#!/usr/bin/env bash

SCRIPT_DIRECTORY=${BASH_SOURCE%/*}

source ${SCRIPT_DIRECTORY}/../common/compose-commons.sh

docker-compose \
-f ${SCRIPT_DIRECTORY}/../common/standard.yml \
-f ${SCRIPT_DIRECTORY}/../common/jdbc_db.yml \
-f ${SCRIPT_DIRECTORY}/docker-compose.yml \
"$@"
