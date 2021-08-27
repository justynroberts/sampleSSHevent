#!/bin/bash

SERVICE="SSH Login"
USER=$LOGNAME
TEXT="Windows login for $USER on $SSH_CONNECTION"
DOCUMENT='{"title": "🚀  '$SERVICE' ['$USER']", "text":"'$TEXT'", "duration": 100, "severity": -1}'
#echo "$DOCUMENT" - Debug time :)
curl -XPOST http://127.0.0.1:42699/com.instana.plugin.generic.event -H "Content-Type: application/json" -d "$DOCUMENT"
