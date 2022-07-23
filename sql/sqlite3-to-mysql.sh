#!/bin/bash
set -x pipefail

for i in {1..234}; do
    echo start $i.db
    rm -f /tmp/tmp.sql
    ./sqlite3-to-sql ../tenant_db/$i.db > /tmp/tmp.sql
    mysql -uisucon -pisucon isuports < /tmp/tmp.sql
    sleep 3
done
