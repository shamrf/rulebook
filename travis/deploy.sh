#!/usr/bin/env bash
if cat gradle.properties | grep -q SNAPSHOT; then
  ./gradlew build alljavadoc uploadArchives -PnexusUsername="${OSSRH_USERNAME}" -PnexusPassword="${OSSRH_PASSWORD}" -Psigning.keyId="" -Psigning.password=""
fi

