#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset
report_mount_dir="${REPORT_DIR_PATH:=$(pwd)}/reports"

if (( $# <2 )); then

  echo "REQUIRED:"
  echo "1: test server"
  echo "2: test enviroment"

fi

FILE_PATH=$1
count=$2

echo 'creating related scenarios...'

for i in $(eval echo "{1..$count}")
do
  cp $FILE_PATH._feature $FILE_PATH-$i.feature 
done

echo 'building testing node...'
docker build -t test-node -f ./framework/Dockerfile-test-node .

echo 'remove old test-node image...'
docker rmi $(docker images -f "dangling=true" -q) || true

echo 'start test-node container...'
docker run --rm --net="host" \
  -e TEST_CAPABILITIES \
  -e TEST_TAG \
  -e TEST_COMPONENT \
  -e TEST_ACCOUNT_UNMARK \
  -e RESOURCE_ACCOUNT_FILE \
  -v $report_mount_dir:/app/reports \
  test-node

echo 'deleting related scenarios...'

for i in $(eval echo "{1..$count}")
do
  rm $FILE_PATH-$i.feature || true
done

# find ./reports -name '*.json' -size 0 -print0 | xargs -0 rm
echo 'generate report...'
docker run  --rm --net="host" \
  -e TEST_CAPABILITIES \
  -e TEST_TAG \
  -e TEST_ACCOUNT_UNMARK \
  -e RESOURCE_ACCOUNT_FILE \
  -v $report_mount_dir:/app/reports \
  test-node node ./framework/scripts/js/genReport.js

echo 'open the report...'
open $(ls -t ./reports/*.html | awk '{printf("%s",$0);exit}') || true

