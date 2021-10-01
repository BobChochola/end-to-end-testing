#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

report_mount_dir="${REPORT_DIR_PATH:=$(pwd)}/reports"
echo $report_mount_dir

echo 'building testing node...'
docker build -t test-node -f ./framework/Dockerfile-test-node .

echo 'remove old test-node image...'
docker rmi $(docker images -f "dangling=true" -q) || true

echo 'start test-node container...'
docker run  --rm --net="host" \
  -e TEST_CAPABILITIES \
  -e TEST_REPORT_NAME \
  -e TEST_TAG \
  -e TEST_COMPONENT \
  -e RESOURCE_ACCOUNT_FILE \
  -v $report_mount_dir:/app/reports \
  test-node

echo 'generate report...'
docker run  --rm --net="host" \
  -e TEST_CAPABILITIES \
  -e TEST_REPORT_NAME \
  -e TEST_TAG \
  -e RESOURCE_ACCOUNT_FILE \
  -v $report_mount_dir:/app/reports \
  test-node node ./framework/scripts/js/genReport.js

echo 'open the report...'
open $(ls -t ./reports/*.html | awk '{printf("%s",$0);exit}') || true
