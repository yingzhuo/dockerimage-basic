#!/bin/bash

set -e

# ----------------------------------------------------------------------------------
# check spring-boot active profiles
# ----------------------------------------------------------------------------------

profiles="${APP_PROFILES}"

if [[ "${profiles}" == "" ]]; then
  profiles="${SPRING_PROFILES_ACTIVE}"
fi

if [[ "${profiles}" == "" ]]; then
  echo "[WARNING] Environment 'APP_PROFILES' or 'SPRING_PROFILES_ACTIVE' is NOT set."
else
  export APP_PROFILES="${profiles}"
  export SPRING_PROFILES_ACTIVE="${profiles}"
fi

# ----------------------------------------------------------------------------------
# check timezone, if not set. default to UTC
# ----------------------------------------------------------------------------------

tz="${APP_TIMEZONE}"

if [[ "$tz" == "APP_TZ" ]]; then
  tz="${APP_TZ}"
fi

if [[ "${tz}" == "" ]]; then
  echo "[WARNING] Environment 'APP_TIMEZONE' or 'APP_TZ' is NOT set. Default to UTC."
  export APP_TIMEZONE=UTC
  export APP_TZ=UTC
else
  export APP_TIMEZONE="${tz}"
  export APP_TZ="${tz}"
fi

# ----------------------------------------------------------------------------------
# wait for other containers (optional)
# ----------------------------------------------------------------------------------
docktool --quiet wait -e="DOCKTOOL_WAIT_"

# ----------------------------------------------------------------------------------
# startup
# ----------------------------------------------------------------------------------
exec /bin/java \
  -Djava.security.egd=file:/dev/./urandom \
  -Duser.timezone="${APP_TIMEZONE}" \
  -Djava.io.tmpdir=/var/tmp \
  -jar /opt/app.jar \
  "$@"
