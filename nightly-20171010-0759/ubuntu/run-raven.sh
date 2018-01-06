#!/bin/bash
COMMAND="./Raven.Server"
export RAVEN_ServerUrl="http://$(hostname):8080"
if [ ! -z "$RAVEN_ARGS" ]; then
	COMMAND="$COMMAND ${RAVEN_ARGS}"
fi

eval $COMMAND