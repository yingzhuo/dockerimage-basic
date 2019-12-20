#!/bin/bash

set -e

# ----------------------------------------------------------------------------------
# check spring-boot active profiles
# ----------------------------------------------------------------------------------
if [[ "${SPRING_PROFILES_ACTIVE}" == "" ]]; then
    echo "[WARNING] Environment 'SPRING_PROFILES_ACTIVE' is NOT set."
fi

# ----------------------------------------------------------------------------------
# check timezone, if not set. default to UTC
# ----------------------------------------------------------------------------------

tz="${TIMEZONE}"

if [[ "$tz" == "" ]]; then
    tz="${TZ}"
fi

if [[ "${tz}" == "" ]]; then
    echo "[WARNING] Environment 'TIMEZONE' or 'TZ' is NOT set. Default to UTC."
    export TIMEZONE=UTC
    export TZ=UTC
else
    export TIMEZONE=${tz}
    export TZ=${tz}
fi

# ----------------------------------------------------------------------------------
# wait other containers (optional)
# ----------------------------------------------------------------------------------
docktool --quiet wait -e="DOCKTOOL_WAIT_"

# ----------------------------------------------------------------------------------
# startup
# ----------------------------------------------------------------------------------
exec /bin/java \
    -Djava.security.egd=file:/dev/./urandom \
    -Duser.timezone=${TIMEZONE} \
    -Djava.io.tmpdir=/var/tmp \
    -jar /opt/app.jar \
    "$@"
