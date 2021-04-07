#!/bin/bash -e

if [ -z "${REACT_NATIVE_PACKAGER_HOSTNAME}" ]
then
  echo "REACT_NATIVE_PACKAGER_HOSTNAME env variable not set."
  exit 1
fi

if [ -z "${APP_PATH}" ]
then
  echo "APP_PATH env variable not set."
  exit 1
fi

cd ${APP_PATH}
yarn
yarn $YARN_START_CMD
