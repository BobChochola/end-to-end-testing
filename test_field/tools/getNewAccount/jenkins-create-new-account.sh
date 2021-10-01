#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset


test_server="jenkins"
test_env="productionStaging"
test_client="shardChrome"
host_path='home/ec2-user'
report_path="${WORKSPACE/var/$host_path}"

bash framework/scripts/sh/jenkins-loop.sh $test_server $test_env $test_client features/story/AccountSetup/newAccount $1 "@createNewAccount"

export IMPORT_FILE="/app/reports/$test_env-$test_client-@createNewAccount.html.json" 
export EXPORT_FILE="/app/reports/createNewFixtureAccount.js"

echo 'get new accounts....'
docker run --rm --net="host" \
  -e IMPORT_FILE \
  -e EXPORT_FILE \
  -v $report_path/reports:/app/reports \
  test-node node ./framework/scripts/js/getNewAccount.js

echo 'move to config....'
mv $WORKSPACE/reports/createNewFixtureAccount.js $WORKSPACE/config/env/createNewFixtureAccount.js

count=$(grep -o newAccount $WORKSPACE/config/env/createNewFixtureAccount.js | wc -l)

bash framework/scripts/sh/jenkins-loop.sh $test_server createNewFixtureAccount $test_client features/story/AccountSetup/setupData $count "@setupData"
