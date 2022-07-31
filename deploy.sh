#!/bin/bash
set -euxo pipefail

echo "start deploy db ${USER}"

for server in isu03; do
    scp -r sql $server:/home/isucon/webapp/
    ssh $server "/home/isucon/webapp/sql/init.sh"
    scp node/src/main.ts $server:/home/isucon/webapp/node/src
    ssh $server "sudo systemctl start isuports"
done

echo "finish deploy db ${USER}"
