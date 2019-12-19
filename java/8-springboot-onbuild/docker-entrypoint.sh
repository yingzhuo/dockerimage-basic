#!/bin/bash

set -e

if [[ "${DEBUG_MODE}" == "true" ]]; then
    flag_debug_mode="--debug"
else
    flag_debug_mode=""
fi

if [[ "${SPRING_PROFILES_ACTIVE}" == "" ]]; then
    echo "[WARNING] Environment 'SPRING_PROFILES_ACTIVE' is NOT set."
fi

exec /bin/java \
    -Djava.security.egd=file:/dev/./urandom \
    -Duser.timezone=${TZ} \
    -Djava.io.tmpdir=/var/tmp \
    -jar /opt/app.jar \
    ${flag_debug_mode} \
    "$@"
