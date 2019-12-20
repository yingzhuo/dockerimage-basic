#!/bin/bash

set -e

# ----------------------------------------------------------------------------------
# check spring-boot active profiles
# ----------------------------------------------------------------------------------
if [[ "${SPRING_PROFILES_ACTIVE}" == "" ]]; then
    echo "[WARNING] Environment 'SPRING_PROFILES_ACTIVE' is NOT set."
fi

# ----------------------------------------------------------------------------------
# check timezone
# ----------------------------------------------------------------------------------
if [[ "${TIMEZONE}" == "" ]]; then
    echo "[WARNING] Environment 'TIMEZONE' is NOT set. Default to UTC."
    TIMEZONE=UTC
fi

# set alias for 'TIMEZONE'
TZ=${TIMEZONE}

# ----------------------------------------------------------------------------------
# startup
# ----------------------------------------------------------------------------------
exec /bin/java \
    -Djava.security.egd=file:/dev/./urandom \
    -Duser.timezone=${TIMEZONE} \
    -Djava.io.tmpdir=/var/tmp \
    -jar /opt/app.jar \
    "$@"
