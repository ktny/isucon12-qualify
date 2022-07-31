#!/bin/bash
set -euxo pipefail

echo "start deploy db ${USER}"

for server in isu03; do
    scp -r sql $server:/home/isucon/webapp/
    ssh $server "/home/isucon/webapp/sql/init.sh"
    scp -r node $server:/home/isucon/webapp/
    ssh $server "sudo systemctl restart isuports"
done

echo "finish deploy db ${USER}"
