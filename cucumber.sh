#!/bin/bash

LAST_COMMIT=$(GIT_DIR=webapp/source/.git git log -1)

docker run -t webapp-box /bin/bash -c "cd /rails && time(./ci.sh)"

echo "Finished testing GIT COMMIT"
echo $LAST_COMMIT
