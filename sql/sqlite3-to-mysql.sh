#!/bin/bash
set -x pipefail

for i in {1..234}; do
    echo start $i.db
    rm -f /tmp/tmp.sql
    ./sqlite3-to-sql ../tenant_db/$i.db > /tmp/sqlite_$1.sql
done

# mysql -uisucon -pisucon isuports < /tmp/tmp.sql
